import psycopg2
import logging

try:
	conexao = psycopg2.connect("dbname=rsdb2012 user=postgres password=123")
except:
	logging.error("Error on connection database")

class Film:
	pass
	
class Director:
	pass
	
class Actor:
	pass

class Writer:
	pass

class Usuario:
	pass
	
class Amizade:
	pass

############################## UTILS - Mount Films
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
	
############################## UTILS - Mount Directors
def mountDirectors(directors):
	ret = []
	for director in directors:
		mounted = Director()
		mounted.idDirector = director[0]
		mounted.name = director[1]
		ret.append(mounted)
	return ret
		
############################## UTILS - Mount Actors
def mountActors(actors):
	ret = []
	for actor in actors:
		mounted = Actor()
		mounted.idActor = actor[0]
		mounted.name = actor[1]
		ret.append(mounted)
	return ret

############################## UTILS - Mount Writers
def mountWriters(writers):
	ret = []
	for writer in writers:
		mounted = Writer()
		mounted.idWriter = writer[0]
		mounted.name = writer[1]
		ret.append(mounted)
	return ret

############################## UTILS - Mount Usuarios --> us_codigo, us_nome, us_cpf, us_email, us_apelido, us_senha
def mountUsuarios(usuarios):
	ret = []
	for usuario in usuarios:
		mounted = Usuario()
		mounted.us_codigo = usuario[0]
		mounted.us_nome = usuario[1]
		mounted.us_cpf = usuario[2]
		mounted.us_email = usuario[3]
		mounted.us_apelido = usuario[4]
		mounted.us_senha = usuario[5]
		ret.append(mounted)
	return ret
	
############################## UTILS - Mount Amizades
def mountAmizades(amizades): 
	ret = []
	for amizade in amizades:
		mounted = Amizade()
		mounted.am_codigo = amizade[0]
		mounted.am_usuario = amizade[1]
		mounted.am_amigo = amizade[2]
		mounted.am_confianca = amizade[3]
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
def insertUsuario(nome, cpf, email, apelido, senha):
	ordem = conexao.cursor()
	try: 
		ordem.execute('INSERT INTO usuario(us_nome, us_cpf, us_email, us_apelido, us_senha) VALUES (%s, %s, %s, %s, %s);', [nome, cpf, email, apelido, senha])
	except Exception, e:
		print e
		ordem.close()
		return None
	conexao.commit()
	ordem.execute('SELECT us_codigo FROM usuario WHERE us_apelido = %s', [apelido])
	idUsuario = ordem.fetchone()
	ordem.close()
	return idUsuario

############################## INSERT - Amizade
def insertAmizade(usuario, amigo, confianca):
	ordem = conexao.cursor()
	try: 
		ordem.execute('INSERT INTO amizade(am_usuario, am_amigo, am_confianca) VALUES (?, ?, ?);', [usuario, amigo, confianca])
	except Exception, e:
		print e
		ordem.close()
		return None
	conexao.commit()
	ordem.execute('SELECT am_codigo FROM amizade WHERE am_usuario = %s and am_amigo = %s', [usuario, amigo])
	idAmizade = ordem.fetchone()
	ordem.close()
	return idAmizade

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

############################## SELECT - Directors
def selectDirectors():
	ordem = conexao.cursor()
	ordem.execute('SELECT iddirector, name FROM directors;')
	auxDirectors = ordem.fetchall()
	directors = mountDirectors(auxDirectors)
	ordem.close()
	return directors

############################## SELECT - Director
def selectDirector(idDirector):
	ordem = conexao.cursor()
	ordem.execute('SELECT iddirector, name FROM directors WHERE iddirector = %s;', [idDirector])
	auxDirectors = ordem.fetchall()
	directors = mountDirectors(auxDirectors)
	ordem.close()
	return directors
	
############################## SELECT - Actors
def selectActors():
	ordem = conexao.cursor()
	ordem.execute('SELECT idactor, name FROM actors;')
	auxActors = ordem.fetchall()
	actors = mountActors(auxActors)
	ordem.close()
	return actors

############################## SELECT - Actor
def selectActor(idActor):
	ordem = conexao.cursor()
	ordem.execute('SELECT idactor, name FROM actors WHERE idactor = %s;', [idActor])
	auxActors = ordem.fetchall()
	actors = mountActors(auxActors)
	ordem.close()
	return actors

############################## SELECT - Writers
def selectWriters():
	ordem = conexao.cursor()
	ordem.execute('SELECT idwriter, name FROM writers;')
	auxWriters = ordem.fetchall()
	writers = mountWriters(auxWriters)
	ordem.close()
	return writers

############################## SELECT - Writer
def selectWriter(idWriter):
	ordem = conexao.cursor()
	ordem.execute('SELECT idwriter, name FROM writers WHERE idwriter = %s;', [idWriter])
	auxWriters = ordem.fetchall()
	writers = mountWriters(auxWriters)
	ordem.close()
	return writers

############################## SELECT - Usuario by id
def selectUsuarioId(idUsuario):
	ordem = conexao.cursor()
	ordem.execute('SELECT * FROM usuario WHERE us_codigo = %s;', [idUsuario])
	auxUsuarios = ordem.fetchall()
	usuarios = mountUsuarios(auxUsuarios)
	ordem.close()
	return usuarios

############################## SELECT - Usuario by apelido
def selectUsuarioApelido(apelido):
	ordem = conexao.cursor()
	ordem.execute('SELECT * FROM usuario WHERE us_apelido = %s;', [apelido])
	auxUsuarios = ordem.fetchall()
	usuarios = mountUsuarios(auxUsuarios)
	ordem.close()
	return usuarios

############################## SELECT - Usuario - Login
def selectUsuarioLogin(apelido, senha):
	ordem = conexao.cursor()
	ordem.execute('SELECT * FROM usuario WHERE us_apelido = %s and us_senha = %s;', [apelido, senha])
	auxUsuarios = ordem.fetchall()
	usuarios = mountUsuarios(auxUsuarios)
	ordem.close()
	return usuarios

############################## SELECT - Amizade by id
def selectAmizadeId(idAmizade):
	ordem = conexao.cursor()
	ordem.execute('SELECT am_codigo, am_usuario, am_amigo, am_confianca FROM amizade WHERE am_codigo = %s;', [idAmizade])
	auxAmizades = ordem.fetchall()
	amizades = mountAmizades(auxAmizades)
	ordem.close()
	return amizades

############################## SELECT - Amizade by usuario e amigo
def selectAmizadeId(usuario_id, amigo_id):
	ordem = conexao.cursor()
	ordem.execute('SELECT am_codigo, am_usuario, am_amigo, am_confianca FROM amizade WHERE am_usuario = %s and am_amigo = %s;', [usuario_id, amigo_id])
	auxAmizades = ordem.fetchall()
	amizades = mountAmizades(auxAmizades)
	ordem.close()
	return amizades

############################## RECOMENDAÇÃO
def recomendacaoUsuario(idUsuario):
	return None


############################## Cadastro Film Test
#actors = ['actor1', 'actor2', 'actor3']
#writers = ['writer1', 'writer2', 'writer3']
#insertFilm('film1', 'film1.com', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 9.0, 'director1', 2012, 'sinopse1', 'image_1.jpg', actors, writers)

filmes = selectUsuarioLogin("teste", "senha")
for filme in filmes:
	print filme.name

conexao.close()

