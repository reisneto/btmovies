import sys, os
abspath = os.path.dirname(__file__)
sys.path.append(abspath)
import web
import hashlib
import model
import json
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
	'/.*','Index',
)


app = web.application(urls, globals(),autoreload=False)
store = web.session.DiskStore(os.path.join(abspath,'sessions'))
session = web.session.Session(app, store,
				initializer={'login': 0, 'ident': None,'nome':None,'apelido':None})

#db = web.database(dbn='postgres', db='test_auth', user='postgres', pw='123')
db = web.database(dbn='postgres', db='rsdb2012', user='postgres', pw='123')

render = render_jinja(
        'templates',   # Set template directory.
        encoding = 'utf-8',                         # Encoding.
    )

#render = web.template.render('templates', base='base')

def index_default():
	films = model.selectFilms()
	return render.index(films=films,logado=session.login,apelido=session.apelido)

class Index:
	def GET(self):
		#films = db.query("SELECT title,sinopse,imdb,image FROM films LIMIT 30")
#		films = model.selectFilms()
#		return render.index(span_num=12,films=films,nome=session.nome,logado=session.login)
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
		return render.amigos(logado=session.login, apelido=session.apelido)

def logged():
	if session.login==1:
		return True
	else:
		return False

class Login:

	def GET(self):
		if logged():
#			films = model.selectFilms()
#			user = {}
#			user['id']=session.ident
#			user['nome']=session.name
#			user['logado']=session.login
#			return render.index(logged=session.login,films=films,nome="Reis",logado=1)
#			return Index.GET()
#			return render.index(films=films,nome=session.nome,logado=session.login)
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
				#O mesmo que esta descrito em Index.GET(). Nao a uso pq n sei chama-la. N eh estatica
#				films = model.selectFilms()
#				return render.index(span_num=12,films=films,nome=session.nome,logado=session.login)
				return index_default()
			else:
				session.login = 0
				#session.name = None
				#session.id = None
				#session.privilege = 0
				#render = create_render(session.privilege)
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
#		return Index.GET()
#		raise web.seeother("/")

class Logout:

    def GET(self):
        session.login = 0
        session.kill()
        raise web.seeother('/login')

if __name__ == '__main__':
	app.run()
