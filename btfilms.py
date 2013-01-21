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
				initializer={'login': 0, 'ident': None,'nome':None,'apelido':None})

db = web.database(dbn='postgres', db='rsdb2012', user='postgres', pw='123')

render = render_jinja(
        'templates',   # Set template directory.
        encoding = 'utf-8',                         # Encoding.
    )


def index_default():
	films = model.selectFilms(30)
	return render.index(films=films,logado=session.login,apelido=session.apelido)

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
		
		usuario = [{
			'nome': ['nome']
			
		}]
		perfil = "checked"
		
		return render.alterar(usuario = usuario, perfil = perfil,logado=session.login,nome=session.nome,apelido=session.apelido)
        
class Amigos:
	def GET(self):
		nome = web.input().nome
		usuarios = db.query("SELECT * FROM usuario WHERE us_nome ~* $nome OR us_apelido ~* $nome",vars={'nome':nome})
		return render.amigos(logado=session.login, apelido=session.apelido,usuarios=usuarios)

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

#TODO: Linkar query com o model
class MainSearch:	
	def GET(self):
#		q = '''af.name = 'Tom Hanks' '''
		query = web.input().query
		attbr = web.input().attbr
		log = "Query %s Attbr:%s" % (query,attbr)
		logging.error(log) 
		films = model.selectFilmsWhere(3,"")
		return render_search_qry(films)

class FindFriends:
	def GET(self):
		pass
if __name__ == '__main__':
	app.run()
