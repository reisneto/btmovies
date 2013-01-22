import sys, os
abspath = os.path.dirname(__file__)
sys.path.append(abspath)
import web
import hashlib
import model
import json
import logging
from web.contrib.template import render_jinja

web.config.debug = False

urls = (
	'/', 'Index',
	'/login','Login',
	'/logout','Logout',	
	'/logged','Logged',
	'/signup','Signup',
	'/.json','JsonFilms',
	'/about','About',
	'/alterar','Alterar',
	'/amigos','Amigos',
	'/search','MainSearch',
	'/.*','Index',
)


app = web.application(urls, globals(),autoreload=False)
store = web.session.DiskStore(os.path.join(abspath,'sessions'))
session = web.session.Session(app, store,
				initializer={'login': 0, 'ident': None,'nome':None,'apelido':None,'email':None})

db = web.database(dbn='postgres', db='rsdb2012', user='postgres', pw='123')

render = render_jinja(
        'templates',   # Set template directory.
        encoding = 'utf-8',                         # Encoding.
    )


def index_default():
	films = model.selectFilms(30)
	return render.index(films=films,logado=session.login,apelido=session.apelido,email=session.email)

class Index:
	def GET(self):
		logging.error("Pagina Index.html")
		return index_default()

class Logged:
	def GET(self):
#		return render.logged(span_num=9)
		return render.login(logged=session.login)
		

class About:
	def GET(self):
		return render.about(logado=session.login,apelido=session.apelido)

class Alterar:
	def GET(self):
		
		#perfil = "checked"
		cod = session.ident	
		usuario = db.select('usuario', where='us_codigo=$cod', vars=locals())[0]
		try:
			perfil = db.select('film_perfils',where='idusuario=$cod', vars=locals())[0]
		except:
			perfil = {}

		for k, v in perfil.iteritems():
			if v:
				perfil[k] = 'checked'
			else:
				perfil[k] = ""

		return render.alterar(usuario = usuario, perfil = perfil,logado=session.login,nome=session.nome,apelido=session.apelido)
        
class Amigos:
	def GET(self):
		try:
			nome = web.input().nome
			usuarios = db.query("SELECT * FROM usuario WHERE us_nome ~* $nome OR us_apelido ~* $nome",vars={'nome':nome})
			return render.amigos(logado=session.login, apelido=session.apelido,usuarios=usuarios)
		except:
			return "You're not a hacker, get out!"

def logged():
	if session.login==1:
		return True
	else:
		return False

class Login:

	def GET(self):
		if logged():
			return index_default()
		else:
			return render.login()

	def POST(self):
		email, passwd = web.input().email, web.input().pwd
		try:
			ident = db.select('usuario', where='us_email=$email', vars=locals())[0]
			if hashlib.sha256("sAlT754-"+passwd).hexdigest() == ident['us_senha']:
				session.login = 1
				session.nome = ident['us_nome']
				session.ident = ident['us_codigo']
				session.apelido = ident['us_apelido']
				return index_default()
			else:
				session.login = 0
				return render.login()
		except Exception,e:
			print e
			session.login = 0
			return "Login inexistente!"


class Signup:
	def GET(self):
		return render.signup()

	def POST(self):
		us_nome = web.input().name
		us_apelido = web.input().nick
		us_cpf = web.input().cpf
		us_email = web.input().email
		pwd1 = web.input().pwd

		pwd =hashlib.sha256("sAlT754-"+pwd1).hexdigest()
		db.query("INSERT INTO usuario(us_nome,us_cpf,us_email,us_apelido,us_senha) VALUES($nome,$cpf,$email,$apelido,$senha)",vars={'apelido':us_apelido,'email':us_email,'senha':pwd,'cpf':us_cpf,'nome':us_nome})
		return index_default()

class Logout:

    def GET(self):
        session.login = 0
        session.kill()
        raise web.seeother('/login')

#--------------- AREA DE BUSCAS -----------------
def render_search_qry(films):
	return render.index(films=films,logado=session.login,apelido=session.apelido)

def get_genre_qry(query):
	qry = query.lower()
	if qry == "action":
		q="f.action='1'"
	elif qry == "adventure":
		q="f.adventure='1'"
	elif qry == "animation":
		q="f.animation='1'"
	elif qry == "children":
		q="f.children='1'"
	elif qry == "comedy":
		q="f.comedy='1'"
	elif qry == "crime":
		q="f.crime='1'"
	elif qry == "documentary":
		q="f.documentary='1'"
	elif qry == "drama":
		q="f.drama='1'"
	elif qry == "fantasy":
		q="f.fantasy='1'"
	elif qry == "filmnoir":
		q="f.filmnoir='1'"
	elif qry == "horror":
		q="f.horror='1'"
	elif qry == "musical":
		q="f.musical='1'"
	elif qry == "mystery":
		q="f.mystery='1'"
	elif qry == "romance":
		q="f.romance='1'"
	elif qry == "scifi":
		q="f.scifi='1'"
	elif qry == "thriller":
		q="f.thriller='1'"
	elif qry == "war":
		q="f.war='1'"
	elif qry == "western":
		q="f.western='1'"
	else:
		q="1='2'" #minha primeira gambiarra no codigo =/ ass: Alvaro Reis
	return q



class MainSearch:	
	def GET(self):
		request = web.input()
		try:
			query = str(request['query'])		
			attbr = str(request['attbr'])
			if attbr != "" and attbr != "genre":
				q="%s ~* '%s'" % (attbr,query)
			elif attbr == "genre":
				q = get_genre_qry(query)
			else:
				q2 = get_genre_qry(query)
				#if qry_genre != "":
				q="a.name ~* '%s' OR d.name ~* '%s' OR w.name ~* '%s' OR f.title ~* '%s' OR %s" % (query,query,query,query,q2)

			films = model.selectFilmsWhere(40,q)
			return render_search_qry(films)
		except:
			return "Houston, we have a problem!"

class FindFriends:
	def GET(self):
		pass
if __name__ == '__main__':
	app.run()
