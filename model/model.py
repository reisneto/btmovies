import psycopg2
import logging

try:
	conexao = psycopg2.connect("dbname=rsdb2012 user=postgres password=123")
except:
	logging.error("Error on connection database")

class Film:
	pass


############################## UTILS - Mount Film
def mountFilms(films):
	ret = []
	idFilm = -1
	for film in films:
		if idFilm == film[0]:
			mounted.writers.add(film[32])
			mounted.actors.add(film[36])
		else:
			if idFilm != -1:
				ret.append(mounted)
			idFilm = film[0]
			mounted = Film()
			mounted.idfilm = idFilm
			mounted.title = film[1]
			mounted.imdb = film[2]
			mounted.unknown = film[3]
			mounted.action = film[4]
			mounted.adventure = film[5]
			mounted.animation = film[6]
			mounted.children = film[7]
			mounted.comedy = film[8]
			mounted.crime = film[9]
			mounted.documentary = film[10]
			mounted.drama = film[11]
			mounted.fantasy = film[12]
			mounted.filmnoir = film[13]
			mounted.horror = film[14]
			mounted.musical = film[15]
			mounted.mystery = film[16]
			mounted.romance = film[17]
			mounted.scifi = film[18]
			mounted.thriller = film[19]
			mounted.war = film[20]
			mounted.western = film[21]
			mounted.rating = film[22]
			mounted.year = film[24]
			mounted.sinopse = film[25]
			mounted.image = film[26]
			mounted.director = film[28]
			mounted.actors = set()
			mounted.writers = set()
			mounted.writers.add(film[32])
			mounted.actors.add(film[36])
	if idFilm != -1:
		ret.append(mounted)
	return ret
		
	

############################## INSERT - Director	
def insertDirector(name):
	ordem = conexao.cursor()
	name
	try:
		ordem.execute('INSERT INTO directors(name) VALUES (%s)', [name])
	except Exception, e:
		print e
	conexao.commit()
	ordem.execute("select iddirector from directors where name = %s;", [name])
	idDirector = ordem.fetchone()
	ordem.close()
	return idDirector

############################## INSERT - Writer
def insertWriter(name):
	ordem = conexao.cursor()
	try:
		ordem.execute('INSERT INTO writers(name) VALUES (%s)', [name])
	except Exception, e:
		print e
	conexao.commit()
	ordem.execute("select idwriter from writers where name = %s;", [name])
	idWriter = ordem.fetchone()
	ordem.close()
	return idWriter
		
############################## INSERT - Actor
def insertActor(name):
	ordem = conexao.cursor()
	try:
		ordem.execute('INSERT INTO actors(name) VALUES (%s)', [name])
	except Exception, e:
		print e
	conexao.commit()
	ordem.execute("select idactor from actors where name = %s;", [name])
	idActor = ordem.fetchone()
	ordem.close()
	return idActor
	
############################## INSERT - FilmWriter
def insertFilmWriter(idfilm, idwriter):
	ordem = conexao.cursor()
	try:
		ordem.execute('INSERT INTO writersfilm(idfilm, idwriter) VALUES (%s, %s);', [idfilm, idwriter])
	except Exception, e:
		print e
	conexao.commit()
	return None
	
############################## INSERT - FilmActor
def insertFilmActor(idfilm, idactor):
	ordem = conexao.cursor()
	try:
		ordem.execute('INSERT INTO actorsfilm(idfilm, idactor) VALUES (%s, %s);', [idfilm, idactor])
	except Exception, e:
		print e
	conexao.commit()
	return None

############################## INSERT - Film
def insertFilm(title, imdb, unknown, action, adventure, animation, children, comedy, crime, documentary, drama, fantasy, filmnoir, horror, musical, mystery, romance, scifi, thriller, war, western, rating, director, year, sinopse, image, actors, writers):

	idDirector = insertDirector(director)
	ordem = conexao.cursor()
	try:
		ordem.execute('INSERT INTO films(title, imdb, unknown, action, adventure, animation, children, comedy, crime, documentary, drama, fantasy, filmnoir, horror, musical, mystery, romance, scifi, thriller, war, western, rating, director, year, sinopse, image) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s);', [title, imdb, unknown, action, adventure, animation, children, comedy, crime, documentary, drama, fantasy, filmnoir, horror, musical, mystery, romance, scifi, thriller, war, western, float(rating), idDirector, int(year), sinopse, image])
	except Exception, e:
		print e
		logging.error('insertFilm aborted')
		ordem.close()
		return None
	conexao.commit()
	ordem.execute('SELECT filmid FROM films WHERE title = %s', [title])
	idFilm = ordem.fetchone()
	ordem.close()
	
	for actor in actors:
		idActor = insertActor(actor)
		insertFilmActor(idFilm, idActor)

	
	for writer in writers:
		idWriter = insertWriter(writer)
		insertFilmWriter(idFilm, idWriter)
		
	return idFilm

############################## INSERT - Usuario


############################## SELECT - Film
def selectFilm(idFilm):
	ordem = conexao.cursor()
	ordem.execute('SELECT * FROM films AS f INNER JOIN directors d ON d.iddirector = f.director INNER JOIN writersfilm wf ON wf.idfilm = f.filmid INNER JOIN writers w ON w.idwriter = wf.idwriter INNER JOIN actorsfilm af ON af.idfilm = f.filmid INNER JOIN actors a ON a.idactor = af.idactor WHERE filmid = %s ORDER BY filmid', [idFilm])
	auxFilm = ordem.fetchall()
	film = mountFilms(auxFilm)
	ordem.close()
	return film
	
############################## SELECT - Films
def selectFilms():
	ordem = conexao.cursor()
	ordem.execute('SELECT * FROM films AS f INNER JOIN directors d ON d.iddirector = f.director INNER JOIN writersfilm wf ON wf.idfilm = f.filmid INNER JOIN writers w ON w.idwriter = wf.idwriter INNER JOIN actorsfilm af ON af.idfilm = f.filmid INNER JOIN actors a ON a.idactor = af.idactor ORDER BY filmid')
	auxFilms = ordem.fetchall()
	films = mountFilms(auxFilms)
	ordem.close()
	return films
	
############################## SELECT - Films with whereStmt
def selectFilmsWhere(whereStmt):
	ordem = conexao.cursor()
	ordem.execute('SELECT * FROM films AS f INNER JOIN directors d ON d.iddirector = f.director INNER JOIN writersfilm wf ON wf.idfilm = f.filmid INNER JOIN writers w ON w.idwriter = wf.idwriter INNER JOIN actorsfilm af ON af.idfilm = f.filmid INNER JOIN actors a ON a.idactor = af.idactor' + whereStmt + ' ORDER BY filmid')
	auxFilms = ordem.fetchall()
	films = mountFilms(auxFilms)
	ordem.close()
	return films




############################## Cadastro Film Test
#actors = ['actor1', 'actor2', 'actor3']
#writers = ['writer1', 'writer2', 'writer3']
#insertFilm('film1', 'film1.com', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 9.0, 'director1', 2012, 'sinopse1', 'image_1.jpg', actors, writers)

filmes = selectFilms()
print len(filmes)
for filme in filmes:
	print filme.title

conexao.close()

