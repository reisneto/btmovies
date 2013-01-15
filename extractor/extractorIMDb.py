import urllib2
import urllib
import re
import random
import psycopg2
import unicodedata
import httplib

LINK		= "http://us.imdb.com/M/title-exact?From%20Dusk%20Till%20Dawn%20(1996)"
RE_RATING	= r'<span itemprop="ratingValue">(.*)</span></strong>'
RE_YEAR		= r'<a href="/year/.*/">(.*)</a>'
RE_SINOPSE 	= r'<p itemprop="description">\n(.*)[\.\.\.|\n</p>]'
RE_ACTORS	= r'itemprop="actors"\n.*>(.*)</a>'
RE_IMAGE	= r'id="img_primary">\n.*\n.*\n.*<img src="(.*)"'
RE_DIRECTOR	= r'itemprop="director"\n.*>(.*)</a>'
RE_WRITERS	= r'<a.*writer.*href="/name/.*/".*>(.*)</a>'



USER_AGENTS = ['Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.1 (KHTML, like Gecko) Chrome/22.0.1207.1 Safari/537.1','Mozilla/5.0 (Windows NT 6.1; rv:15.0) Gecko/20120716 Firefox/15.0a2','Mozilla/5.0 (compatible; MSIE 10.6; Windows NT 6.1; Trident/5.0; InfoPath.2; SLCC1; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET CLR 2.0.50727) 3gpp-gba UNTRUSTED/1.0','Opera/9.80 (Windows NT 6.1; U; es-ES) Presto/2.9.181 Version/12.00','Mozilla/5.0 (iPad; CPU OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5355d Safari/8536.25']


def select_user_agent():
   index = random.randrange(len(USER_AGENTS))
   return USER_AGENTS[index]


def extractor(id_film, link):
	try:
		req = urllib2.Request(link)
		req.add_header = ('User-agent',select_user_agent())
		page = urllib2.urlopen(req)
	except httplib.HTTPException:		
		logging.error("LINK FAILED")
		return None
		
	enc = 'ISO-8859-1'
	
	htmlcode = unicode(page.read(), enc)
	
	valid = re.search(RE_RATING,htmlcode)
	
	if valid == None:
		return None, None, None, None, None, None, None;
	
	rating 		= re.search(RE_RATING,htmlcode).group(1)
	year		= re.search(RE_YEAR,htmlcode).group(1)
	sinopse		= re.search(RE_SINOPSE,htmlcode).group(1)

	image		= re.search(RE_IMAGE, htmlcode).group(1)
	director	= re.search(RE_DIRECTOR, htmlcode).group(1)
	writers		= re.findall(RE_WRITERS, htmlcode)
	actors 		= re.findall(RE_ACTORS, htmlcode)
#	print 'rating 	: ' + rating
#	print 'year  	: ' + year
#	print 'sinopse	: ' + sinopse
#	print 'image	: ' + image
#	print 'director : ' + director
	
#	print 'actors'
#	for actor in actors:
#		print '\t' + actor
#	print 'writers'
#	for writer in writers:
#		print '\t' + writer
	
#	print 'Baixando imagem'
	urllib.urlretrieve(image, "../static/film_images/img_" + str(id_film) + ".jpg")
	# rating, year, sinopse, image, director, actors, writers
	return	rating, year, sinopse.encode('ascii', 'ignore'), "img_" + str(id_film) + ".jpg", director.encode('ascii', 'ignore'), actors, writers;


def queryDatabase():
	conexao = psycopg2.connect("dbname=rsdb2012 user=postgres password=123")

	ordem = conexao.cursor()

	ordem.execute("select filmid, imdb from films where rating is NULL and filmid > 1670;")
	films = ordem.fetchall()
	
	for film in films:
		rating, year, sinopse, image, director, actors, writers = extractor(int(film[0]), film[1])
		if rating == None:
			print "Filme de ID: " + str(int(film[0])) + " nao processado"
			continue
		ordem.execute("select iddirector from directors where name = '" + director + "';")
		aux_director = ordem.fetchone()
		if not aux_director:
			ordem.execute("insert into directors (name) values ('"+ director +"');")
			conexao.commit()
			ordem.execute("select iddirector from directors where name = '" + director + "';")
			aux_director = ordem.fetchone()
		
		id_director = int(aux_director[0])
		ordem.execute("update films set rating = %s, year = %s, sinopse = %s, image = %s, director = %s where filmid = %s", (float(rating), int(year), sinopse, image, id_director, film[0]))
		conexao.commit()
		
		for actor in actors:
			actor_str = actor.encode('ascii', 'ignore')
			ordem.execute("select idactor from actors where name = '" + actor_str + "';")
			aux_actor = ordem.fetchone()
			if not aux_actor:
				ordem.execute("insert into actors (name) values ('" + actor_str + "');")
				conexao.commit()
				ordem.execute("select idactor from actors where name = '" + actor_str + "';")
				aux_actor = ordem.fetchone()
			ordem.execute("insert into actorsfilm(idfilm, idactor) values(%s, %s)", (int(film[0]), int(aux_actor[0])))
			conexao.commit()
		
		for writer in writers:
			writer_str = writer.encode('ascii', 'ignore')
			ordem.execute("select idwriter from writers where name = '" + writer_str + "';")
			aux_writer = ordem.fetchone()
			if not aux_writer:
				ordem.execute("insert into writers (name) values ('" + writer_str + "');")
				conexao.commit()
				ordem.execute("select idwriter from writers where name = '" + writer_str + "';")
				aux_writer = ordem.fetchone()
			ordem.execute("select * from writersfilm where idfilm = " + str(int(film[0])) + " and idwriter = " + str(int(aux_writer[0])))
			flag = ordem.fetchone()
			if not flag:
				ordem.execute("insert into writersfilm(idfilm, idwriter) values(%s, %s);", (int(film[0]), int(aux_writer[0])))
				conexao.commit()
		print "Filme de ID: " + str(int(film[0])) + " processado"
	ordem.close()
	conexao.close()
				
						
queryDatabase()
	

'''	ordem.execute("drop table nomes;")

	ordem.execute("create table nomes ( nome varchar, valor integer);")

	conexao.commit()

	ordem.execute("insert into nomes ( nome, valor ) values (%s, %s)", ( "usuario1","101"))
	ordem.execute("insert into nomes ( nome, valor ) values (%s, %s)", ( "usuario2","102"))
	ordem.execute("insert into nomes ( nome, valor ) values (%s, %s)", ( "usuario3","103"))

	conexao.commit()

	ordem.execute("select * from nomes;")
	print (ordem.fetchall())


	ordem.close()
	conexao.close()
'''


