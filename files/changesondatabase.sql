ALTER TABLE films ADD CONSTRAINT films_titleyear_unique UNIQUE (title, "year");
ALTER TABLE actors ADD CONSTRAINT actor_name_unique UNIQUE ("name");
ALTER TABLE directors ADD CONSTRAINT directors_name_unique UNIQUE ("name");
ALTER TABLE usuario ADD CONSTRAINT unique_apelido UNIQUE (us_apelido);
ALTER TABLE actorsfilm ADD CONSTRAINT fk_actorid FOREIGN KEY (idactor) REFERENCES actors (idactor) ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE actorsfilm ADD CONSTRAINT fk_filmid FOREIGN KEY (idfilm) REFERENCES films (filmid) ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE films ADD CONSTRAINT fk_directorid FOREIGN KEY (director) REFERENCES directors (iddirector) ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE writersfilm ADD CONSTRAINT fk_writerid FOREIGN KEY (idwriter) REFERENCES writers (idwriter) ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE writersfilm ADD CONSTRAINT fk_filmid FOREIGN KEY (idfilm) REFERENCES films (filmid) ON UPDATE NO ACTION ON DELETE NO ACTION;




/* Mudanças nas tabelas compartilhadas */
ALTER TABLE usuario ADD CONSTRAINT unique_apelido UNIQUE (us_apelido);
CREATE UNIQUE INDEX index_apelido
   ON usuario USING btree (us_apelido ASC NULLS LAST);
CREATE UNIQUE INDEX index_id
   ON usuario USING btree (us_codigo ASC NULLS LAST);
CREATE UNIQUE INDEX "index_usuarioAmigo"
   ON amizade USING btree (am_usuario ASC NULLS LAST, am_amigo ASC NULLS LAST);
CREATE UNIQUE INDEX index_codigo
   ON amizade USING btree (am_codigo ASC NULLS LAST);


