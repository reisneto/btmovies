CREATE TABLE film_perfils
(
   idUsuario integer NOT NULL, 
   unknown character(1) NOT NULL DEFAULT 0, 
   action character(1) NOT NULL DEFAULT 0,
   adventure character(1) NOT NULL DEFAULT 0,
   animation character(1) NOT NULL DEFAULT 0,
   children character(1) NOT NULL DEFAULT 0,
   comedy character(1) NOT NULL DEFAULT 0,
   crime character(1) NOT NULL DEFAULT 0,
   documentary character(1) NOT NULL DEFAULT 0,
   drama character(1) NOT NULL DEFAULT 0,
   fantasy character(1) NOT NULL DEFAULT 0,
   filmnoir character(1) NOT NULL DEFAULT 0,
   horror character(1) NOT NULL DEFAULT 0,
   musical character(1) NOT NULL DEFAULT 0,
   mystery character(1) NOT NULL DEFAULT 0,
   romance character(1) NOT NULL DEFAULT 0,
   scifi character(1) NOT NULL DEFAULT 0,
   thriller character(1) NOT NULL DEFAULT 0,
   war character(1) NOT NULL DEFAULT 0,
   western character(1) NOT NULL DEFAULT 0,
   CONSTRAINT "fk_usuarioCodigo" FOREIGN KEY (idUsuario) REFERENCES usuario (us_codigo) ON UPDATE NO ACTION ON DELETE NO ACTION
) 
WITH (
  OIDS = FALSE
)
;
ALTER TABLE film_perfils OWNER TO postgres;
