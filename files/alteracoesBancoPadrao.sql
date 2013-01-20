ALTER TABLE usuario ADD CONSTRAINT unique_apelido UNIQUE (us_apelido);
CREATE UNIQUE INDEX index_apelido
ON usuario USING btree (us_apelido ASC NULLS LAST);
CREATE UNIQUE INDEX index_id
ON usuario USING btree (us_codigo ASC NULLS LAST);
CREATE UNIQUE INDEX "index_usuarioAmigo"
ON amizade USING btree (am_usuario ASC NULLS LAST, am_amigo ASC NULLS LAST);
CREATE UNIQUE INDEX index_codigo
ON amizade USING btree (am_codigo ASC NULLS LAST);
