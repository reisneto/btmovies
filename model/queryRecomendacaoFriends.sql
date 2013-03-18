SELECT f.*, d.*, wf.*, w.*, af.*, ac.*, f.title, AVG(a.am_confianca) AS trust
FROM amizade a
INNER JOIN recommendationsFromFriends r ON a.am_amigo = r.idUsuario
INNER JOIN films f ON f.filmid = r.idFilm
INNER JOIN directors d ON d.iddirector = f.director 
INNER JOIN writersfilm wf ON wf.idfilm = f.filmid 
INNER JOIN writers w ON w.idwriter = wf.idwriter 
INNER JOIN actorsfilm af ON af.idfilm = f.filmid 
INNER JOIN actors ac ON ac.idactor = af.idactor
WHERE a.am_usuario = 1 AND 2 NOT IN (SELECT re.idUsuario FROM recommendationsFromFriends AS re WHERE re.idUsuario = 2 AND re.idFilm = f.filmid)
GROUP BY f.title, f.filmid, d.iddirector, wf.idwriter, wf.idfilm, w.idwriter, af.idfilm, af.idactor, ac.idactor
ORDER BY trust DESC, title