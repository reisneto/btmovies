import web
#import model
from web.contrib.template import render_jinja

urls = (
	'/', 'Index',
	'/logged','Logged',
	'/about','About'
)

render = render_jinja(
        'templates',   # Set template directory.
        encoding = 'utf-8',                         # Encoding.
    )

#render = web.template.render('templates', base='base')

class Index:
	def GET(self):
		return render.index(span_num=12)

class Logged:
	def GET(self):
		return render.logged(span_num=9)

class About:
	def GET(self):
		return render.about()

app = web.application(urls, globals())

if __name__ == '__main__':
	app.run()
