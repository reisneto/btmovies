
def logged():
	if session.login==1:
		return True
	else:
		return False

class Login:

	def GET(self):
		if logged():
			return render.logged(span_num=9)
		else:
			return render.login()

	def POST(self):
		email, passwd = web.input().email, web.input().pwd
		try:
			ident = db.select('usuario', where='email=$email', vars=locals())[0]
			if hashlib.sha256("sAlT754-"+passwd).hexdigest() == ident['password']:
				session.login = 1
				return "logou!"
				#return render.logged()
			else:
				session.login = 0
				#session.privilege = 0
				#render = create_render(session.privilege)
				return "nao logou"
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


