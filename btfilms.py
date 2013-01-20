import sys, os
abspath = os.path.dirname(__file__)
sys.path.append(abspath)
import web
import hashlib
#import model
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
	'/.*','Index',
)


app = web.application(urls, globals(),autoreload=False)
store = web.session.DiskStore(os.path.join(abspath,'sessions'))
session = web.session.Session(app, store,
                              initializer={'login': 0, 'privilege': 0})

#db = web.database(dbn='postgres', db='test_auth', user='postgres', pw='123')
db = web.database(dbn='postgres', db='rsdb2012', user='postgres', pw='123')

render = render_jinja(
        'templates',   # Set template directory.
        encoding = 'utf-8',                         # Encoding.
    )

#render = web.template.render('templates', base='base')

class Index:
	def GET(self):
		films = db.query("SELECT title,sinopse,imdb FROM films LIMIT 30")
		return render.index(span_num=12,films=films,logged=False)

class Logged:
	def GET(self):
#		return render.logged(span_num=9)
		return render.login(logged=True)

class About:
	def GET(self):
		return render.about()

def logged():
	if session.login==1:
		return True
	else:
		return False

class Login:

	def GET(self):
		if logged():
#			return render.logged(span_num=9)
			return render.index(logged=True)
		else:
			return render.login()

	def POST(self):
		email, passwd = web.input().email, web.input().pwd
		try:
			ident = db.select('usuario', where='email=$email', vars=locals())[0]
			if hashlib.sha256("sAlT754-"+passwd).hexdigest() == ident['password']:
				session.login = 1
				#return "logou!"
				#return render.logged(span_num=9)
				return render.index(logged=True)
			else:
				session.login = 0
				#session.privilege = 0
				#render = create_render(session.privilege)
				return render.login()
		except:
			session.login = 0
			return "Login inexistente!"


class Signup:
	def GET(self):
		return render.signup()

	def POST(self):
		nick = web.input().nick
		email = web.input().email
		pwd1 = web.input().pwd
		pwd =hashlib.sha256("sAlT754-"+pwd1).hexdigest()
		db.query("INSERT INTO usuario(nick,email,password) VALUES($n,$e,$p)",vars={'n':nick,'e':email,'p':pwd})
		raise web.seeother("/")

class Logout:

    def GET(self):
        session.login = 0
        session.kill()
        raise web.seeother('/login')

class JsonFilms:
	def createJson(self,films):
		jFilms = [{
			'title': f['title'],
			'ano': f['ano'],
			"diretor": f['diretor'],
			"roteirista": f['roteirista'],#lista
			"ator": f['ator'],#ator eh uma lista
			"genero":f['genero'],#outra lista'''
			"descricao":f['descricao'],
			'rate':f['rate']
		}for f in films]
		return json.dumps(jFilms)

	def GET(self):
		atores = ["Tom Cruise","Pamela Anderson", "Roger That"]
		rot = ["Mike Spuger","Jorge Aragonis"]
		gen = ["Aventura", "Acao"]
		films = [{'title':"A",'ano':1991,'diretor':"Steven SP","roteirista":rot,"genero":gen,"descricao":"DDDDDD",'rate':9.4,'ator':atores}
				]
		return self.createJson(films)

if __name__ == '__main__':
	app.run()
