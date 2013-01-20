select count(title)
from films as f
inner join directors d on d.iddirector = f.director
inner join writersfilm wf on wf.idfilm = f.filmid
inner join writers w on w.idwriter = wf.idwriter
inner join actorsfilm af on af.idfilm = f.filmid
inner join actors a on a.idactor = af.idactor
