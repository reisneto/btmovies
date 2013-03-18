SELECT f.*, SQRT(POW(CAST(f.unknown AS INTEGER) - CAST(p.unknown AS INTEGER),2) + POW(CAST(f.action AS INTEGER) - CAST(p.action AS INTEGER),2) + POW(CAST(f.adventure AS INTEGER) - CAST(p.adventure AS INTEGER),2) + POW(CAST(f.animation AS INTEGER) - CAST(p.animation AS INTEGER),2) + POW(CAST(f.children AS INTEGER) - CAST(p.children AS INTEGER),2) + POW(CAST(f.comedy AS INTEGER) - CAST(p.comedy AS INTEGER),2) + POW(CAST(f.crime AS INTEGER) - CAST(p.crime AS INTEGER),2) + POW(CAST(f.documentary AS INTEGER) - CAST(p.documentary AS INTEGER),2) + POW(CAST(f.drama AS INTEGER) - CAST(p.drama AS INTEGER),2) + POW(CAST(f.fantasy AS INTEGER) - CAST(p.fantasy AS INTEGER),2) + POW(CAST(f.filmnoir AS INTEGER) - CAST(p.filmnoir AS INTEGER),2) + POW(CAST(f.horror AS INTEGER) - CAST(p.horror AS INTEGER),2) + POW(CAST(f.musical AS INTEGER) - CAST(p.musical AS INTEGER),2) + POW(CAST(f.mystery AS INTEGER) - CAST(p.mystery AS INTEGER),2) + POW(CAST(f.romance AS INTEGER) - CAST(p.romance AS INTEGER),2) + POW(CAST(f.scifi AS INTEGER) - CAST(p.scifi AS INTEGER),2) + POW(CAST(f.thriller AS INTEGER) - CAST(p.thriller AS INTEGER),2) + POW(CAST(f.war AS INTEGER) - CAST(p.war AS INTEGER),2) + POW(CAST(f.western AS INTEGER) - CAST(p.western AS INTEGER),2)) as distEuc
FROM film_perfils p, films f
INNER JOIN directors d ON d.iddirector = f.director 
INNER JOIN writersfilm wf ON wf.idfilm = f.filmid 
INNER JOIN writers w ON w.idwriter = wf.idwriter 
INNER JOIN actorsfilm af ON af.idfilm = f.filmid 
INNER JOIN actors a ON a.idactor = af.idactor
WHERE p.idUsuario = 1
ORDER BY distEuc ASC


