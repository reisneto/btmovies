CREATE TABLE actors (
    idactor integer NOT NULL,
    name character varying(100) DEFAULT NULL::character varying
);

CREATE TABLE actorsfilm (
    idfilm integer NOT NULL,
    idactor integer NOT NULL
);

CREATE TABLE amizade (
    am_codigo integer NOT NULL,
    am_usuario integer NOT NULL,
    am_amigo integer NOT NULL,
    am_confianca smallint DEFAULT 0,
    am_data timestamp without time zone
);

CREATE TABLE directors (
    iddirector integer NOT NULL,
    name character varying(100) DEFAULT NULL::character varying
);

CREATE TABLE films (
    filmid integer NOT NULL,
    title character varying(500) DEFAULT NULL::character varying,
    imdb character varying(500) DEFAULT NULL::character varying,
    unknown character(1) DEFAULT NULL::bpchar,
    action character(1) DEFAULT NULL::bpchar,
    adventure character(1) DEFAULT NULL::bpchar,
    animation character(1) DEFAULT NULL::bpchar,
    children character(1) DEFAULT NULL::bpchar,
    comedy character(1) DEFAULT NULL::bpchar,
    crime character(1) DEFAULT NULL::bpchar,
    documentary character(1) DEFAULT NULL::bpchar,
    drama character(1) DEFAULT NULL::bpchar,
    fantasy character(1) DEFAULT NULL::bpchar,
    filmnoir character(1) DEFAULT NULL::bpchar,
    horror character(1) DEFAULT NULL::bpchar,
    musical character(1) DEFAULT NULL::bpchar,
    mystery character(1) DEFAULT NULL::bpchar,
    romance character(1) DEFAULT NULL::bpchar,
    scifi character(1) DEFAULT NULL::bpchar,
    thriller character(1) DEFAULT NULL::bpchar,
    war character(1) DEFAULT NULL::bpchar,
    western character(1) DEFAULT NULL::bpchar,
    rating real,
    director integer,
    year integer,
    sinopse text,
    image character varying(100) DEFAULT NULL::character varying
);

CREATE TABLE usuario (
    us_codigo integer NOT NULL,
    us_nome character varying(80) NOT NULL,
    us_cpf character varying(12) NOT NULL,
    us_email character varying(80) NOT NULL,
    us_apelido character varying(30),
    us_senha character varying(25) NOT NULL
);

CREATE TABLE writers (
    idwriter integer NOT NULL,
    name character varying(100) DEFAULT NULL::character varying
);

CREATE TABLE writersfilm (
    idwriter integer NOT NULL,
    idfilm integer NOT NULL
);


