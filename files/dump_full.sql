--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: actors; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE actors (
    idactor integer NOT NULL,
    name character varying(100) DEFAULT NULL::character varying
);


ALTER TABLE public.actors OWNER TO postgres;

--
-- Name: actors_idactor_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE actors_idactor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.actors_idactor_seq OWNER TO postgres;

--
-- Name: actors_idactor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE actors_idactor_seq OWNED BY actors.idactor;


--
-- Name: actorsfilm; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE actorsfilm (
    idfilm integer NOT NULL,
    idactor integer NOT NULL
);


ALTER TABLE public.actorsfilm OWNER TO postgres;

--
-- Name: amizade; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE amizade (
    am_codigo integer NOT NULL,
    am_usuario integer NOT NULL,
    am_amigo integer NOT NULL,
    am_confianca smallint DEFAULT 0,
    am_data timestamp without time zone
);


ALTER TABLE public.amizade OWNER TO postgres;

--
-- Name: amizade_am_codigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE amizade_am_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.amizade_am_codigo_seq OWNER TO postgres;

--
-- Name: amizade_am_codigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE amizade_am_codigo_seq OWNED BY amizade.am_codigo;


--
-- Name: directors; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE directors (
    iddirector integer NOT NULL,
    name character varying(100) DEFAULT NULL::character varying
);


ALTER TABLE public.directors OWNER TO postgres;

--
-- Name: directors_iddirector_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE directors_iddirector_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.directors_iddirector_seq OWNER TO postgres;

--
-- Name: directors_iddirector_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE directors_iddirector_seq OWNED BY directors.iddirector;


--
-- Name: fabricante; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fabricante (
    fb_codigo integer NOT NULL,
    fb_nome character varying(50) NOT NULL,
    fb_nacionalidade character varying(40) NOT NULL
);


ALTER TABLE public.fabricante OWNER TO postgres;

--
-- Name: fabricante_fb_codigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fabricante_fb_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fabricante_fb_codigo_seq OWNER TO postgres;

--
-- Name: fabricante_fb_codigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE fabricante_fb_codigo_seq OWNED BY fabricante.fb_codigo;


--
-- Name: films; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

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


ALTER TABLE public.films OWNER TO postgres;

--
-- Name: fornecedor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fornecedor (
    fn_codigo integer NOT NULL,
    fn_nome character varying(80) NOT NULL
);


ALTER TABLE public.fornecedor OWNER TO postgres;

--
-- Name: fornecedor_fn_codigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fornecedor_fn_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fornecedor_fn_codigo_seq OWNER TO postgres;

--
-- Name: fornecedor_fn_codigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE fornecedor_fn_codigo_seq OWNED BY fornecedor.fn_codigo;


--
-- Name: loja; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE loja (
    lj_codigo integer NOT NULL,
    lj_nome character varying(80) NOT NULL,
    lj_fisica boolean DEFAULT true NOT NULL,
    lj_endereco character varying(100) NOT NULL
);


ALTER TABLE public.loja OWNER TO postgres;

--
-- Name: loja_lj_codigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE loja_lj_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.loja_lj_codigo_seq OWNER TO postgres;

--
-- Name: loja_lj_codigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE loja_lj_codigo_seq OWNED BY loja.lj_codigo;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuario (
    us_codigo integer NOT NULL,
    us_nome character varying(80) NOT NULL,
    us_cpf character varying(12) NOT NULL,
    us_email character varying(80) NOT NULL,
    us_apelido character varying(30),
    us_senha character varying(25) NOT NULL
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_us_codigo_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_us_codigo_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_us_codigo_seq OWNER TO postgres;

--
-- Name: usuario_us_codigo_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_us_codigo_seq OWNED BY usuario.us_codigo;


--
-- Name: writers; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE writers (
    idwriter integer NOT NULL,
    name character varying(100) DEFAULT NULL::character varying
);


ALTER TABLE public.writers OWNER TO postgres;

--
-- Name: writers_idwriter_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE writers_idwriter_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.writers_idwriter_seq OWNER TO postgres;

--
-- Name: writers_idwriter_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE writers_idwriter_seq OWNED BY writers.idwriter;


--
-- Name: writersfilm; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE writersfilm (
    idwriter integer NOT NULL,
    idfilm integer NOT NULL
);


ALTER TABLE public.writersfilm OWNER TO postgres;

--
-- Name: idactor; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY actors ALTER COLUMN idactor SET DEFAULT nextval('actors_idactor_seq'::regclass);


--
-- Name: am_codigo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY amizade ALTER COLUMN am_codigo SET DEFAULT nextval('amizade_am_codigo_seq'::regclass);


--
-- Name: iddirector; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY directors ALTER COLUMN iddirector SET DEFAULT nextval('directors_iddirector_seq'::regclass);


--
-- Name: fb_codigo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fabricante ALTER COLUMN fb_codigo SET DEFAULT nextval('fabricante_fb_codigo_seq'::regclass);


--
-- Name: fn_codigo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fornecedor ALTER COLUMN fn_codigo SET DEFAULT nextval('fornecedor_fn_codigo_seq'::regclass);


--
-- Name: lj_codigo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY loja ALTER COLUMN lj_codigo SET DEFAULT nextval('loja_lj_codigo_seq'::regclass);


--
-- Name: us_codigo; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario ALTER COLUMN us_codigo SET DEFAULT nextval('usuario_us_codigo_seq'::regclass);


--
-- Name: idwriter; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY writers ALTER COLUMN idwriter SET DEFAULT nextval('writers_idwriter_seq'::regclass);


--
-- Data for Name: actors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY actors (idactor, name) FROM stdin;
16	Pierce Brosnan
17	Sean Bean
18	Izabella Scorupco
19	Tim Roth
20	Amanda De Cadenet
21	David Proval
22	Gene Hackman
23	Rene Russo
24	Danny DeVito
25	Sigourney Weaver
26	Holly Hunter
27	Dermot Mulroney
28	Li Gong
29	Baotian Li
30	Wang Xiaoxiao
31	Bruce Willis
32	Madeleine Stowe
33	Brad Pitt
34	James Cromwell
35	Magda Szubanski
36	Christine Cavanaugh
37	Susan Sarandon
38	Sean Penn
39	Robert Prosky
40	Ian McKellen
41	Annette Bening
42	Jim Broadbent
43	Morgan Freeman
44	Kevin Spacey
45	Woody Allen
46	Mira Sorvino
47	Pamela Blair
48	Richard Dreyfuss
49	Glenne Headly
50	Jay Thomas
51	Victoria Abril
52	Josiane Balasko
53	Alain Chabat
54	Harvey Keitel
55	George Clooney
56	Juliette Lewis
57	Willeke van Ammelrooy
58	Jan Decleir
59	Veerle van Overloop
60	Mark Rylance
61	Kristin Scott Thomas
62	Patsy Kensit
63	Tim Curry
64	Kevin Bishop
65	Billy Connolly
66	Mel Gibson
67	Sophie Marceau
68	Patrick McGoohan
69	Robert De Niro
70	Jodie Foster
71	Cybill Shepherd
72	Will Smith
73	Martin Lawrence
74	Lisa Boyle
75	Tom Hanks
76	Bill Paxton
77	Kevin Bacon
78	Val Kilmer
79	Tommy Lee Jones
80	Jim Carrey
81	Catherine Deneuve
82	Jean Sorel
83	Michel Piccoli
84	Denzel Washington
85	Matt Craven
86	Robert Crumb
87	Aline Kominsky
88	Charles Crumb
89	Antonio Banderas
90	Salma Hayek
91	Joaquim de Almeida
92	Jason James Richter
93	Michael Madsen
94	Francis Capra
95	Chris O&#39;Donnell
96	Drew Barrymore
97	Matthew Lillard
98	Tim Allen
99	Don Rickles
100	Elina L&ouml;wensohn
101	Peter Fonda
102	Nic Ratner
103	Ralph Fiennes
104	Angela Bassett
105	Adam Sandler
106	Darren McGavin
107	Bridgette Wilson-Sampras
108	Michael Douglas
109	Demi Moore
110	Donald Sutherland
111	Bruce Greenwood
112	Elias Koteas
113	Don McKellar
114	Johnny Depp
115	Martin Landau
116	Sarah Jessica Parker
117	William Gates
118	Arthur Agee
119	Emma Gates
120	Tim Robbins
121	Meg Ryan
122	Walter Matthau
123	Mark Hamill
124	Harrison Ford
125	Carrie Fisher
126	Anthony Hopkins
127	Aidan Quinn
128	Woody Harrelson
129	Tom Sizemore
130	Dustin Hoffman
131	Jean Reno
132	Gary Oldman
133	Natalie Portman
134	John Travolta
135	Uma Thurman
136	Samuel L. Jackson
137	Linus Roache
138	Tom Wilkinson
139	Robert Carlyle
140	John Turturro
141	Rob Morrow
142	Kurt Russell
143	James Spader
144	Alexis Cruz
145	Leonardo DiCaprio
146	Sandra Bullock
147	Bill Pullman
148	Peter Gallagher
149	Courteney Cox
150	Sean Young
151	Robin Wright
152	Gary Sinise
153	Hugh Grant
154	Andie MacDowell
155	James Fleet
156	James Garner
157	Peter Bailey
158	Roscoe Lee Browne
159	John Henrik Clarke
160	Al Pacino
161	Penelope Ann Miller
162	Lori Petty
163	Charlie Sheen
164	Lloyd Bridges
165	Valeria Golino
166	Sam Neill
167	Laura Dern
168	Jeff Goldblum
169	Kenneth Branagh
170	Emma Thompson
171	Keanu Reeves
172	Joe Mantegna
173	Ben Kingsley
174	Max Pomeranc
175	Ross Malinger
176	Rutger Hauer
177	Mike Myers
178	Nancy Travis
179	Anthony LaPaglia
180	Christian Slater
181	Patricia Arquette
182	Dennis Hopper
183	Heather Matarazzo
184	Christina Brucato
185	Victoria Davis
186	Macaulay Culkin
187	Joe Pesci
188	Daniel Stern
189	Scott Weinger
190	Robin Williams
191	Linda Larkin
192	Arnold Schwarzenegger
193	Linda Hamilton
194	Edward Furlong
195	Kevin Costner
196	Mary McDonnell
197	Graham Greene
198	Adriana Caselotti
199	Harry Stockwell
200	Lucille La Verne
201	William H. Macy
202	Frances McDormand
203	Steve Buscemi
204	Richard Romanus
205	John Candy
206	Joe Flaherty
207	Sheena Easton
208	Dom DeLuise
209	Steve Martin
210	Dan Aykroyd
211	Phil Hartman
212	Sharon Stone
213	Isabelle Adjani
214	Chazz Palminteri
215	Stockard Channing
216	Dave Foley
217	Bruce McCulloch
218	Kevin McDonald
219	Trace Beaulieu
220	Michael J. Nelson
221	Jim Mallon
222	Danny Glover
223	Ray Liotta
224	Denis Leary
225	Paul Hogan
226	Elijah Wood
227	Jonathan Banks
228	Helen Hunt
229	Cary Elwes
230	Maya Lin
231	Burt Reynolds
232	Armand Assante
233	Chris Cooper
234	Elizabeth Pe&ntilde;a
235	Stephen Mendillo
236	Kyra Sedgwick
237	Forest Whitaker
238	Jennifer Tilly
239	Gina Gershon
240	Joe Pantoliano
241	Jennifer Jason Leigh
242	Miranda Richardson
243	Harry Belafonte
244	Audrey Hepburn
245	George Peppard
246	Patricia Neal
247	Clark Gable
248	Vivien Leigh
249	Thomas Mitchell
250	Orson Welles
251	Joseph Cotten
252	Dorothy Comingore
253	Keir Dullea
254	Gary Lockwood
255	William Sylvester
256	James Stewart
257	Jean Arthur
258	Claude Rains
259	Tony Shalhoub
260	Stanley Tucci
261	Marc Anthony
262	Emilio Estevez
263	Jeffrey Nordling
264	David Selby
265	Michael J. Fox
266	Sally Field
267	Don Alder
268	Angela Lansbury
269	David Tomlinson
270	Roddy McDowall
271	Alan Rickman
272	Bonnie Bedelia
273	Gena Rowlands
274	Marisa Tomei
275	G&eacute;rard Depardieu
276	Christopher Eccleston
277	Kate Winslet
278	Liam Cunningham
279	Vince Vaughn
280	Heather Graham
281	Jon Favreau
282	Diane Keaton
283	John Beck
284	Graham Chapman
285	John Cleese
286	Michael Palin
287	Patrick Swayze
288	Jennifer Grey
289	Jerry Orbach
290	Tom Berenger
291	Willem Dafoe
292	Andrew McCarthy
293	Jonathan Silverman
294	Catherine Mary Stewart
295	George Dzundza
296	Jack Lemmon
297	Alec Baldwin
298	Tom Cruise
299	Kelly McGillis
300	Katharine Hepburn
301	Henry Fonda
302	Jane Fonda
303	Yves Montand
304	Daniel Auteuil
305	Emmanuelle B&eacute;art
306	Goldie Hawn
307	Eileen Brennan
308	Marie-Laure Dougnac
309	Dominique Pinon
310	Pascal Benezech
311	Karen Allen
312	Paul Freeman
313	Jonathan Pryce
314	Kim Greist
315	Michael Biehn
316	Carrie Henn
317	Lee J. Cobb
318	Martin Balsam
319	Martin Sheen
320	Marlon Brando
321	Robert Duvall
322	Tom Skerritt
323	John Hurt
324	Anthony Perkins
325	Janet Leigh
326	Vera Miles
327	Matthew Modine
328	R. Lee Ermey
329	Vincent D&#39;Onofrio
330	Derek Jacobi
331	Simon Shepherd
332	F. Murray Abraham
333	Tom Hulce
334	Elizabeth Berridge
335	Cathy Moriarty
336	Robert Sean Leonard
337	Ethan Hawke
338	Anne Parillaud
339	Marc Duret
340	Patrick Fontana
341	Bruce Campbell
342	Sarah Berry
343	Dan Hicks
344	Bill Murray
345	Chris Elliott
346	Clint Eastwood
347	Christopher Lloyd
348	Lea Thompson
349	George C. Scott
350	Karl Malden
351	Stephen Young
352	Nozomu Sasaki
353	Mami Koyama
354	Mitsuo Iwata
355	Anne Brochet
356	Vincent Perez
357	Gene Wilder
358	Madeline Kahn
359	Marty Feldman
360	Rob Reiner
361	Michael McKean
362	Christopher Guest
363	Sean Connery
364	Alison Doody
365	Elliott Gould
366	James Earl Jones
367	Billy Crystal
368	Nick Nolte
369	Jessica Lange
370	Emily Watson
371	Stellan Skarsg&aring;rd
372	Katrin Cartlidge
373	Patrick Stewart
374	Jonathan Frakes
375	Brent Spiner
376	Billy Bob Thornton
377	Dwight Yoakam
378	J.T. Walsh
379	Charles Berling
380	Jean Rochefort
381	Fanny Ardant
382	Glenn Close
383	Jeff Daniels
384	Joely Richardson
385	William Atherton
386	William Shatner
387	Leonard Nimoy
388	DeForest Kelley
389	Michael Keaton
390	Michelle Pfeiffer
391	Kiefer Sutherland
392	Lou Diamond Phillips
393	Steven Seagal
394	Gary Busey
395	Roy Scheider
396	Robert Shaw
397	Jack Nicholson
398	Swoosie Kurtz
399	Mary Kay Place
400	Cuba Gooding Jr.
401	Ren&eacute;e Zellweger
402	Nicolas Cage
403	Trey Wilson
404	Robert Redford
405	Sidney Poitier
406	Julia Ormond
407	Ona Fletcher
408	Agga Olsen
409	Ben Affleck
410	Joey Lauren Adams
411	Ethan Suplee
412	Jason David Frank
413	Catherine Sutherland
414	Hilary Shepard
415	John Cusack
416	Minnie Driver
417	Elizabeth Hurley
418	Michael York
419	Julia Roberts
420	Cameron Diaz
421	Garance Clavel
422	Zinedine Soualem
423	Ren&eacute;e Le Calm
424	Linda Fiorentino
425	Brendan Fraser
426	Leslie Mann
427	Thomas Haden Church
428	Laurence Fishburne
429	Kathleen Quinlan
430	Michael Jeter
431	Kevin Zegers
432	Wendy Makkena
433	Aaron Eckhart
434	Matt Malloy
435	Stacy Edwards
436	Shaquille O&#39;Neal
437	Annabeth Gish
438	Judd Nelson
439	Jeremy Northam
440	Alexander Goodwin
441	Kevin Sorbo
442	Tia Carrere
443	Thomas Ian Griffith
444	Jude Law
445	Casper Van Dien
446	Denise Richards
447	Dina Meyer
448	Greg Kinnear
449	Elisabeth Shue
450	Julian Sands
451	Robert Downey Jr.
452	David Thewlis
453	Mary Stuart Masterson
454	Pamela Adlon
455	Gwyneth Paltrow
456	James Cosmo
457	Greta Scacchi
458	Don Johnson
459	Timothy Spall
460	Brenda Blethyn
461	Phyllis Logan
462	Meryl Streep
463	Neve Campbell
464	David Arquette
465	Madonna
466	Jamie Lee Curtis
467	Kevin Kline
468	Ed Harris
469	Jon Voight
470	Ving Rhames
471	Don Cheadle
472	Maura Tierney
473	Justin Cooper
474	Patricia Richardson
475	Christine Dunford
476	Joan Allen
477	Vanessa Williams
478	Joan Cusack
479	Tom Selleck
480	Russell Crowe
481	Guy Pearce
482	Anna Paquin
483	Dana Delany
484	Jack Thompson
485	Brad Renfro
486	Joshua Jackson
487	Daniel Day-Lewis
488	Pete Postlethwaite
489	Alison Crosbie
490	Liam Neeson
491	Tony Brooks
492	Diana Davis
493	Terry Wood
494	Wesley Snipes
495	Diane Lane
496	Daniel Benzali
497	Jamie Ren&eacute;e Smith
498	John Roselius
499	Viggo Mortensen
500	Anne Bancroft
501	Sylvester Stallone
502	Andy Garcia
503	Brian Cox
504	Ashley Judd
505	Jennifer Lopez
506	Bill Bellamy
507	Natalie Desselle
508	Lark Voorhies
509	David Duchovny
510	Timothy Hutton
511	Angelina Jolie
512	Rowan Atkinson
513	Peter MacNicol
514	John Mills
515	Alan Alda
516	Mark Wahlberg
517	Julianne Moore
518	Helen Mirren
519	Winona Ryder
520	John Goodman
521	Louise Fletcher
522	Michael Berryman
523	Jason Patric
524	Ir&egrave;ne Jacob
525	Thomas Lockyer
526	Walter Levine
527	Jean-Claude Van Damme
528	Powers Boothe
529	Raymond J. Barry
530	Ian McNeice
531	Simon Callow
532	Mary Steenburgen
533	Sean Patrick Flanery
534	Lance Henriksen
535	Courtney B. Vance
536	Alicia Silverstone
537	Stacey Dash
538	Brittany Murphy
539	Pauly Shore
540	Stephen Baldwin
541	Chris Farley
542	David Spade
543	Tim Matheson
544	John Malkovich
545	George Cole
546	Steven Weber
547	Michael T. Weiss
548	Peter Jacobson
549	Rob Schneider
550	Karan Ashley
551	Johnny Yong Bosch
552	Steve Cardenas
553	Elizabeth Berkley
554	Kyle MacLachlan
555	Richard Attenborough
556	Elizabeth Perkins
557	Dylan McDermott
558	Malcolm McDowell
559	Toni Collette
560	Rachel Griffiths
561	Bill Hunter
562	Leslie Nielsen
563	Priscilla Presley
564	George Kennedy
565	Tom Arnold
566	Anjelica Huston
567	Raul Julia
568	Eddie Murphy
569	Jon Tenney
570	Joey Travolta
571	Larry B. Scott
572	Mark Christopher Lawrence
573	Rusty Cundieff
574	Art Carney
575	Brian Benben
576	Ned Beatty
577	Richard Lewis
578	Roger Rees
579	Kathleen Turner
580	Sam Waterston
581	Ricki Lake
582	Dennis Farina
583	Bob Hoskins
584	John Leguizamo
585	Whoopi Goldberg
586	Kim Basinger
587	Dickie Jones
588	Christian Rub
589	Mel Blanc
590	Robert John Burke
591	Lucinda Jenney
592	Nicollette Sheridan
593	Charles Durning
594	Brian Kerwin
595	Randy Quaid
596	Peter O&#39;Toole
597	Mark Linn-Baker
598	Jessica Harper
599	Dorothy McGuire
600	Fess Parker
601	Tommy Kirk
602	Ilene Woods
603	James MacDonald
604	Eleanor Audley
605	Julie Andrews
606	Dick Van Dyke
607	Kathryn Beaumont
608	Ed Wynn
609	Richard Haydn
610	Henry Thomas
611	Peter Coyote
612	Giancarlo Esposito
613	Gregory Peck
614	John Megna
615	Frank Overton
616	Ruth Gordon
617	Bud Cort
618	Vivian Pickles
619	Groucho Marx
620	Harpo Marx
621	Chico Marx
622	Christopher Lambert
623	Clancy Brown
624	Walter Pidgeon
625	Anne Francis
626	Paul Newman
627	Katharine Ross
628	Tony Roberts
629	Tess Harper
630	Robert Joy
631	James Olson
632	Burt Young
633	Rutanya Alda
634	Karen Black
635	Oliver Reed
636	Burgess Meredith
637	Sissy Spacek
638	Piper Laurie
639	Amy Irving
640	Olivia Newton-John
641	Lorraine Gary
642	Murray Hamilton
643	Dennis Quaid
644	Bess Armstrong
645	Simon MacCorkindale
646	Ron Eldard
647	Robin Shou
648	August Schellenberg
649	Annie Corley
650	Richard Harris
651	Tsholofelo Wechoemang
652	William Hurt
653	Marco Leonardi
654	Lumi Cavazos
655	Regina Torn&eacute;
656	Wallace Shawn
657	Phoebe Brand
658	George Gaynes
659	Sean Astin
660	Sam Elliott
661	Paul Terry
662	Joanna Lumley
663	Ewan McGregor
664	Ewen Bremner
665	Jonny Lee Miller
666	Rhea Perlman
667	Mara Wilson
668	Kim Novak
669	Barbara Bel Geddes
670	Cary Grant
671	Eva Marie Saint
672	James Mason
673	Marilyn Monroe
674	Tony Curtis
675	Humphrey Bogart
676	Ingrid Bergman
677	Paul Henreid
678	Rex Harrison
679	Stanley Holloway
680	William Holden
681	Eddie Albert
682	Grace Kelly
683	Jessie Royce Landis
684	James Dean
685	Raymond Massey
686	Julie Harris
687	Rosalind Russell
688	Ralph Bellamy
689	Donna Reed
690	Lionel Barrymore
691	Charles Ruggles
692	Elizabeth Taylor
693	Burl Ives
694	Sterling Holloway
695	Edward Brophy
696	James Baskett
697	Louise Lasser
698	Carlos Montalb&aacute;n
699	Warren Beatty
700	Faye Dunaway
701	Michael J. Pollard
702	Ray Milland
703	Robert Cummings
704	Natalie Wood
705	Sal Mineo
706	Toshir&ocirc; Mifune
707	Takashi Shimura
708	Keiko Tsushima
709	Alec Guinness
710	Anthony Quinn
711	Burt Lancaster
712	Peter Riegert
713	Fulton Mackay
714	Mariel Hemingway
715	Gabriel Byrne
716	Albert Finney
717	Tom Waits
718	John Lurie
719	Roberto Benigni
720	Strother Martin
721	Charlton Heston
722	Jack Hawkins
723	Stephen Boyd
724	John Gielgud
725	Candice Bergen
726	Anton Glanzelius
727	Tomas von Br&ouml;mssen
728	Anki Lid&eacute;n
729	Geoffrey Rush
730	Armin Mueller-Stahl
731	Justin Braine
732	Julianna Margulies
733	Matthew Broderick
734	Kelly Preston
735	Victoire Thivisol
736	Delphine Schiltz
737	Matiaz Bureau Caton
738	River Phoenix
739	James Russo
740	Linden Ashby
741	Linda Hunt
742	Christian Bale
743	Allen Payne
744	Samantha Mathis
745	Jeremy Irons
746	Scott Bakula
747	Kevin J. O&#39;Connor
748	Joseph Latimore
749	Natasha Henstridge
750	Jeanne Tripplehorn
751	Kelly Lynch
752	Jeff Bridges
753	Ellen Barkin
754	Melanie Lynskey
755	Sarah Peirse
756	Clarence Williams III
757	Corbin Bernsen
758	Joe Torry
759	Christopher Reeve
760	Kirstie Alley
761	Linda Kozlowski
762	Anne Archer
763	Rosie O&#39;Donnell
764	Suzy Amis
765	Gabrielle Anwar
766	Meg Tilly
767	Terry Kinney
768	Sherilyn Fenn
769	Jack Palance
770	John Lithgow
771	Michael Rooker
772	Jane Curtin
773	Robert Knott
774	Kate Nelligan
775	Kathy Larson
776	Lena Olin
777	Wallace Wood
778	Carla Gugino
779	Lane Smith
780	Nastassja Kinski
781	James Gandolfini
782	Paige O&#39;Hara
783	Robby Benson
784	Richard White
785	Bruce Ramsay
786	Valentina Vargas
787	Doug Bradley
788	Richard Gere
789	Laura Linney
790	Edward Norton
791	Dominique Horwitz
792	Thomas Kretschmann
793	Sebastian Rudolph
794	Pruitt Taylor Vince
795	Shelley Winters
796	Liv Tyler
797	James Caan
798	Gary Cooper
799	Akim Tamiroff
800	Wendell Corey
801	Claudette Colbert
802	Walter Connolly
803	Judy Garland
804	Margaret O&#39;Brien
805	Mary Astor
806	Bette Davis
807	Anne Baxter
808	George Sanders
809	Laurence Olivier
810	Joan Fontaine
811	Michael Chekhov
812	Spencer Tracy
813	Joan Bennett
814	Leslie Caron
815	Maurice Chevalier
816	Louis Jourdan
817	Gene Tierney
818	Dana Andrews
819	Clifton Webb
820	Ronald Colman
821	Jane Wyatt
822	Edward Everett Horton
823	William Powell
824	Carole Lombard
825	Alice Brady
826	Rock Hudson
827	Duane Jones
828	Judith O&#39;Dea
829	Karl Hardman
830	Betty Field
831	James MacArthur
832	Brenda Fricker
833	Tony Danza
834	Mary Elizabeth Mastrantonio
835	Jacques Perrin
836	Lee Van Cleef
837	Ernest Borgnine
838	Kirk Douglas
839	Ralph Meeker
840	Adolphe Menjou
841	Carmen and Brooke
842	Andr&eacute; Christian
843	Dorian Corey
844	Tatsuya Nakadai
845	Akira Terao
846	Jinpachi Nezu
847	James Woods
848	Elizabeth McGovern
849	John Huston
850	Wil Wheaton
851	Corey Feldman
852	Peter Lorre
853	Ellen Widmann
854	Inge Landgut
855	Annie Ross
856	Priscilla Lane
857	Jane Seymour
858	Christopher Plummer
859	Peter Sellers
860	Shirley MacLaine
861	Melvyn Douglas
862	Harry Dean Stanton
863	Dean Stockwell
864	Marsha Mason
865	Jeff Fahey
866	Lindsay Duncan
867	Kim Delaney
868	Boris Karloff
869	Elsa Lanchester
870	Colin Clive
871	Virginia Madsen
872	Xander Berkeley
873	Tony Todd
874	Robert Mitchum
875	Polly Bergen
876	John Heard
877	Max Schreck
878	Greta Schr&ouml;der
879	Ruth Landshoff
880	Jerry Archbold
881	Fritz Benedict
882	Bill Bowerman
883	Anne Heche
884	Gaby Hoffmann
885	Tammy Lauren
886	Andrew Divoff
887	Robert Englund
888	Jennifer Love Hewitt
889	Sarah Michelle Gellar
890	Halle Berry
891	BD Wong
892	Josh Hamilton
893	Eric Stoltz
894	Samuel Gould
895	Bridget Fonda
896	Kirsten Dunst
897	Mia Farrow
898	Taylor Nichols
899	Chris Eigeman
900	Tushka Bergen
901	Joan Plowright
902	Natasha Richardson
903	Gene Kelly
904	Donald O&#39;Connor
905	Debbie Reynolds
906	Michael Par&eacute;
907	Mason Gamble
908	Alfred Molina
909	Paul Mercurio
910	Tara Morice
911	David Ogden Stiers
912	Kim Darby
913	Barbara Hershey
914	Steven Waddington
915	Nicole Kidman
916	Matt Dillon
917	Joaquin Phoenix
918	Michael Maloney
919	Richard Briers
920	Hetta Charnley
921	Shannen Doherty
922	Jeremy London
923	Jason Lee
924	Mary-Louise Parker
925	Geraldine O&#39;Rawe
926	Jeroen Krabb&eacute;
927	Isabella Rossellini
928	Tina Majorino
929	Frank Langella
930	V.S. Brodie
931	Guinevere Turner
932	T. Wendy McMillan
933	Ted Danson
934	Roberta Maxwell
935	Debra Winger
936	Julian Fellowes
937	Lara Flynn Boyle
938	Josh Charles
939	Jason Alexander
940	Charlotte Gainsbourg
941	Gabriel Jarret
942	Michelle Meyrink
943	Bai Ling
944	Bradley Whitford
945	Bonnie Hunt
946	Martin Short
947	Patrick Bergin
948	Matt Frewer
949	Austin O&#39;Brien
950	William Baldwin
951	Cindy Crawford
952	Steven Berkoff
953	Peter Weller
954	Roy Dupuis
955	Jennifer Rubin
956	Christopher Walken
957	Courtney Chase
958	Noah Emmerich
959	Christopher McDonald
960	Julie Bowen
961	Eric Schaeffer
962	Ben Stiller
963	Robin Givens
964	Vivian Paxton
965	Claudette Sutherland
966	Michael Marisi Ornstein
967	Christina Ricci
968	Dylan Walsh
969	Jennifer Beals
970	Dolph Lundgren
971	Leo Fitzpatrick
972	Justin Pierce
973	Chlo&euml; Sevigny
974	Marina Zudina
975	Fay Ripley
976	Evan Richards
977	Joseph Mazzello
978	Yancy Butler
979	Lauren Holly
980	Moira Kelly
981	Melanie Griffith
982	Michael Patrick Carter
983	Peter Falk
984	D.B. Sweeney
985	Brian Dennehy
986	Dianne Wiest
987	Alfre Woodard
988	Delroy Lindo
989	David Patrick Kelly
990	Rosie Perez
991	Geena Davis
992	Mia Sara
993	Ron Silver
994	Hiep Thi Le
995	Haing S. Ngor
996	Jerry Adler
997	Tyrin Turner
998	Larenz Tate
999	June Kyoto Lu
1000	Janet Jackson
1001	Tupac Shakur
1002	Regina King
1003	Keith Carradine
1004	Chelsea Field
1005	Mae Whitman
1006	Kelly Rowan
1007	William O&#39;Leary
1008	Michael Gunther
1009	Craig Chester
1010	Michael Stock
1011	Theresa Randle
1012	Isaiah Washington
1013	Spike Lee
1014	Michael Jordan
1015	Wayne Knight
1016	Jennifer Connelly
1017	Amy Brenneman
1018	Thora Birch
1019	Vincent Kartheiser
1020	Dirk Benedict
1021	Will Patton
1022	Stacy Keach
1023	Haley Joel Osment
1024	Damon Wayans
1025	Donald Pleasence
1026	Paul Rudd
1027	Marianne Hagan
1028	Greta Garbo
1029	Ina Claire
1030	Barbara Stanwyck
1031	Edward Arnold
1032	Jane Wyman
1033	Hayley Mills
1034	Richard Egan
1035	Reese Witherspoon
1036	Bokeem Woodbine
1037	Charlize Theron
1038	Claire Danes
1039	Dick Powell
1040	Claire Trevor
1041	Anne Shirley
1042	Timothy Balme
1043	Diana Pe&ntilde;alver
1044	Elizabeth Moody
1045	Terry Potter
1046	Pete O&#39;Herne
1047	Craig Smith
1048	Wilhelmenia Fernandez
1049	Fr&eacute;d&eacute;ric Andr&eacute;i
1050	Richard Bohringer
1051	Lisanne Falk
1052	Deborah Foreman
1053	Griffin O&#39;Neal
1054	Clayton Rohner
1055	Sinbad
1056	Matthew Perry
1057	Skeet Ulrich
1058	Chevy Chase
1059	Beverly D&#39;Angelo
1060	Nia Long
1061	Jennifer Aniston
1062	Jay Mohr
1063	Lynda Steadman
1064	Kate Byers
1065	Chris Tucker
1066	Heather Locklear
1067	Benicio Del Toro
1068	Doug E. Doug
1069	Dean Jones
1070	Vivica A. Fox
1071	Maggie Smith
1072	Maximilian Schell
1073	Neil Young
1074	Jim Jarmusch
1075	Ralph Molina
1076	Rose McGowan
1077	Joanna Going
1078	Jurnee Smollett
1079	Meagan Good
1080	Talisa Soto
1081	James Remar
1082	Jason Priestley
1083	Fiona Loewi
1084	Kathy Bates
1085	Matt LeBlanc
1086	Miko Hughes
1087	Andre Braugher
1088	Jerry Barone
1089	Gary Farmer
1090	Crispin Glover
1091	Caroline Goodall
1092	John Savage
1093	Kelsey Grammer
1094	Michelle Trachtenberg
1095	Gregory Smith
1096	Rachel Weisz
1097	Brock Pierce
1098	Blake Boyd
1099	Pauline Collins
1100	Tara Fitzgerald
1101	Rae&#39;Ven Larrymore Kelly
1102	Gregory Hines
1103	Jamie Foxx
1104	Tommy Davidson
1105	Ellen Burstyn
1106	Mare Winningham
1107	Ted Levine
1108	Lou Reed
1109	Michael Richards
1110	Isaac Mizrahi
1111	Roseanne Barr
1112	Sandra Bernhard
1113	Julie Delpy
1114	Andrea Eckert
1115	Jessica Tandy
1116	You Ge
1117	Ben Niu
1118	Jason London
1119	Wiley Wiggins
1120	Matthew McConaughey
1121	Lesley Sharp
1122	Todd Field
1123	Bentley Mitchum
1124	Fred Astaire
1125	Kay Thompson
1126	Freddie Bartholomew
1127	Dolores Costello
1128	C. Aubrey Smith
1129	Sebastian Cabot
1130	John Fiedler
1131	Adrian Dunbar
1132	Brian Flanagan
1133	Diego Abatantuono
1134	Claudio Bigagli
1135	Giuseppe Cederna
1136	William Petersen
1137	Mario Van Peebles
1138	William Sadler
1139	Barry Corbin
1140	Sheryl Lee
1141	Alan Arkin
1142	Ice Cube
1143	Thokozani Nkosi
1144	Jean-Hugues Anglade
1145	Brendan Gleeson
1146	Jasmine Guy
1147	Natalie Cole
1148	Craig Sheffer
1149	Tate Donovan
1150	Susan Egan
1151	Nick Scotti
1152	Anthony Barrile
1153	Anthony DeSando
1154	Al Franken
1155	Laura San Giacomo
1156	Ritch Brinkley
1157	James Gammon
1158	Dana Carvey
1159	Solveig Dommartin
1160	Pietro Falcone
1161	Fred Willard
1162	Catherine O&#39;Hara
1163	Lili Taylor
1164	Jared Harris
1165	Martha Plimpton
1166	Carlo Cecchi
1167	Jeffrey Wright
1168	Michael Wincott
1169	Teri Hatcher
1170	Danny Aiello
1171	Howard Stern
1172	Mary McCormack
1173	Robin Quivers
1174	Lisa Kudrow
1175	Janeane Garofalo
1176	Carol Kane
1177	Mark Boone Junior
1178	Charles Boyer
1179	Dave Hoover
1180	George Mendon&ccedil;a
1181	Rodney Brooks
1182	Julia Louis-Dreyfus
1183	Kris Kristofferson
1184	Marg Helgenberger
1185	Ann-Margret
1186	Helen Slater
1187	Tom Guiry
1188	Luke Edwards
1189	Timothy Busfield
1190	John Ashton
1191	Ralph Waite
1192	Leon
1193	Phoebe Cates
1194	Rik Mayall
1195	Maxwell Caulfield
1196	Lorna Luft
1197	Claudia Stedelin
1198	Julie Christie
1199	Kate Capshaw
1200	Zack Duhame
1201	Edward Burns
1202	John Mahoney
1203	Mel Brooks
1204	Ellen DeGeneres
1205	Robert Young
1206	Robert Ryan
1207	Luke Wilson
1208	Owen Wilson
1209	Ned Dowd
1210	Isabelle Huppert
1211	Martin Donovan
1212	Catherine Keener
1213	Kerry Fox
1214	Gil Bellows
1215	Rory Cochrane
1216	Joseph Lawrence
1217	Billy Joel
1218	Cheech Marin
1219	Jerry O&#39;Connell
1220	Megan Ward
1221	Billy West
1222	Angela Jones
1223	Tilda Swinton
1224	Amy Madigan
1225	Karen Sillas
1226	Anne Frank
1227	Amy Locane
1228	Dennis Rodman
1229	Mickey Rourke
1230	Sean Marshall
1231	Helen Reddy
1232	Jim Dale
1233	Laurie Metcalf
1234	Maria Pitillo
1235	Kim Cattrall
1236	Cynthia Stevenson
1237	Jon Lovitz
1238	Jing Ning
1239	Gang Wu
1240	Xiaorui Zhao
1241	Tom Noonan
1242	Adrienne Shelly
1243	Rebecca Nelson
1244	Beno&icirc;t Poelvoorde
1245	Jacqueline Poelvoorde-Pappaert
1246	Nelly Pappaert
1247	U Aung Ko
1248	Embeth Davidtz
1249	Tom Bell
1250	Gemma Jones
1251	Stuart Wilson
1252	Ice-T
1253	Naomi Watts
1254	Sandra Oh
1255	Stephen Chang
1256	Alannah Ong
1257	Robert Wuhl
1258	Lolita Davidovich
1259	Campbell Scott
1260	Cher
1261	Ryan O&#39;Neal
1262	Natascha McElhone
1263	Tommy Chong
1264	Ossie Davis
1265	John Garfield
1266	Ann Sheridan
1267	Dean Norris
1268	Charles S. Dutton
1269	Glen Berry
1270	Linda Henry
1271	Meera Syal
1272	Jesse Bradford
1273	Muhammad Ali
1274	George Foreman
1275	Don King
1276	Gabriel Olds
1277	Jimmy Smits
1278	Esai Morales
1279	Edward James Olmos
1280	Rosemary Harris
1281	Jenny Agutter
1282	David Gulpilil
1283	Luc Roeg
1284	Fred Williamson
1285	Jim Brown
1286	Pam Grier
1287	Mackenzie Astin
1288	Alisa Freyndlikh
1289	Aleksandr Kaydanovskiy
1290	Anatoliy Solonitsyn
1291	Stephen Spinella
1292	Stephen Bogardus
1293	Jermaine &#39;Huggy&#39; Hopkins
1294	Brian Hooks
1295	Claudia Kaleem
1296	Steve Guttenberg
1297	Arnold Vosloo
1298	Rick Moranis
1299	Julianne Phillips
1300	Thomas Gibson
1301	Ruth Marshall
1302	Cameron Bancroft
1303	Ruocheng Ying
1304	Sean Nelson
1305	Jeremy Davies
1306	Alberta Watson
1307	Elizabeth Newett
1308	Terence Stamp
1309	Maria Conchita Alonso
1310	Arie Verveen
1311	Alyssa Milano
1312	Eric Lloyd
1313	Farrah Fawcett
1314	Jonathan Taylor Thomas
1315	Saul Rubinek
1316	Andy Dick
1317	Jared Leto
1318	Ed O&#39;Neill
1319	Bette Midler
1320	Paula Marshall
1321	Rena Owen
1322	Temuera Morrison
1323	Mamaengaroa Kerr-Bell
1324	Jorge Perugorr&iacute;a
1325	Vladimir Cruz
1326	Mirta Ibarra
1327	Alain Delon
1328	Maurice Ronet
1329	Marie Lafor&ecirc;t
1330	Rupert Everett
1331	Fran&ccedil;ois Hadji-Lazaro
1332	Anna Falchi
1333	Errol Flynn
1334	Paul Lukas
1335	Ginger Rogers
1336	Jack Benny
1337	Robert Stack
1338	Michael Lerner
1339	David Caruso
1340	Robert Klein
1341	Rebecca De Mornay
1342	Stephen Lang
1343	Pamela Anderson
1344	Amir Aboulela
1345	Adriana Alexander
1346	Molly Parker
1347	Peter Outerbridge
1348	Jay Brazeau
1349	Omar Epps
1350	Kristy Swanson
1351	Michael Rapaport
1352	Lisa Eichhorn
1353	Charlie Talbert
1354	Eric Bogosian
1355	Everett McGill
1356	Sophia Loren
1357	Marcello Mastroianni
1358	Joanna Pacula
1359	Basil Wallace
1360	Donna DeLory
1361	Niki Harris
1362	Gr&eacute;goire Colin
1363	Alice Houri
1364	Jacques Nolot
1365	Scott &#39;Carrot Top&#39; Thompson
1366	Courtney Thorne-Smith
1367	Larry Miller
1368	Kim Miyori
1369	Thandie Newton
1370	Anthony Higgins
1371	Phillip Rhee
1372	Rosanna Arquette
1373	Aleksandra Vujcic
1374	Julian Arahanga
1375	Rade Serbedzija
1376	Romane Bohringer
1377	Amy Braverman
1378	Hedy Burress
1379	Jenny Lewis
1380	Douglas Spain
1381	Efrain Figueroa
1382	Kandeyce Jorden
1383	Christina Vidal
1384	Nathan Lane
1385	Jane March
1386	Rub&eacute;n Blades
1387	Fredro Starr
1388	Jada Pinkett Smith
1389	Queen Latifah
1390	Jon Seda
1391	Devon Sawa
1392	Scott Bairstow
1393	James Belushi
1394	Lela Rochon
1395	Scarlett Johansson
1396	Aleksa Palladino
1397	Dyan Cannon
1398	Wendy Hughes
1399	Jayne Brook
1400	Gene Ross
1401	Tim Daly
1402	Caroleen Feeney
1403	Dan Gunther
1404	John Hargreaves
1405	Sharon Gless
1406	Michael S. Berliner
1407	Harry Binswanger
1408	Kevin Corrigan
1409	Jason Flemyng
1410	Antony Sher
1411	Dorothy Tutin
1412	Irene Dunne
1413	Beulah Bondi
1414	John Plumpis
1415	Harold Ramis
1416	Connie Nelson
1417	Dee Hennigan
1418	Gary Carter
1419	Victoria Foyt
1420	Matt Salinger
1421	Frances Fisher
1422	Whitney Houston
1423	Loretta Devine
1424	Blythe Danner
1425	Frank Whaley
1426	Julie Mauduech
1427	Hubert Kound&eacute;
1428	Mathieu Kassovitz
1429	Oliver Milburn
1430	Dearbhla Molloy
1431	Danny Cunningham
1432	Leslie Phillips
1433	Kate Burton
1434	Lukas Haas
1435	John C. Reilly
1436	Keith Allen
1437	Stefania Sandrelli
1438	Claudiu Bleont
1439	Olga Tudorache
1440	Sami Frey
1441	Marc Barb&eacute;
1442	Julie J&eacute;z&eacute;quel
1443	Alex Del Rosario
1444	Gandong Cervantes
1445	Lawrence David
1446	Dennis Franz
1447	Ally Walker
1448	Sonia Braga
1449	Patrick Malahide
1450	Ion Caramitru
1451	Maurizio Nichetti
1452	Elena Sofia Ricci
1453	Amanda Sandrelli
1454	Huw Garmon
1455	Catrin Fychan
1456	Ceri Cunnington
1457	Lawrence Gilliard Jr.
1458	Wendell Holmes
1459	Barbara Gonzalez
1460	Hugues Avinens
1461	Nathalie Baye
1462	Paul Beauvais
1463	Carla Benedetti
1464	Matteo Fadda
1465	Giacomo Fadda
1466	Dan Zhao
1467	Yinyan Wu
1468	Daolin Sun
1469	Billy Campbell
1470	Ariane Schluter
1471	Ad van Kempen
1472	Nelly Alard
1473	Henry Jaglom
1474	Melissa Leo
1475	Jeffrey Force
1476	Matt Ross
1477	Catherine Curtin
1478	Timothy Pilato
1479	Scott Plank
1480	Melora Walters
1481	Jean-Luc Godard
1482	Genevi&egrave;ve Pasquier
1483	Denis Jad&oacute;t
1484	Petr Cepek
1485	Jan Kraus
1486	Vladim&iacute;r Kudla
1487	Elsa Zylberstein
1488	Florence Thomassin
1489	Yekaterina Golubeva
1490	Richard Courcet
1491	Vincent Dupont
1492	Susannah York
1493	Rodney Dangerfield
1494	Debi Mazar
1495	Aden Young
1496	Saffron Burrows
1497	Simon Bossell
1498	Too $hort
1499	B-Real
1500	Kurtis Blow
1501	Frances O&#39;Connor
1502	Alice Garner
1503	Matt Day
1504	Sam Bould
1505	Ian Hart
1506	Mercedes Ruehl
1507	Polly Walker
1508	Tomorowo Taguchi
1509	Shin&#39;ya Tsukamoto
1510	Nobu Kanaoka
1511	Rudolf Martin
1512	Shaghayeh Djodat
1513	Hossein Moharami
1514	Rogheih Moharami
1515	Madeleine Assas
1516	Ghalia Lacroix
1517	B&eacute;rang&egrave;re Allaux
1518	John Stockwell
1519	Jerry Stiller
1520	Guillermo D&iacute;az
1521	Frederick Weller
1522	Brendan Corbalis
1523	Leslie Howard
1524	Frances Dee
1525	John Lone
1526	Barbara Sukowa
1527	Kristy Young
1528	Doug Stone
1529	James Donadio
1530	John Phillip Law
1531	Anita Pallenberg
1532	Ming-Na Wen
1533	Kimberly Williams-Paisley
1534	Deborah Kara Unger
1535	Angel Aviles
1536	Seidy Lopez
1537	Jacob Vargas
1538	Dennis Haysbert
1539	Mel Harris
1540	Sab Shimono
1541	Lauren V&eacute;lez
1542	Tomas Melly
1543	Albert Brooks
1544	Whittni Wright
1545	Illeana Douglas
1546	Sissy Boyd
1547	Liza Harris
1548	Liam Ahern
1549	John Hannah
1550	John Lynch
1551	Christopher Reid
1552	Christopher Martin
1553	David Edwards
1554	Duane Martin
1555	Luke Perry
1556	James Rebhorn
1557	Dorothy Provine
1558	Crissy Rock
1559	Vladimir Vega
1560	Sandie Lavelle
1561	Charles Dance
1562	Clive Owen
1563	Marthe Villalonga
1564	Kanu Bannerjee
1565	Karuna Bannerjee
1566	Subir Banerjee
1567	Marlene Dietrich
1568	Murvyn Vye
1569	Joel McCrea
1570	Laraine Day
1571	Herbert Marshall
1572	Michael O&#39;Shea
1573	Iris Adrian
1574	Paul Muni
1575	John Wayne
1576	Gail Russell
1577	Harry Carey
1578	Lainie Kazan
1579	Joseph Bologna
1580	Barbara Carrera
1581	Ying Huang
1582	Richard Troxell
1583	Ning Liang
1584	Michael Albanese
1585	Evi Allen
1586	Shannon Barry
1587	George Burns
1588	Gracie Allen
1589	George Barbier
1590	Viveca Lindfors
1591	Jon Robin Baitz
1592	Helena Bonham Carter
1593	Clive Russell
1594	Charles Rocket
1595	Christine Lahti
1596	Paul Rhys
1597	Michael O&#39;Keefe
1598	Kim Vithana
1599	Jimmi Harkishin
1600	Sarita Khajuria
1601	Dennis O&#39;Keefe
1602	Marsha Hunt
1603	Keith David
1604	Helen Hayes
1605	Ken Berry
1606	Stefanie Powers
1607	Stephen Dorff
1608	Jake Busey
1609	Erika Eleniak
1610	William McNamara
1611	Lorraine Bracco
1612	Pat Morita
1613	Renaud
1614	Miou-Miou
1615	Ken Higelin
1616	Jean Yanne
1617	Florence Darel
1618	Sergei Dontsov
1619	Agn&egrave;s Soral
1620	Viktor Mikhaylov
1621	David Paymer
1622	Michel Blanc
1623	Carole Bouquet
1624	Philippe Noiret
1625	Anna Chlumsky
1626	Polly Draper
1627	Ellen Greene
1628	Michel Serrault
1629	Judy Davis
1630	Soumitra Chatterjee
1631	Sharmila Tagore
1632	Alok Chakravarty
1633	Tisha Campbell-Martin
1634	Paula Jai Parker
1635	Casey Affleck
1636	David Strathairn
1637	Sharron Corley
1638	Gabriel Casseus
1639	Saul Stein
1640	Annabella Sciorra
1641	Joanne Whalley
1642	Andr&eacute; Eisermann
1643	Udo Samel
1644	Jeremy Clyde
1645	James Duval
1646	Rachel True
1647	Nathan Bexton
1648	Predrag Manojlovic
1649	Lazar Ristovski
1650	Mirjana Jokovic
1651	Marco Hofschneider
1652	Rick Johnson
1653	Llyr Ifans
1654	Rhys Ifans
1655	Dorien Thomas
1656	Ben Mendelsohn
1657	Barry Otto
1658	Alison Folland
1659	Tara Subkoff
1660	Cole Hauser
1661	Tony Epper
1662	Mary-Kate Olsen
1663	Quentin Tarantino
1664	Sam Shepard
1665	Nick Stahl
1666	Cynda Williams
1667	Paul Calderon
1668	Smaran Ghosal
1669	St&eacute;phane Audran
1670	Samuel Fuller
1671	Patricia Royce
1672	Lorraine Devon
1673	JD Souther
1674	G&eacute;rard Desarthe
1675	Antje de Boeck
1676	Kyle McCulloch
1677	Gosia Dobrowolska
1678	Sarah Neville
1679	Magaye Niang
1680	Mareme Niang
1681	Aminata Fall
1682	Patricia Clarkson
1683	D&aacute;vid Vermes
1684	P&aacute;l Het&eacute;nyi
1685	Frantisek Hus&aacute;k
1686	Wallace Ford
1687	Alfred Ryder
1688	Jesse Jackson
1689	Juan Munoz
1690	Ray Rogers
1691	Sterling Hayden
1692	Carol Kelly
1693	Gad Elmaleh
1694	Messaoud Hattau
1695	Magaly Berdy
1696	Lhakpa Dorji
1697	Dorje Sherpa
1698	Sadie Frost
1699	Sean Pertwee
1700	Daniel Pollock
1701	Jacqueline McKenzie
1702	Tom Conti
1703	Mar&iacute;a Casares
1704	Miranda Rhyne
1705	Charlotte Eve Blythe
1706	Anna Levine
1707	Richard Basehart
1708	Scott Brady
1709	Roy Roberts
1710	Miranda Otto
1711	Rebecca Frith
1712	George Shevtsov
1713	Robbie Coltrane
1714	Alan Cumming
1715	Kim Dickens
1716	Vincent Gallo
1717	Julie Walters
1718	Rupert Graves
1719	Matthew Walker
1720	Kaori Fujii
1721	K&ocirc;ji Tsukamoto
1722	Angus Macfadyen
1723	Mario Yedidia
1724	Marley Shelton
1725	Adam Ant
1726	Jessica Hamilton
1727	Johan Widerberg
1728	Marika Lagercrantz
1729	Amanda Plummer
1730	Kathy Jamieson
1731	Saskia Reeves
1732	Leslie Hope
1733	Victor Ertmanis
1734	Johnathon Schaech
1735	Maria Schrader
1736	Pierre Sanoussi-Bliss
1737	Michael von Au
1738	Enrico Lo Verso
1739	Michele Placido
1740	Piro Milkani
1741	Nico
1742	Tina Aumont
1743	Ari Boulogne
1744	Jesper Sal&eacute;n
1745	Basia Frydman
1746	Om Puri
1747	Pavan Malhotra
1748	Angeline Ball
1749	Bruklin Harris
1750	Anna Grace
1751	Bruce A. Young
1752	Fionnula Flanagan
1753	Aidan Gillen
1754	Tim Guinee
1755	Takeshi Kitano
1756	Kayoko Kishimoto
1757	Ren Ohsugi
1758	Robin Tunney
1759	Michael Parks
1760	Lenny von Dohlen
1761	James Frain
1762	Andy Comeau
1763	Monica Keena
1764	Daisy Eagan
1765	Gordon Currie
1766	Paulina Porizkova
1767	Julie Warner
1768	Ver&oacute;nica Forqu&eacute;
1769	James Andronica
1770	Cuauhtemoc Rivas
1771	Anna Magnani
1772	Ettore Garofolo
1773	Franco Citti
1774	Michael Imperioli
1775	Joyce Phillips
1776	Asia Argento
\.


--
-- Name: actors_idactor_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('actors_idactor_seq', 1776, true);


--
-- Data for Name: actorsfilm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY actorsfilm (idfilm, idactor) FROM stdin;
2	16
2	17
2	18
3	19
3	20
3	21
4	22
4	23
4	24
5	25
5	26
5	27
6	28
6	29
6	30
7	31
7	32
7	33
8	34
8	35
8	36
9	37
9	38
9	39
10	40
10	41
10	42
11	43
11	33
11	44
13	45
13	46
13	47
15	48
15	49
15	50
16	51
16	52
16	53
17	54
17	55
17	56
19	57
19	58
19	59
20	60
20	61
20	62
21	63
21	64
21	65
22	66
22	67
22	68
23	69
23	70
23	71
27	72
27	73
27	74
28	75
28	76
28	77
29	78
29	79
29	80
30	81
30	82
30	83
31	22
31	84
31	85
32	86
32	87
32	88
33	89
33	90
33	91
35	92
35	93
35	94
36	95
36	96
36	97
1	75
1	98
1	99
37	100
37	101
37	102
39	103
39	104
39	56
41	105
41	106
41	107
43	108
43	109
43	110
46	111
46	112
46	113
47	114
47	115
47	116
48	117
48	118
48	119
49	120
49	121
49	122
50	123
50	124
50	125
51	33
51	126
51	127
53	128
53	56
53	129
54	130
54	23
54	43
55	131
55	132
55	133
56	134
56	135
56	136
57	137
57	138
57	139
58	103
58	140
58	141
62	142
62	143
62	144
65	114
65	145
65	56
66	146
66	147
66	148
67	80
67	149
67	150
69	75
69	151
69	152
70	153
70	154
70	155
73	66
73	70
73	156
75	157
75	158
75	159
76	160
76	38
76	161
78	92
78	162
78	93
80	163
80	164
80	165
82	166
82	167
82	168
83	169
83	170
83	171
87	172
87	173
87	174
88	75
88	121
88	175
89	124
89	176
89	150
90	177
90	178
90	179
92	180
92	181
92	182
93	183
93	184
93	185
94	186
94	187
94	188
95	189
95	190
95	191
96	192
96	193
96	194
97	195
97	196
97	197
99	198
99	199
99	200
100	201
100	202
100	203
101	204
101	205
101	206
103	163
103	207
103	208
105	209
105	210
105	211
106	212
106	213
106	214
107	151
107	43
107	215
108	216
108	217
108	218
109	219
109	220
109	221
110	222
110	223
110	224
112	225
112	226
112	227
118	228
118	76
118	229
119	230
120	109
120	231
120	232
121	72
121	147
121	168
124	233
124	234
124	235
125	134
125	236
125	237
129	238
129	239
129	240
130	241
130	242
130	243
131	244
131	245
131	246
133	247
133	248
133	249
134	250
134	251
134	252
135	253
135	254
135	255
136	256
136	257
136	258
137	259
137	260
137	261
138	262
138	263
138	264
140	265
140	266
140	267
142	268
142	269
142	270
144	31
144	271
144	272
146	273
146	274
146	275
149	276
149	277
149	278
150	279
150	280
150	281
152	45
152	282
152	283
154	284
154	285
154	286
155	287
155	288
155	289
156	54
156	19
156	93
157	163
157	290
157	291
158	292
158	293
158	294
159	108
159	212
159	295
160	160
160	296
160	297
161	298
161	299
161	78
162	300
162	301
162	302
165	303
165	275
165	304
166	303
166	305
166	304
167	306
167	307
167	232
171	308
171	309
171	310
174	124
174	311
174	312
175	313
175	314
175	69
176	25
176	315
176	316
178	301
178	317
178	318
180	319
180	320
180	321
183	25
183	322
183	323
185	324
185	325
185	326
188	327
188	328
188	329
190	169
190	330
190	331
191	332
191	333
191	334
192	69
192	335
192	187
196	190
196	336
196	337
198	338
198	339
198	340
201	341
201	342
201	343
202	344
202	154
202	345
203	346
203	22
203	43
204	265
204	347
204	348
205	349
205	350
205	351
206	352
206	353
206	354
207	275
207	355
207	356
208	357
208	358
208	359
209	360
209	361
209	362
210	124
210	363
210	364
211	110
211	365
211	322
215	195
215	366
215	223
216	367
216	121
216	125
218	69
218	368
218	369
221	370
221	371
221	372
222	373
222	374
222	375
223	376
223	377
223	378
224	379
224	380
224	381
225	382
225	383
225	384
226	31
226	385
226	272
227	386
227	387
227	388
228	386
228	387
228	388
229	386
229	387
229	388
230	386
230	387
230	388
231	389
231	24
231	390
232	262
232	391
232	392
233	393
233	394
233	79
234	395
234	396
234	48
235	397
235	16
235	116
236	167
236	398
236	399
237	298
237	400
237	401
238	402
238	26
238	403
239	404
239	210
239	405
244	406
244	407
244	408
246	409
246	410
246	411
247	412
247	413
247	414
248	415
248	416
248	210
249	177
249	417
249	418
254	192
254	55
254	95
255	419
255	27
255	420
256	421
256	422
256	423
257	79
257	72
257	424
259	425
259	426
259	427
260	428
260	166
260	429
261	430
261	431
261	432
262	433
262	434
262	435
263	436
263	437
263	438
264	46
264	439
264	440
266	441
266	442
266	443
268	409
268	410
268	411
270	337
270	135
270	444
271	445
271	446
271	447
273	160
273	69
273	78
274	124
274	406
274	448
275	170
275	277
275	155
276	402
276	449
276	450
277	451
277	166
277	452
278	180
278	453
278	454
283	455
283	456
283	457
284	195
284	23
284	458
285	459
285	460
285	461
287	462
287	145
287	282
288	463
288	149
288	464
289	465
289	313
289	89
290	285
290	466
290	467
291	346
291	22
291	468
292	469
292	470
292	471
293	160
293	114
293	93
294	80
294	472
294	473
297	101
297	474
297	475
298	134
298	402
298	476
299	428
299	19
299	477
300	124
300	132
300	382
301	467
301	478
301	479
302	44
302	480
302	481
303	101
303	474
303	475
304	383
304	482
304	483
312	415
312	44
312	484
315	40
315	485
315	486
317	487
317	488
317	489
318	490
318	103
318	173
319	45
319	306
319	419
320	491
320	492
320	493
322	494
322	495
322	496
323	16
323	193
323	497
324	147
324	181
324	498
325	143
325	26
325	112
326	109
326	499
326	500
327	501
327	54
327	223
328	66
328	419
328	373
329	389
329	502
329	503
332	43
332	504
332	229
334	38
334	505
334	368
335	506
335	507
335	508
336	509
336	510
336	511
338	512
338	513
338	514
339	134
339	130
339	515
340	516
340	517
340	231
341	143
341	236
341	518
343	25
343	519
343	309
348	389
348	502
348	503
350	84
350	520
350	110
355	130
355	212
355	136
357	397
357	521
357	522
361	523
361	524
361	525
362	210
362	520
362	526
363	527
363	528
363	529
364	80
364	530
364	531
365	532
365	533
365	534
366	390
366	295
366	535
367	536
367	537
367	538
368	539
368	540
368	385
369	541
369	542
369	543
370	419
370	544
370	545
372	546
372	547
372	548
373	501
373	232
373	549
374	550
374	551
374	552
375	553
375	554
375	239
378	555
378	556
378	557
380	373
380	386
380	558
381	559
381	560
381	561
384	562
384	563
384	564
385	192
385	466
385	565
386	566
386	567
386	347
388	568
388	569
388	570
390	571
390	572
390	573
391	192
391	332
391	574
393	190
393	266
393	16
394	575
394	453
394	576
395	229
395	577
395	578
396	579
396	580
396	581
397	31
397	116
397	582
398	583
398	584
398	182
402	287
402	109
402	585
403	389
403	397
403	586
404	587
404	588
404	589
405	298
405	469
405	305
406	172
406	590
406	591
407	562
407	592
407	593
409	190
409	495
409	594
410	128
410	595
410	344
414	596
414	597
414	598
416	599
416	600
416	601
418	602
418	603
418	604
419	605
419	606
419	269
420	607
420	608
420	609
423	610
423	96
423	611
425	120
425	612
425	271
427	613
427	614
427	615
428	616
428	617
428	618
430	619
430	620
430	621
431	622
431	363
431	623
434	624
434	625
434	562
435	626
435	404
435	627
438	628
438	629
438	630
440	631
440	632
440	633
446	634
446	635
446	636
447	637
447	638
447	639
449	386
449	387
449	388
450	386
450	387
450	388
451	134
451	640
451	215
452	395
452	641
452	642
453	643
453	644
453	645
454	241
454	646
454	49
456	541
456	592
456	647
457	92
457	648
457	649
458	126
458	476
458	528
459	650
459	366
459	651
461	54
461	652
461	612
462	653
462	654
462	655
464	656
464	657
464	658
468	659
468	281
468	576
469	154
469	517
469	120
470	142
470	78
470	660
471	84
471	121
471	392
473	661
473	662
473	488
475	663
475	664
475	665
477	24
477	666
477	667
479	256
479	668
479	669
480	670
480	671
480	672
482	673
482	674
482	296
483	675
483	676
483	677
485	244
485	678
485	679
486	675
486	244
486	680
487	613
487	244
487	681
489	670
489	676
489	258
490	670
490	682
490	683
492	684
492	685
492	686
494	670
494	687
494	688
496	256
496	689
496	690
497	300
497	670
497	691
499	692
499	626
499	693
500	383
500	482
500	483
501	694
501	695
501	696
502	45
502	697
502	698
504	699
504	700
504	701
505	702
505	682
505	703
506	684
506	704
506	705
510	706
510	707
510	708
511	596
511	709
511	710
514	45
514	282
514	628
516	711
516	712
516	713
517	45
517	282
517	714
518	715
518	716
518	140
522	717
522	718
522	719
523	626
523	564
523	720
526	721
526	722
526	723
527	173
527	724
527	725
529	726
529	727
529	728
531	729
531	730
531	731
534	76
534	516
534	732
535	121
535	733
535	734
536	735
536	736
536	737
537	738
537	171
537	739
538	121
538	415
538	347
540	494
540	128
540	505
541	622
541	647
541	740
542	66
542	741
542	742
545	568
545	104
545	743
546	134
546	180
546	744
549	490
549	369
549	323
550	31
550	745
550	136
551	746
551	747
551	748
552	749
552	93
552	173
554	195
554	750
554	182
555	134
555	243
555	751
556	752
556	753
556	323
558	754
558	277
558	755
564	756
564	757
564	758
565	759
565	760
565	761
566	124
566	291
566	762
569	397
569	390
569	143
570	195
570	643
570	22
571	48
571	262
571	763
572	752
572	79
572	764
573	765
573	766
573	767
574	450
574	768
574	76
575	367
575	769
575	188
576	501
576	770
576	771
577	210
577	772
577	773
578	501
578	494
578	146
579	232
579	768
579	774
581	33
581	56
581	775
583	132
583	776
583	777
585	539
585	778
585	779
586	163
586	780
586	781
588	782
588	783
588	784
590	785
590	786
590	787
591	788
591	789
591	790
593	791
593	792
593	793
594	794
594	795
594	796
597	192
597	477
597	797
601	798
601	676
601	799
603	256
603	682
603	800
604	247
604	801
604	802
605	803
605	804
605	805
606	806
606	807
606	808
607	809
607	810
607	808
608	676
608	613
608	811
609	812
609	813
609	692
610	814
610	815
610	816
611	817
611	818
611	819
612	820
612	821
612	822
613	823
613	824
613	825
614	692
614	826
614	684
616	827
616	828
616	829
618	680
618	668
618	830
619	153
619	22
619	116
622	514
622	599
622	831
623	222
623	832
623	833
627	195
627	43
627	834
628	69
628	77
628	33
632	462
632	467
632	513
634	61
634	835
636	142
636	836
636	837
641	838
641	839
641	840
645	841
645	842
645	843
647	844
647	845
647	846
649	69
649	847
649	848
651	733
651	84
651	229
653	721
653	250
653	325
654	397
654	700
654	849
655	850
655	738
655	851
656	852
656	853
656	854
658	180
658	744
658	855
659	670
659	856
659	685
661	798
661	682
661	249
662	759
662	857
662	858
663	859
663	860
663	861
664	862
664	780
664	863
667	126
667	864
667	283
669	865
669	866
669	867
670	765
670	766
670	767
671	868
671	869
671	870
672	871
672	872
672	873
673	613
673	874
673	875
674	780
674	558
674	876
675	877
675	878
675	879
677	880
677	881
677	882
678	79
678	883
678	884
680	441
680	442
680	443
681	885
681	886
681	887
682	888
682	889
682	883
684	346
684	544
684	23
685	142
685	890
685	393
687	565
687	863
687	837
690	33
690	452
690	891
693	69
693	212
693	187
695	892
695	893
695	894
696	160
696	415
696	895
699	37
699	519
699	896
700	116
700	897
700	89
702	898
702	899
702	900
703	901
703	897
703	902
705	903
705	904
705	905
706	714
706	906
706	907
707	908
707	901
707	242
709	909
709	910
709	561
710	415
710	911
710	912
712	48
712	24
712	913
713	428
713	169
713	524
714	170
714	313
714	914
715	915
715	916
715	917
716	26
716	500
716	451
718	918
718	919
718	920
720	363
720	788
720	406
721	921
721	922
721	923
722	153
722	517
722	565
723	585
723	924
723	96
724	95
724	416
724	925
725	483
725	210
725	763
726	327
726	178
726	136
727	132
727	926
727	927
728	192
728	24
728	170
729	70
729	490
729	902
731	223
731	585
731	928
732	467
732	25
732	929
733	930
733	931
733	932
734	585
734	933
734	72
735	75
735	84
735	934
736	126
736	935
736	936
738	937
738	938
738	540
739	788
739	419
739	939
740	652
740	940
740	482
742	66
742	152
742	23
744	490
744	127
744	419
746	78
746	941
746	942
747	114
747	453
747	127
754	788
754	943
754	944
755	190
755	896
755	945
756	209
756	282
756	946
758	947
758	948
758	949
759	950
759	951
759	952
760	953
760	954
760	955
761	114
761	956
761	957
762	916
762	510
762	958
763	105
763	959
763	960
764	116
764	961
764	962
765	568
765	963
765	890
766	964
766	965
766	966
768	147
768	967
768	335
769	789
769	63
769	968
770	84
770	129
770	969
771	171
771	970
771	447
772	971
772	972
772	973
773	974
773	975
773	976
775	419
775	643
775	321
776	287
776	834
776	977
779	494
779	394
779	978
780	80
780	383
780	979
781	121
781	467
781	510
782	19
782	194
782	980
783	981
783	468
783	982
785	274
785	451
785	945
787	983
787	984
787	517
790	541
790	542
790	985
792	415
792	986
792	238
793	987
793	988
793	989
794	402
794	895
794	990
796	389
796	991
796	759
797	527
797	992
797	993
798	753
798	428
798	929
802	527
802	534
802	978
803	994
803	79
803	995
804	187
804	180
804	51
805	45
805	282
805	996
806	997
806	998
806	999
807	1000
807	1001
807	1002
809	363
809	494
809	54
812	928
812	1003
812	1004
815	390
815	55
815	1005
816	873
816	1006
816	1007
817	1008
817	1009
817	1010
818	1011
818	1012
818	1013
819	585
819	929
819	582
820	1014
820	1015
820	1011
821	860
821	581
821	425
823	368
823	981
823	1016
827	501
827	1017
827	499
828	1018
828	1019
828	1020
829	428
829	540
829	1021
831	142
831	203
831	1022
832	585
832	275
832	1023
833	1024
833	105
833	797
834	1025
834	1026
834	1027
836	1028
836	861
836	1029
837	798
837	1030
837	1031
842	1032
842	1033
842	1034
844	1035
844	391
844	1036
845	75
845	796
845	1037
846	148
846	390
846	1038
847	160
847	297
847	44
848	1039
848	1040
848	1041
849	298
849	915
849	321
853	1042
853	1043
853	1044
854	1045
854	1046
854	1047
855	1048
855	1049
855	1050
856	519
856	273
856	1051
859	1052
859	1053
859	1054
862	192
862	1055
862	211
864	296
864	156
864	210
866	134
866	154
866	652
869	1056
869	90
869	569
870	895
870	956
870	1057
871	1058
871	1059
871	595
872	998
872	1060
872	1012
873	1061
873	1062
873	77
874	372
874	1063
874	1064
875	38
875	151
875	134
876	163
876	1065
876	1066
877	536
877	1067
877	956
878	967
878	1068
878	1069
880	477
880	1070
880	1060
881	163
881	1065
881	1066
882	241
882	716
882	1071
883	77
883	485
883	1072
884	1073
884	1074
884	1075
885	596
885	1076
885	1077
887	136
887	1078
887	1079
888	494
888	780
888	554
890	647
890	1080
890	1081
912	79
912	494
912	451
913	323
913	1082
913	1083
914	77
914	916
914	463
915	134
915	170
915	1084
916	132
916	652
916	1085
917	31
917	1086
917	297
918	402
918	121
918	1087
920	160
920	834
920	1088
922	114
922	1089
922	1090
924	752
924	1091
924	1092
925	223
925	424
925	611
926	1093
926	979
926	549
929	1094
929	763
929	1095
930	171
930	43
930	1096
932	1055
932	1097
932	1098
935	382
935	202
935	1099
936	488
936	1100
936	663
939	180
939	77
939	132
940	425
940	203
940	105
941	187
941	425
941	980
942	104
942	428
942	1101
944	24
944	1102
944	1081
945	670
945	244
945	122
948	1103
948	1104
948	1070
949	519
949	1105
949	500
950	241
950	1106
950	1107
952	54
952	1108
952	265
953	154
953	140
953	1109
954	1110
954	1111
954	1112
955	337
955	1113
955	1114
956	626
956	31
956	1115
958	1116
958	28
958	1117
959	1118
959	1119
959	1120
960	452
960	1121
960	372
962	504
962	1122
962	1123
965	244
965	1124
965	1125
967	1126
967	1127
967	1128
969	1129
969	694
969	1130
970	576
970	1131
970	1132
971	1133
971	1134
971	1135
972	196
972	987
972	104
974	266
974	391
974	468
975	516
975	1035
975	1136
976	1137
976	1138
976	1139
978	297
978	751
978	453
980	368
980	1140
980	1141
981	1142
981	417
981	1143
982	527
982	749
982	1144
984	163
984	110
984	193
986	223
986	979
986	1145
989	746
989	1146
989	1147
990	67
990	17
990	908
992	54
992	420
992	1148
993	1149
993	1150
993	847
995	1151
995	1152
995	1153
997	1154
997	1155
997	329
998	345
998	1156
998	1157
999	1158
999	165
999	366
1000	225
1000	400
1000	1059
1003	967
1003	1068
1003	1069
1004	523
1004	22
1004	321
1006	652
1006	1159
1006	1160
1007	362
1007	1161
1007	1162
1008	1163
1008	1164
1008	1165
1009	745
1009	796
1009	1166
1010	1167
1010	1168
1010	1067
1011	1169
1011	383
1011	1170
1012	1171
1012	1172
1012	1173
1013	469
1013	505
1013	893
1217	501
1217	89
1217	517
1014	46
1014	1174
1014	1175
1016	402
1016	415
1016	544
1017	203
1017	1176
1017	1177
1020	1178
1020	676
1020	251
1022	1179
1022	1180
1022	1181
1023	190
1023	367
1023	1182
1025	393
1025	1183
1025	1184
1028	122
1028	296
1028	1185
1029	539
1029	442
1029	260
1031	1186
1031	1187
1031	569
1032	1188
1032	1189
1032	1190
1033	265
1033	266
1033	1191
1035	205
1035	1192
1035	1068
1036	1193
1036	1194
1036	864
1037	390
1037	1195
1037	1196
1038	222
1038	643
1038	1197
1039	169
1039	1198
1039	330
1041	367
1041	935
1041	172
1042	363
1042	428
1042	1199
1045	752
1045	927
1045	990
1046	297
1046	915
1046	147
1047	389
1047	154
1047	1200
1048	1201
1048	1061
1048	1202
1052	562
1052	1203
1052	513
1053	967
1053	109
1053	763
1054	1204
1054	147
1054	478
1064	1205
1064	874
1064	1206
1066	77
1066	583
1066	895
1067	1207
1067	1208
1067	1209
1069	1210
1069	1211
1069	100
1070	203
1070	1212
1070	27
1073	1213
1073	276
1073	663
1074	519
1074	337
1074	1175
1077	1214
1077	401
1077	1215
1078	1216
1078	1217
1078	1218
1079	1219
1079	1220
1079	1221
1081	950
1081	1222
1081	785
1082	1223
1082	1224
1082	1225
1083	916
1083	700
1083	152
1084	169
1084	382
1084	1226
1085	182
1085	639
1085	1227
1088	527
1088	1228
1088	1229
1089	146
1089	523
1089	291
1090	212
1090	950
1090	290
1091	1230
1091	1231
1091	1232
1092	448
1092	1233
1092	1234
1093	483
1093	1235
1093	1236
1095	1237
1095	442
1095	521
1096	127
1096	149
1096	179
1099	1238
1099	1239
1099	1240
1100	1241
1100	1225
1101	72
1101	215
1101	110
1103	1242
1103	1211
1103	1243
1104	1244
1104	1245
1104	1246
1107	181
1107	1247
1107	202
1108	1248
1108	1249
1108	1250
1109	25
1109	173
1109	1251
1110	162
1110	1252
1110	1253
1111	1254
1111	1255
1111	1256
1112	79
1112	1257
1112	1258
1113	241
1113	1259
1113	733
1114	1260
1114	214
1114	1261
1117	126
1117	1262
1117	517
1118	1218
1118	1263
1118	720
1119	893
1119	453
1119	348
1120	122
1120	1264
1120	639
1122	1265
1122	258
1122	1266
1131	517
1131	872
1131	1267
1132	171
1132	329
1132	420
1133	681
1133	702
1133	1025
1134	1264
1134	1268
1134	1087
1136	297
1136	847
1136	585
1137	1269
1137	1270
1137	1271
1139	665
1139	511
1139	1272
1142	1273
1142	1274
1142	1275
1145	368
1145	196
1145	378
1146	1082
1146	1276
1146	1219
1147	1277
1147	1278
1147	1279
1148	291
1148	242
1148	1280
1149	1281
1149	1282
1149	1283
1150	212
1150	141
1150	595
1151	1284
1151	1285
1151	1286
1152	146
1152	95
1152	1287
1159	1288
1159	1289
1159	1290
1160	939
1160	1291
1160	1292
1162	1293
1162	1294
1162	1295
1164	1296
1164	429
1164	1297
1165	1298
1165	565
1165	1299
1166	1300
1166	1301
1166	1302
1168	171
1168	895
1168	1303
1169	1304
1169	612
1169	136
1170	1305
1170	1306
1170	1307
1173	1148
1173	1308
1173	1140
1174	1279
1174	1309
1174	1310
1175	1311
1175	1177
1175	558
1177	939
1177	700
1177	1312
1179	1058
1179	1313
1179	1314
1180	368
1180	419
1180	1315
1182	1058
1182	769
1182	986
1185	539
1185	162
1185	1316
1188	262
1188	391
1188	392
1189	1317
1189	328
1189	1318
1190	1319
1190	582
1190	1320
1194	1321
1194	1322
1194	1323
1195	1324
1195	1325
1195	1326
1198	1327
1198	1328
1198	1329
1199	1330
1199	1331
1199	1332
1200	1333
1200	863
1200	1334
1203	1124
1203	1335
1203	822
1204	824
1204	1336
1204	1337
1206	402
1206	136
1206	1338
1207	1339
1207	424
1207	214
1208	1339
1208	136
1208	402
1209	209
1209	358
1209	1340
1210	84
1210	480
1210	751
1211	369
1211	79
1211	528
1212	643
1212	121
1212	797
1213	1341
1213	458
1213	1342
1215	1343
1215	1344
1215	1345
1216	1346
1216	1347
1216	1348
1218	1142
1218	1065
1218	1060
1220	1349
1220	1350
1220	1351
1221	121
1221	502
1221	1105
1222	262
1222	400
1222	224
1223	1272
1223	926
1223	1352
1225	1353
1225	349
1225	1084
1228	393
1228	1354
1228	1355
1230	1356
1230	419
1230	1357
1231	393
1231	1358
1231	1359
1232	465
1232	1360
1232	1361
1233	1362
1233	1363
1233	1364
1234	1365
1234	1366
1234	1367
1239	991
1239	327
1239	929
1244	568
1244	1351
1244	1368
1245	1001
1245	19
1245	1369
1248	32
1248	127
1248	1081
1249	265
1249	765
1249	1370
1250	1371
1250	959
1250	239
1254	187
1254	222
1254	1372
1255	1373
1255	1374
1255	1375
1258	1109
1258	383
1258	1037
1260	145
1260	452
1260	1376
1262	1212
1262	883
1262	1377
1263	1378
1263	511
1263	1379
1265	1380
1265	1381
1265	1382
1267	54
1267	140
1267	988
1269	798
1269	244
1269	815
1270	265
1270	1383
1270	1384
1271	226
1271	31
1271	939
1273	31
1273	1385
1273	1386
1276	666
1276	1387
1276	1176
1277	1388
1277	1389
1277	1070
1278	505
1278	1279
1278	1390
1279	1314
1279	1391
1279	1392
1280	1393
1280	1001
1280	1394
1281	1395
1281	1396
1281	399
1283	296
1283	122
1283	1397
1284	462
1284	490
1284	194
1285	1193
1285	42
1285	1398
1287	1085
1287	1399
1287	1400
1288	1401
1288	1402
1288	1403
1290	166
1290	457
1290	1404
1291	1024
1291	188
1291	210
1294	1405
1294	1406
1294	1407
1295	1408
1295	424
1295	1351
1296	1409
1296	1410
1296	1411
1297	699
1297	41
1297	300
1299	670
1299	1412
1299	1413
1300	750
1300	557
1300	1414
1301	344
1301	205
1301	1415
1302	1416
1302	1417
1302	1418
1308	1419
1308	1420
1308	1421
1311	1422
1311	104
1311	1423
1313	128
1313	449
1313	239
1314	176
1314	1252
1314	1268
1315	796
1315	1016
1315	917
1320	1424
1320	1425
1320	1140
1322	1426
1322	1427
1322	1428
1324	1429
1324	1430
1324	1431
1325	126
1325	1432
1325	1433
1326	519
1326	1434
1326	1435
1327	406
1327	19
1327	1436
1328	89
1328	1016
1328	1437
1330	61
1330	1438
1330	1439
1332	1440
1332	1441
1332	1442
1333	1443
1333	1444
1333	1445
1335	130
1335	1446
1335	1304
1336	436
1336	94
1336	1447
1337	344
1337	1120
1337	996
1338	1448
1338	1449
1338	1450
1339	1451
1339	1452
1339	1453
1341	1454
1341	1455
1341	1456
1343	1457
1343	1458
1343	1459
1348	1460
1348	1461
1348	1462
1349	1463
1349	1464
1349	1465
1350	1466
1350	1467
1350	1468
1351	1469
1351	288
1351	63
1353	1470
1353	1471
1354	1472
1354	1473
1354	1474
1355	733
1355	181
1355	1475
1356	1476
1356	1477
1356	1478
1362	1479
1362	1480
1362	1092
1366	1481
1366	1482
1366	1483
1367	1484
1367	1485
1367	1486
1368	1376
1368	1487
1368	1488
1370	1489
1370	1490
1370	1491
1374	365
1374	1492
1374	390
1376	1493
1376	1494
1376	911
1377	1495
1377	1496
1377	1497
1378	1498
1378	1499
1378	1500
1379	1501
1379	1502
1379	1503
1380	1504
1380	1211
1380	1505
1385	131
1385	1506
1385	1507
1386	1508
1386	1509
1386	1510
1387	961
1387	20
1387	1511
1388	1512
1388	1513
1388	1514
1391	1515
1391	1516
1391	1517
1393	1518
1393	1137
1393	1519
1394	1096
1394	356
1394	40
1396	1520
1396	1521
1396	1522
1397	806
1397	1523
1397	1524
1401	745
1401	1525
1401	1526
1408	1527
1408	1528
1408	1529
1411	302
1411	1530
1411	1531
1413	527
1413	567
1413	1532
1414	1082
1414	1533
1414	712
1416	223
1416	534
1416	1251
1419	622
1419	1137
1419	1534
1421	1535
1421	1536
1421	1537
1422	1538
1422	1539
1422	1540
1424	1541
1424	1390
1424	1542
1425	368
1425	1543
1425	1544
1426	1545
1426	140
1426	1546
1427	577
1427	1547
1427	1548
1429	455
1429	1549
1429	1550
1436	788
1436	776
1436	500
1437	1551
1437	1552
1437	1553
1439	743
1439	1388
1439	1036
1440	1554
1440	1001
1440	1192
1441	556
1441	585
1441	579
1443	1555
1443	540
1443	1556
1444	1033
1444	1069
1444	1557
1445	1558
1445	1559
1445	1560
1447	1561
1447	1562
1447	242
1448	81
1448	304
1448	1563
1449	1564
1449	1565
1449	1566
1450	702
1450	1567
1450	1568
1451	1569
1451	1570
1451	1571
1452	1030
1452	1572
1452	1573
1453	1574
1453	807
1453	258
1454	1575
1454	1576
1454	1577
1457	1578
1457	1579
1457	1580
1459	1581
1459	1582
1459	1583
1460	1584
1460	1585
1460	1586
1461	1587
1461	1588
1461	1589
1465	1419
1465	1590
1465	1591
1466	1592
1466	774
1466	1593
1469	1314
1469	485
1469	1594
1471	168
1471	1595
1471	536
1474	1155
1474	1596
1474	1597
1475	1598
1475	1599
1475	1600
1476	1601
1476	1040
1476	1602
1477	663
1477	368
1477	181
1478	998
1478	1603
1478	1065
1480	1604
1480	1605
1480	1606
1481	1607
1481	1035
1481	1608
1486	1609
1486	1610
1486	1338
1487	135
1487	1611
1487	1612
1488	1613
1488	275
1488	1614
1489	290
1489	1609
1489	1610
1490	1615
1490	1616
1490	1617
1492	1618
1492	1619
1492	1620
1496	565
1496	1621
1496	666
1499	1622
1499	1623
1499	1624
1503	967
1503	1625
1503	1626
1505	847
1505	336
1505	1627
1506	305
1506	1628
1506	1144
1509	186
1509	933
1509	49
1510	753
1510	715
1510	48
1511	1629
1511	166
1511	332
1512	1630
1512	1631
1512	1632
1513	1633
1513	573
1513	1634
1515	1148
1515	848
1515	333
1517	890
1517	1393
1517	1635
1518	369
1518	890
1518	1636
1519	1637
1519	1638
1519	1639
1521	916
1521	1640
1521	924
1522	1641
1522	232
1522	715
1524	1642
1524	1643
1524	1644
1526	124
1526	299
1526	1434
1528	1645
1528	1646
1528	1647
1529	1648
1529	1649
1529	1650
1530	368
1530	457
1530	455
1532	963
1532	1651
1532	1652
1534	1653
1534	1654
1534	1655
1537	1656
1537	1657
1537	559
1538	1658
1538	1659
1538	1660
1543	464
1543	1434
1543	1661
1544	760
1544	1296
1544	1662
1545	916
1545	338
1545	715
1550	557
1550	178
1550	1663
1554	37
1554	1664
1554	1665
1556	739
1556	1666
1556	1667
1558	1668
1558	1564
1558	1565
1560	1624
1560	1210
1560	1669
1561	1670
1561	1074
1564	1671
1564	1672
1564	1673
1565	58
1565	1674
1565	1675
1567	1676
1567	1677
1567	1678
1571	1679
1571	1680
1571	1681
1574	233
1574	1682
1574	1183
1576	1683
1576	1684
1576	1685
1582	1601
1582	1686
1582	1687
1585	1688
1585	1689
1585	1690
1587	1691
1587	1129
1587	1692
1588	1693
1588	1694
1588	1695
1594	490
1594	1696
1594	1697
1595	1698
1595	444
1595	1699
1597	480
1597	1700
1597	1701
1598	54
1598	1607
1598	510
1599	1702
1599	1648
1599	1703
1603	1704
1603	1705
1603	1706
1604	1707
1604	1708
1604	1709
1605	1710
1605	1711
1605	1712
1608	23
1608	1713
1608	1714
1610	391
1610	1715
1610	1716
1611	1717
1611	1718
1611	1719
1613	1720
1613	1509
1613	1721
1615	1722
1615	1723
1615	1724
1616	1725
1616	280
1616	1726
1617	1311
1617	1177
1617	558
1618	956
1618	1339
1618	428
1619	1727
1619	1728
1619	727
1621	1729
1621	1730
1621	1731
1622	1732
1622	1347
1622	1733
1624	369
1624	455
1624	1734
1625	663
1625	368
1625	181
1626	1735
1626	1736
1626	1737
1628	1738
1628	1739
1628	1740
1629	1741
1629	1742
1629	1743
1631	1744
1631	371
1631	1745
1636	1746
1636	1747
1636	1748
1637	1163
1637	1749
1637	1750
1638	504
1638	1555
1638	1751
1642	518
1642	1752
1642	1753
1644	1242
1644	1754
1644	578
1647	1755
1647	1756
1647	1757
1648	1758
1648	610
1648	1759
1653	980
1653	319
1653	1760
1654	1365
1654	1366
1654	1367
1662	895
1662	480
1662	42
1663	1505
1663	1550
1663	1761
1664	187
1664	1762
1664	1350
1666	1763
1666	1764
1666	1765
1668	1545
1668	1766
1668	1767
1672	611
1672	1768
1672	51
1673	1769
1673	1770
1673	1279
1674	1771
1674	1772
1674	1773
1677	1774
1677	46
1677	1775
1679	1776
1679	1164
1679	1330
1680	455
1680	1549
1680	1550
1681	73
\.


--
-- Data for Name: amizade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY amizade (am_codigo, am_usuario, am_amigo, am_confianca, am_data) FROM stdin;
\.


--
-- Name: amizade_am_codigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('amizade_am_codigo_seq', 1, false);


--
-- Data for Name: directors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY directors (iddirector, name) FROM stdin;
11	Martin Campbell
12	Allison Anders
13	Barry Sonnenfeld
14	Jon Amiel
15	Yimou Zhang
16	Terry Gilliam
17	Chris Noonan
18	Tim Robbins
19	Richard Loncraine
20	David Fincher
21	Woody Allen
22	Stephen Herek
23	Josiane Balasko
24	Robert Rodriguez
25	Marleen Gorris
26	Philip Haas
27	Brian Henson
28	Mel Gibson
29	Martin Scorsese
30	Michael Bay
31	Ron Howard
32	Joel Schumacher
33	Luis Bu&ntilde;uel
34	Tony Scott
35	Terry Zwigoff
36	Dwight H. Little
37	Antonia Bird
38	John Lasseter
39	Michael Almereyda
40	Kathryn Bigelow
41	Tamra Davis
42	Barry Levinson
43	Atom Egoyan
44	Tim Burton
45	Steve James
46	Fred Schepisi
47	George Lucas
48	Edward Zwick
49	Oliver Stone
50	Wolfgang Petersen
51	Luc Besson
52	Quentin Tarantino
53	Robert Redford
54	Roland Emmerich
55	Lasse Hallstr&ouml;m
56	Jon Turteltaub
57	Tom Shadyac
58	Robert Zemeckis
59	Mike Newell
60	Richard Donner
61	Jefri Aalmuhammed
62	Brian De Palma
63	Simon Wincer
64	Jim Abrahams
65	Steven Spielberg
66	Kenneth Branagh
67	Steven Zaillian
68	Nora Ephron
69	Ridley Scott
70	Thomas Schlamme
71	Todd Solondz
72	Chris Columbus
73	Ron Clements
74	James Cameron
75	Kevin Costner
76	William Cottrell
77	Joel Coen
78	Gerald Potterton
79	Larry Leker
80	Jonathan Lynn
81	Jeremiah S. Chechik
82	Pen Densham
83	Kelly Makin
84	Jim Mallon
85	Alan Shapiro
86	Jan de Bont
87	Freida Lee Mock
88	Andrew Bergman
89	John Sayles
90	Andy Wachowski
91	Robert Altman
92	Blake Edwards
93	Victor Fleming
94	Orson Welles
95	Stanley Kubrick
96	Frank Capra
97	Campbell Scott
98	Robert Lieberman
99	Duwayne Dunham
100	Robert Stevenson
101	John McTiernan
102	Nick Cassavetes
103	Michael Winterbottom
104	Doug Liman
105	Terry Jones
106	Emile Ardolino
107	Ted Kotcheff
108	Paul Verhoeven
109	James Foley
110	Mark Rydell
111	Claude Berri
112	Howard Zieff
113	Marc Caro
114	Sidney Lumet
115	Francis Ford Coppola
116	Alfred Hitchcock
117	Milos Forman
118	Peter Weir
119	Sam Raimi
120	Harold Ramis
121	Clint Eastwood
122	Franklin J. Schaffner
123	Katsuhiro &Ocirc;tomo
124	Jean-Paul Rappeneau
125	Mel Brooks
126	Rob Reiner
127	Phil Alden Robinson
128	Lars von Trier
129	Jonathan Frakes
130	Billy Bob Thornton
131	Patrice Leconte
132	Renny Harlin
133	Nicholas Meyer
134	Leonard Nimoy
135	Christopher Cain
136	Andrew Davis
137	Alexander Payne
138	Cameron Crowe
139	Bille August
140	Kevin Smith
141	Shuki Levy
142	George Armitage
143	Jay Roach
144	P.J. Hogan
145	C&eacute;dric Klapisch
146	Sam Weisman
147	Paul W.S. Anderson
148	Charles Martin Smith
149	Neil LaBute
150	Kenneth Johnson
151	Guillermo del Toro
152	John Nicolella
153	Andrew Niccol
154	Michael Mann
155	Sydney Pollack
156	Ang Lee
157	Mike Figgis
158	Michael Hoffman
159	Michael Goldenberg
160	Douglas McGrath
161	Ron Shelton
162	Mike Leigh
163	Jerry Zaks
164	Wes Craven
165	Alan Parker
166	John Singleton
167	Victor Nunez
168	John Woo
169	Bill Duke
170	Frank Oz
171	Curtis Hanson
172	Carroll Ballard
173	Bryan Singer
174	Jim Sheridan
175	Joe Berlinger
176	Roger Donaldson
177	David Lynch
178	David Cronenberg
179	James Mangold
180	Barbet Schroeder
181	Gary Fleder
182	Lionel C. Martin
183	Andy Wilson
184	Mel Smith
185	Costa-Gavras
186	Paul Thomas Anderson
187	Jean-Pierre Jeunet
188	Gregory Hoblit
189	John Badham
190	John Landis
191	Peter Hyams
192	Steve Oedekerk
193	Victor Salva
194	John N. Smith
195	Amy Heckerling
196	Jason Bloom
197	Penelope Spheeris
198	Stephen Frears
199	Christopher Ashley
200	Danny Cannon
201	Bryan Spicer
202	Les Mayfield
203	David Carson
204	Peter Segal
205	Rusty Cundieff
206	John Waters
207	Rowdy Herrington
208	Annabel Jankel
209	Jerry Zucker
210	Norman Ferguson
211	Tom Holland
212	Rick Friedberg
213	Bobby Farrelly
214	Richard Benjamin
215	Clyde Geronimi
216	Robert Mulligan
217	Hal Ashby
218	Leo McCarey
219	Russell Mulcahy
220	Fred M. Wilcox
221	George Roy Hill
222	Richard Fleischer
223	Damiano Damiani
224	Dan Curtis
225	Robert Wise
226	William Shatner
227	Randal Kleiser
228	Jeannot Szwarc
229	Joe Alves
230	Anjelica Huston
231	Dennis Dugan
232	Sam Pillsbury
233	Darrell Roodt
234	Wayne Wang
235	Alfonso Arau
236	Louis Malle
237	David Anspaugh
238	George P. Cosmatos
239	Henry Selick
240	Danny Boyle
241	Danny DeVito
242	Billy Wilder
243	Michael Curtiz
244	George Cukor
245	William Wyler
246	Elia Kazan
247	Howard Hawks
248	Richard Brooks
249	Samuel Armstrong
250	Arthur Penn
251	Nicholas Ray
252	Akira Kurosawa
253	David Lean
254	Bill Forsyth
255	Jim Jarmusch
256	Stuart Rosenberg
257	Richard Attenborough
258	Scott Hicks
259	Jack N. Green
260	Griffin Dunne
261	Jacques Doillon
262	Gus Van Sant
263	Don Bluth
264	Joseph Ruben
265	Mike Gabriel
266	Michael Caton-Jones
267	Clive Barker
268	Kevin Reynolds
269	Desmond Nakano
270	Walter Hill
271	Peter Jackson
272	John Carpenter
273	Phillip Noyce
274	Mike Nichols
275	Lawrence Kasdan
276	Stephen Hopkins
277	Abel Ferrara
278	Jennifer Chambers Lynch
279	Paul Weiland
280	Steve Barron
281	Marco Brambilla
282	Carl Reiner
283	Dominic Sena
284	Peter Medak
285	Steve Rash
286	Deran Sarafian
287	Gary Trousdale
288	Kevin Yagher
289	Joseph Vilsmaier
290	Chuck Russell
291	Sam Wood
292	Vincente Minnelli
293	Joseph L. Mankiewicz
294	Otto Preminger
295	Gregory La Cava
296	George Stevens
297	George A. Romero
298	Joshua Logan
299	Michael Apted
300	Ken Annakin
301	William Dear
302	Alan J. Pakula
303	Claude Nuridsany
304	Jennie Livingston
305	Sergio Leone
306	Roman Polanski
307	Fritz Lang
308	Allan Moyle
309	Fred Zinnemann
310	Wim Wenders
311	Eric Red
312	James Whale
313	Bernard Rose
314	J. Lee Thompson
315	Paul Schrader
316	F.W. Murnau
317	Beth Gage
318	Mick Jackson
319	Robert Kurtzman
320	Jim Gillespie
321	Stuart Baird
322	Jean-Jacques Annaud
323	Noah Baumbach
324	Harold Becker
325	Gillian Armstrong
326	David Frankel
327	Whit Stillman
328	John Irvin
329	Stanley Donen
330	Baz Luhrmann
331	Savage Steve Holland
332	Oliver Parker
333	Christopher Hampton
334	Jodie Foster
335	Herbert Ross
336	Pat O&#39;Connor
337	Garry Marshall
338	Carlo Carlei
339	Ivan Reitman
340	Jessie Nelson
341	Rose Troche
342	Jonathan Demme
343	Andrew Fleming
344	Franco Zeffirelli
345	Neil Jordan
346	Martha Coolidge
347	Jon Avnet
348	Joe Johnston
349	Charles Shyer
350	Farhad Mann
351	Andrew Sipes
352	Christian Duguay
353	Ted Demme
354	Eric Schaeffer
355	Reginald Hudlin
356	Dirk Shafer
357	Brad Silberling
358	Frank Marshall
359	Carl Franklin
360	Robert Longo
361	Larry Clark
362	Anthony Waller
363	Peter Farrelly
364	James Gray
365	Norman Jewison
366	Peter Yates
367	Spike Lee
368	Ron Underwood
369	Damian Harris
370	The Hughes Brothers
371	Philip Kaufman
372	George Miller
373	Bill Condon
374	Todd Verow
375	Joe Pytka
376	Lee Tamahori
377	Rob Cohen
378	Fraser Clarke Heston
379	Kevin Hooks
380	Ernest R. Dickerson
381	Joe Chappelle
382	Ernst Lubitsch
383	David Swift
384	Matthew Bright
385	Tom Hanks
386	Michael Pressman
387	Al Pacino
388	Edward Dmytryk
389	Jean-Jacques Beineix
390	Fred Walton
391	Brian Levant
392	Andy Tennant
393	Stephen Kessler
394	Theodore Witcher
395	Glenn Gordon Caron
396	Brett Ratner
397	Bob Spiers
398	George Tillman Jr.
399	Agnieszka Holland
400	Guy Ferland
401	Kasi Lemmons
402	John R. Leonetti
403	Richard Kwietniowski
404	John McNaughton
405	John Dahl
406	David S. Ward
407	Bronwen Hughes
408	David M. Evans
409	Bruce Beresford
410	Mark Herman
411	Marc Rocco
412	Michael Lehmann
413	Alek Keshishian
414	Brian Gibson
415	Penny Marshall
416	Jeff Pollack
417	Jocelyn Moorhouse
418	Ulu Grosbard
419	Paul Auster
420	Diane Keaton
421	Douglas Keeve
422	Richard Linklater
423	Robert Benton
424	John Cromwell
425	Wolfgang Reitherman
426	Peter Chelsom
427	Gabriele Salvatores
428	John Schlesinger
429	Norberto Barba
430	Phil Joanou
431	Keith Gordon
432	Ringo Lam
433	Robert Butler
434	Mark Dindal
435	Jim Wilson
436	Tony Vitale
437	Adam Resnick
438	Christopher Guest
439	Mary Harron
440	Bernardo Bertolucci
441	Julian Schnabel
442	John Herzfeld
443	Betty Thomas
444	Luis Llosa
445	David Mirkin
446	Simon West
447	Steve Buscemi
448	Errol Morris
449	F&eacute;lix Enr&iacute;quez Alcal&aacute;
450	Howard Deutch
451	John Fortenberry
452	Daniel Petrie
453	Andrew Scheinman
454	David R. Ellis
455	Ate de Jong
456	Patricia Birch
457	Jeb Stuart
458	Billy Crystal
459	Arne Glimcher
460	Edward Burns
461	Lesli Linka Glatter
462	Nick Castle
463	Simon Wells
464	Wes Anderson
465	Hal Hartley
466	Tom DiCillo
467	Ben Stiller
468	C.M. Talkington
469	George Scribner
470	John Payson
471	Reb Braddock
472	Susan Streitfeld
473	Kevin Spacey
474	Jon Blair
475	Bruno Barreto
476	Hark Tsui
477	Don Chaffey
478	Julianna Lavin
479	Hart Bochner
480	Daniel Taplitz
481	Ping He
482	Tom Noonan
483	R&eacute;my Belvaux
484	John Boorman
485	Christopher Menaul
486	Rachel Talalay
487	Mina Shum
488	Alan Rudolph
489	Paul Mazursky
490	James Ivory
491	Lou Adler
492	Herb Gardner
493	Busby Berkeley
494	Todd Haynes
495	Steven Baigelman
496	John Hough
497	Hettie Macdonald
498	Iain Softley
499	Leon Gast
500	William Friedkin
501	John Whitesell
502	Gregory Nava
503	Brian Gilbert
504	Nicolas Roeg
505	Larry Cohen
506	Andrey Tarkovskiy
507	Joe Mantello
508	Doug Ellin
509	Steve Miner
510	Denys Arcand
511	Boaz Yakin
512	David O. Russell
513	Lance Young
514	Robert M. Young
515	Robert Downey Sr.
516	Ken Kwapis
517	James Orr
518	Michael Ritchie
519	Daniel Petrie Jr.
520	Geoff Murphy
521	Tom&aacute;s Guti&eacute;rrez Alea
522	Ren&eacute; Cl&eacute;ment
523	Michele Soavi
524	Victor Saville
525	Mark Sandrich
526	E. Max Frye
527	Brett Leonard
528	Tony Richardson
529	Steve Kloves
530	David Hogan
531	Lynne Stopkewich
532	F. Gary Gray
533	Luis Mandoki
534	Steven Soderbergh
535	Patrick Read Johnson
536	Claire Denis
537	Alex Zamm
538	Thomas Carter
539	Vondie Curtis-Hall
540	Phillip Rhee
541	Gregor Nicholas
542	Nicole Holofcener
543	Annette Haywood-Carter
544	Miguel Arteta
545	James Lapine
546	Richard Rush
547	Steve Gomer
548	Jim Kouf
549	Lisa Krueger
550	Michael Austin
551	Bill Couturi&eacute;
552	Hal Salwen
553	Michael Blakemore
554	Tom DeCerchio
555	Michael Paxton
556	Matthew Harrison
557	Nancy Meckler
558	Scott Winant
559	Julia Dyer
560	Victoria Foyt
561	Forest Whitaker
562	Volker Schl&ouml;ndorff
563	Ross Kagan Marks
564	Mathieu Kassovitz
565	Anna Campion
566	Anthony Hopkins
567	Stacy Cochran
568	Angela Pope
569	Betty Kaplan
570	Lucian Pintilie
571	G&eacute;rard Mordillat
572	Mel Chionglo
573	Michael Corrente
574	Paul Michael Glaser
575	Howard Franklin
576	Maurizio Nichetti
577	Paul Turner
578	John Rubino
579	Nicole Garcia
580	Leone Pompucci
581	Junli Zheng
582	Peter Shaner
583	Theo van Gogh
584	Henry Jaglom
585	Matthew Broderick
586	John Walsh
587	Michael Covert
588	Jean-Luc Godard
589	Jan Svankmajer
590	Martine Dugowson
591	Steven Paul
592	Peter Baldwin
593	Craig Rosenberg
594	Peter Spirer
595	Emma-Kate Croghan
596	Shin&#39;ya Tsukamoto
597	Mohsen Makhmalbaf
598	Gavin Wilding
599	Beeban Kidron
600	Nigel Finch
601	Mark Lewis
602	Roger Vadim
603	Steven E. de Souza
604	Wallace Wolodarsky
605	Andrew Morahan
606	Scott McGehee
607	Darnell Martin
608	James L. Brooks
609	Peter Cohn
610	Peter Howitt
611	Eric Meza
612	Doug McHenry
613	John G. Avildsen
614	Ken Loach
615	Stephen Poliakoff
616	Andr&eacute; T&eacute;chin&eacute;
617	Satyajit Ray
618	Mitchell Leisen
619	William A. Wellman
620	Archie Mayo
621	James Edward Grant
622	Joseph Bologna
623	Fr&eacute;d&eacute;ric Mitterrand
624	John F. Sullivan
625	Norman Z. McLeod
626	Mort Ransen
627	Peter Hewitt
628	Alan Jacobs
629	Gurinder Chadha
630	Anthony Mann
631	Ole Bornedal
632	Albert Hughes
633	Jefery Levy
634	Lucas Platt
635	Dennis Hopper
636	R&eacute;my Duchemin
637	Yuri Mamin
638	Arthur Hiller
639	Michel Blanc
640	Kevin James Dobson
641	Tim Metcalfe
642	Claude Sautet
643	Larry Bishop
644	Peter Duncan
645	Charles T. Kanganis
646	Stephen Gyllenhaal
647	Nick Gomez
648	Anthony Minghella
649	Heywood Gould
650	Peter Sehr
651	Gregg Araki
652	Emir Kusturica
653	Eva Sereny
654	Kevin Allen
655	Mark Joffe
656	Alex Sichel
657	Scott Silver
658	Michael Lindsay-Hogg
659	Jack Baran
660	Robert Allan Ackerman
661	Mika Kaurism&auml;ki
662	Bertrand Tavernier
663	Barry Caillier
664	Stijn Coninx
665	Guy Maddin
666	Djibril Diop Mamb&eacute;ty
667	Robby Henson
668	Gyula Gazdag
669	Barbara Kopple
670	Joseph H. Lewis
671	Merzak Allouache
672	David Breashears
673	Geoffrey Wright
674	Goran Paskaljevic
675	Rebecca Miller
676	Alfred L. Werker
677	Shirley Barrett
678	Caroline Thompson
679	Kiefer Sutherland
680	Philip Goodhew
681	Ronny Yu
682	Michael A. Nickles
683	Bo Widerberg
684	Jerry Ciccoritti
685	Jonathan Darby
686	Doris D&ouml;rrie
687	Gianni Amelio
688	Susanne Ofteringer
689	&Aring;ke Sandgren
690	Udayan Prasad
691	Jim McKay
692	Terry George
693	Adrienne Shelly
694	Takeshi Kitano
695	Bob Gosse
696	Michael Ray Rhodes
697	Clare Peploe
698	Thaddeus O&#39;Sullivan
699	Tom Schulman
700	Mo Ogrodnik
701	Dana Lustig
702	Pedro Almod&oacute;var
703	Paul Williams
704	Pier Paolo Pasolini
705	Gary Winick
706	Michael Radford
\.


--
-- Name: directors_iddirector_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('directors_iddirector_seq', 706, true);


--
-- Data for Name: fabricante; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fabricante (fb_codigo, fb_nome, fb_nacionalidade) FROM stdin;
\.


--
-- Name: fabricante_fb_codigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fabricante_fb_codigo_seq', 1, false);


--
-- Data for Name: films; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY films (filmid, title, imdb, unknown, action, adventure, animation, children, comedy, crime, documentary, drama, fantasy, filmnoir, horror, musical, mystery, romance, scifi, thriller, war, western, rating, director, year, sinopse, image) FROM stdin;
1185	In the Army Now	http://us.imdb.com/M/title-exact?In%20the%20Army%20Now%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	4.30000019	519	1994	Two misguided youths join the reserves to make some money for their entrepreneurial dreams. No sooner...	img_1185.jpg
3	Four Rooms	http://us.imdb.com/M/title-exact?Four%20Rooms%20(1995)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6.5	12	1995	Four interlocking tales that take place in a fading hotel on New Year&#x27;s Eve.	img_3.jpg
5	Copycat	http://us.imdb.com/M/title-exact?Copycat%20(1995)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	1	0	0	6.5	14	1995	An agoraphobic psychologist and a female detective must work together to take down a serial killer who copies serial killers from the past.	img_5.jpg
7	Twelve Monkeys	http://us.imdb.com/M/title-exact?Twelve%20Monkeys%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	1	0	0	0	8.10000038	16	1995	In a future world devastated by disease, a convict is sent back in time to gather information about the man-made virus that wiped out most of the human population on the planet.	img_7.jpg
9	Dead Man Walking	http://us.imdb.com/M/title-exact?Dead%20Man%20Walking%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.5999999	18	1995	A nun, while comforting a convicted killer on death row, empathizes with both the killer and his victim&#x27;s families.	img_9.jpg
11	Seven (Se7en)	http://us.imdb.com/M/title-exact?Se7en%20(1995)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	8.69999981	20	1995	Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his modus operandi.	img_11.jpg
15	Mr. Holland's Opus	http://us.imdb.com/M/title-exact?Mr.%20Holland's%20Opus%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	22	1995	A frustrated composer finds fulfillment as a high school music teacher.	img_15.jpg
17	From Dusk Till Dawn	http://us.imdb.com/M/title-exact?From%20Dusk%20Till%20Dawn%20(1996)	0	1	0	0	0	1	1	0	0	0	0	1	0	0	0	0	1	0	0	7.19999981	24	1996	Two criminals and their hostages unknowingly seek temporary refuge in an establishment populated by vampires, with chaotic results.	img_17.jpg
20	Angels and Insects	http://us.imdb.com/M/title-exact?Angels%20and%20Insects%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.80000019	26	1995	In the 1800s a naturalist marries into a family of British aristocrats.	img_20.jpg
21	Muppet Treasure Island	http://us.imdb.com/M/title-exact?Muppet%20Treasure%20Island%20(1996)	0	1	1	0	0	1	0	0	0	0	0	0	1	0	0	0	1	0	0	6.69999981	27	1996	The Muppets&#x27; twist on the classic tale.	img_21.jpg
27	Bad Boys	http://us.imdb.com/M/title-exact?Bad%20Boys%20(1995)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6.69999981	30	1995	Two hip detectives protect a murder witness while investigating a case of stolen heroin.	img_27.jpg
28	Apollo 13	http://us.imdb.com/M/title-exact?Apollo%2013%20(1995)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	7.5	31	1995	Three astronauts must devise a strategy to return to Earth safely after their spacecraft undergoes massive internal damage.	img_28.jpg
30	Belle de jour	http://us.imdb.com/M/title-exact?Belle%20de%20jour%20(1967)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.80000019	33	1967	A frigid young housewife decides to spend her midweek afternoons as a prostitute.	img_30.jpg
32	Crumb	http://us.imdb.com/M/title-exact?Crumb%20(1994)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	7.9000001	35	1994	An intimate portrait of the controversial cartoonist and his traumatized family.	img_32.jpg
33	Desperado	http://us.imdb.com/M/title-exact?Desperado%20(1995)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	7.0999999	24	1995	A gunslinger is embroiled in a war with a local drug runner.	img_33.jpg
36	Mad Love	http://us.imdb.com/M/title-exact?Mad%20Love%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	4.80000019	37	1995	Casey and Matt are high school kids in love. They run away together Casey&#x27;s parents check her into a mental hospital for trying to kll herself...	img_36.jpg
39	Strange Days	http://us.imdb.com/M/title-exact?Strange%20Days%20(1995)	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	7.0999999	40	1995	A former cop turned street-hustler accidentally uncovers a police conspiracy in 1999 Los Angeles.	img_39.jpg
43	Disclosure	http://us.imdb.com/M/title-exact?Disclosure%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	5.9000001	42	1994	A computer specialist is sued for sexual harassment by a former lover turned boss who initiated the act forcefully, which threatens both his career and his personal life.	img_43.jpg
47	Ed Wood	http://us.imdb.com/M/title-exact?Ed%20Wood%20(1994)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	8	44	1994	The mostly true story of the legendary director of awful movies and his strange group of friends and actors.	img_47.jpg
50	Star Wars	http://us.imdb.com/M/title-exact?Star%20Wars%20(1977)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	1	1	0	1	0	8.80000019	47	1977	Luke Skywalker, a spirited farm boy, joins rebel forces to save Princess Leia from the evil Darth Vader, and the galaxy from the Empire&#x27;s planet-destroying Death Star.	img_50.jpg
55	Professional, The	http://us.imdb.com/Title?L%E9on+(1994)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	1	0	1	0	0	8.60000038	51	1994	A professional assassin rescues a teenage girl whose parents were killed in a police raid.	img_55.jpg
57	Priest	http://us.imdb.com/M/title-exact?Priest%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	37	1994	Father Greg Pilkington (Linus Roache) is torn between his call as a conservative Catholic priest and his secret life as a homosexual with a gay lover...	img_57.jpg
62	Stargate	http://us.imdb.com/M/title-exact?Stargate%20(1994)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	6.9000001	54	1994	An interstellar teleportation device, found in Egypt, leads to a planet with humans resembling ancient Egyptians who worship the god Ra.	img_62.jpg
66	While You Were Sleeping	http://us.imdb.com/M/title-exact?While%20You%20Were%20Sleeping%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6.5	56	1995	Ticket collecting romantic pretends to be engaged to an unconscious man but can&#x27;t fool his brother	img_66.jpg
69	Forrest Gump	http://us.imdb.com/M/title-exact?Forrest%20Gump%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	1	0	8.69999981	58	1994	Forrest Gump, while not intelligent, has accidentally been present at many historic moments, but his true love, Jenny, eludes him.	img_69.jpg
73	Maverick	http://us.imdb.com/M/title-exact?Maverick%20(1994)	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	6.9000001	60	1994	Bret Maverick, needing money for a poker tournament, faces various comic mishaps and challenges, including a charming woman thief.	img_73.jpg
76	Carlito's Way	http://us.imdb.com/M/title-exact?Carlito's%20Way%20(1993)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	7.9000001	62	1993	A Puerto-Rican ex-con, just released from prison, pledges to stay away from drugs and violence despite the pressure around him and lead on to a better life outside of NYC.	img_76.jpg
78	Free Willy	http://us.imdb.com/M/title-exact?Free%20Willy%20(1993)	0	0	1	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.5999999	63	1993	When a boy learns that a beloved killer whale is to be killed by the aquarium owners, the boy risks everything to free the whale.	img_78.jpg
82	Jurassic Park	http://us.imdb.com/M/title-exact?Jurassic%20Park%20(1993)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	8	65	1993	During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.	img_82.jpg
87	Searching for Bobby Fischer	http://us.imdb.com/M/title-exact?Searching%20for%20Bobby%20Fischer%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.5	67	1993	A prepubescent chess prodigy refuses to harden himself in order to become a champion like the famous but unlikable Bobby Fischer.	img_87.jpg
89	Blade Runner	http://us.imdb.com/M/title-exact?Blade%20Runner%20(1982)	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	0	8.30000019	69	1982	Deckard, a blade runner, has to track down and terminate 4 replicants who hijacked a ship in space and have returned to earth seeking their maker.	img_89.jpg
92	True Romance	http://us.imdb.com/M/title-exact?True%20Romance%20(1993)	0	1	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	7.9000001	34	1993	Clarence marries hooker Alabama, steals cocaine from her pimp, and tries to sell it in Hollywood, while the owners of the coke try to reclaim it.	img_92.jpg
94	Home Alone	http://us.imdb.com/M/title-exact?Home%20Alone%20(1990)	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.30000019	72	1990	An 8-year-old boy, who is accidentally left behind while his family flies to France for Christmas, has to defend his home against idiotic burglars.	img_94.jpg
97	Dances with Wolves	http://us.imdb.com/M/title-exact?Dances%20with%20Wolves%20(1990)	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	8	75	1990	Lt. John Dunbar, exiled to a remote western Civil War outpost, befriends wolves and Indians, making him an intolerable aberration in the military.	img_97.jpg
100	Fargo	http://us.imdb.com/M/title-exact?Fargo%20(1996)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	1	0	0	8.19999981	77	1996	Jerry Lundegaard&#x27;s inept crime falls apart due to his and his henchmen&#x27;s bungling and the persistent police work of the quite pregnant Marge Gunderson.	img_100.jpg
101	Heavy Metal	http://us.imdb.com/M/title-exact?Heavy%20Metal%20(1981)	0	1	1	1	0	0	0	0	0	0	0	1	0	0	0	1	0	0	0	6.5	78	1981	A glowing orb terrorizes a young girl with a collection of stories of dark fantasy, eroticism and horror.	img_101.jpg
1189	Prefontaine	http://us.imdb.com/M/title-exact?Prefontaine%20(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	45	1997	Based on the life of Olympic hopeful Steve Prefontaine, a long distance runner who lived in Oregon and died young	img_1189.jpg
106	Diabolique	http://us.imdb.com/M/title-exact?Diabolique%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	5.0999999	81	1996	The wife and mistress of a cruel school master collaborate in a carefully planned and executed attempt to murder him...	img_106.jpg
109	Mystery Science Theater 3000: The Movie	http://us.imdb.com/M/title-exact?Mystery%20Science%20Theater%203000:%20The%20Movie%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	7.30000019	84	1996	Mike Nelson and his robot companions watch and give their comments about &#x22;This Island Earth&#x22;.	img_109.jpg
110	Operation Dumbo Drop	http://us.imdb.com/M/title-exact?Operation%20Dumbo%20Drop%20(1995)	0	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	4.69999981	63	1995	To keep the loyalty of a native village during the Vietnam war, a US Army officer and his unit struggle to deliver it a live elephant.	img_110.jpg
118	Twister	http://us.imdb.com/M/title-exact?Twister%20(1996)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6.0999999	86	1996	Bill and Jo Harding, advanced storm chasers on the brink of divorce, must join together to create an advanced weather alert system by putting themselves in the cross-hairs of extremely violent tornadoes.	img_118.jpg
120	Striptease	http://us.imdb.com/M/title-exact?Striptease%20(1996)	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	4.0999999	88	1996	A stripper and single mother gets dragged into a dangerous situation after a congressman takes a fancy to her.	img_120.jpg
124	Lone Star	http://us.imdb.com/M/title-exact?Lone%20Star%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	7.5999999	89	1996	When the skeleton of his murdered predecessor is found, Sheriff Sam Deeds unearths many other long-buried secrets in his Texas border town.	img_124.jpg
129	Bound	http://us.imdb.com/M/title-exact?Bound%20(1996)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	1	0	1	0	0	7.4000001	90	1996	Corky, a tough female ex con and her lover Violet concoct a scheme to steal millions of stashed mob money and pin the blame on Violet&#x27;s crooked boyfriend Caeser.	img_129.jpg
133	Gone with the Wind	http://us.imdb.com/M/title-exact?Gone%20with%20the%20Wind%20(1939)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	1	0	8.19999981	93	1939	American classic in which a manipulative woman and a roguish man carry on a turbulent love affair in the American south during the Civil War and Reconstruction.	img_133.jpg
135	2001: A Space Odyssey	http://us.imdb.com/M/title-exact?2001:%20A%20Space%20Odyssey%20(1968)	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	1	1	0	0	8.39999962	95	1968	Humanity finds a mysterious, obviously artificial, object buried beneath the Lunar surface and, with the intelligent computer H.A.L. 9000, sets off on a quest.	img_135.jpg
137	Big Night	http://us.imdb.com/M/title-exact?Big%20Night%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.19999981	97	1996	A failing Italian restaurant run by two brothers gambles on one special night to try to save the business.	img_137.jpg
140	Homeward Bound: The Incredible Journey	http://us.imdb.com/M/title-exact?Homeward%20Bound:%20The%20Incredible%20Journey%20(1993)	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6.69999981	99	1993	Three pets escape from a California ranch to find their owners in San Francisco.	img_140.jpg
144	Die Hard	http://us.imdb.com/M/title-exact?Die%20Hard%20(1988)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	8.30000019	101	1988	John McClane, officer of the NYPD, tries to save wife Holly Gennaro and several others, taken hostage by German terrorist Hans Gruber during a Christmas party at the Nakatomi Plaza in Los Angeles.	img_144.jpg
149	Jude	http://us.imdb.com/M/title-exact?Jude%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7	103	1996	A stonemason steadfastly pursues a cousin he loves. However their love is troubled as he is married to a woman who tricked him into marriage and she is married to a man she does not love...	img_149.jpg
155	Dirty Dancing	http://us.imdb.com/M/title-exact?Dirty%20Dancing%20(1987)	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	6.5	106	1987	Spending the summer in a holiday camp with her family, Frances &#x22;Baby&#x22; Houseman falls in love with the camp&#x27;s dance instructor Johnny Castle.	img_155.jpg
157	Platoon	http://us.imdb.com/M/title-exact?Platoon%20(1986)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	8.19999981	49	1986	A young recruit in Vietnam faces a moral crisis when confronted with the horrors of war and the duality of man.	img_157.jpg
159	Basic Instinct	http://us.imdb.com/M/title-exact?Basic%20Instinct%20(1992)	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	6.9000001	108	1992	A police detective is in charge of the investigation of a brutal murder, in which a beautiful and seductive woman could be involved.	img_159.jpg
161	Top Gun	http://us.imdb.com/M/title-exact?Top%20Gun%20(1986)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	6.69999981	34	1986	The macho students of an elite US Flying school for advanced fighter pilots compete to be best in the class, and one romances the teacher.	img_161.jpg
165	Jean de Florette	http://us.imdb.com/M/title-exact?Jean%20de%20Florette%20(1986)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8	111	1986	A greedy landowner and his backward nephew conspire to block the only water source for an adjoining property in order to bankrupt the owner and force him to sell.	img_165.jpg
167	Private Benjamin	http://us.imdb.com/M/title-exact?Private%20Benjamin%20(1980)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.9000001	112	1980	A sheltered young high society woman joins the army on a whim and finds herself in a more difficult situation than she ever expected.	img_167.jpg
174	Raiders of the Lost Ark	http://us.imdb.com/M/title-exact?Raiders%20of%20the%20Lost%20Ark%20(1981)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	8.69999981	65	1981	Archeologist and adventurer Indiana Jones is hired by the US government to find the Ark of the Covenant before the Nazis.	img_174.jpg
176	Aliens	http://us.imdb.com/M/title-exact?Aliens%20(1986)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	0	8.5	74	1986	The planet from 	img_176.jpg
180	Apocalypse Now	http://us.imdb.com/M/title-exact?Apocalypse%20Now%20(1979)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	8.60000038	115	1979	During the U.S.-Viet Nam War, Captain Willard is sent on a dangerous mission into Cambodia to assassinate a renegade colonel who has set himself up as a god among a local tribe.	img_180.jpg
185	Psycho	http://us.imdb.com/M/title-exact?Psycho%20(1960)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	1	0	0	8.60000038	116	1960	A young woman steals $40,000 from her employer&#x27;s client, and subsequently encounters a young motel proprietor too long under the domination of his mother.	img_185.jpg
190	Henry V	http://us.imdb.com/M/title-exact?Henry%20V%20(1989)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	7.69999981	66	1989	The gritty adaption of William Shakespeare&#x27;s play about the English King&#x27;s bloody conquest of France.	img_190.jpg
196	Dead Poets Society	http://us.imdb.com/M/title-exact?Dead%20Poets%20Society%20(1989)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.9000001	118	1989	English teacher John Keating inspires his students to a love of poetry and to seize the day.	img_196.jpg
198	Nikita (La Femme Nikita)	http://us.imdb.com/M/title-exact?Nikita%20(1990)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	7.4000001	51	1990	Convicted felon Nikita, instead of going to jail, is given a new identity and trained, stylishly, as a top secret spy/assassin.	img_198.jpg
1265	Star Maps	http://us.imdb.com/M/title-exact?Star+Maps+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.69999981	544	1997	Carlos wants to be an actor. But his father, Pepe, wants him to work in the family business, that is...	img_1265.jpg
203	Unforgiven	http://us.imdb.com/M/title-exact?Unforgiven%20(1992)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	8.30000019	121	1992	Retired Old West gunslinger William Munny reluctantly takes on one last job, with the help of his old partner and a young man.	img_203.jpg
205	Patton	http://us.imdb.com/M/title-exact?Patton%20(1970)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	8	122	1970	The World War II phase of the controversial American general&#x27;s career is depicted.	img_205.jpg
207	Cyrano de Bergerac	http://us.imdb.com/M/title-exact?Cyrano%20de%20Bergerac%20(1990)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7.5	124	1990	Embarrassed by his large nose, a romantic poet/soldier romances his cousin by proxy.	img_207.jpg
209	This Is Spinal Tap	http://us.imdb.com/M/title-exact?This%20Is%20Spinal%20Tap%20(1984)	0	0	0	0	0	1	0	0	1	0	0	0	1	0	0	0	0	0	0	8	126	1984	Spinal Tap, the world&#x27;s loudest band, is chronicled by hack documentarian Marty DeBergi on what proves to be a fateful tour.	img_209.jpg
211	M*A*S*H	http://us.imdb.com/M/title-exact?MASH%20(1970)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	7.69999981	91	1970	The staff of a Korean War field hospital use humor and hijinks to keep their sanity in the face of the horror of war.	img_211.jpg
216	When Harry Met Sally...	http://us.imdb.com/M/title-exact?When%20Harry%20Met%20Sally...%20(1989)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	7.5999999	126	1989	Harry and Sally have known each other for years, and are very good friends, but they fear sex would ruin the friendship.	img_216.jpg
221	Breaking the Waves	http://us.imdb.com/M/title-exact?Breaking%20the%20Waves%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.80000019	128	1996	Oilman Jan is paralyzed in an accident. His wife, who prayed for his return, feels guilty; even more, when Jan urges her to have sex with another.	img_221.jpg
223	Sling Blade	http://us.imdb.com/M/title-exact?Sling%20Blade%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	8	130	1996	Karl Childers, a simple man hospitalized since his childhood murder of his mother and her lover, is released to start a new life in a small town.	img_223.jpg
225	101 Dalmatians	http://us.imdb.com/M/title-exact?101%20Dalmatians%20(1996)	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.5	22	1996	A woman kidnaps puppies to kill them for their fur, but various animals then gang up against her and get their revenge in slapstick fashion.	img_225.jpg
228	Star Trek: The Wrath of Khan	http://us.imdb.com/M/title-exact?Star%20Trek:%20The%20Wrath%20of%20Khan%20(1982)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	7.69999981	133	1982	With the aide of the Enterprise crew, Admiral Kirk must stop an old nemesis, Khan Noonien Singh, from using his son&#x27;s life-generating device, the Genesis Device, as the ultimate weapon.	img_228.jpg
230	Star Trek IV: The Voyage Home	http://us.imdb.com/M/title-exact?Star%20Trek%20IV:%20The%20Voyage%20Home%20(1986)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	7.19999981	134	1986	To save Earth from an alien probe, Admiral Kirk and his fugitive crew go back in time to 20th century Earth to retrieve the only beings who can communicate with it, humpback whales.	img_230.jpg
232	Young Guns	http://us.imdb.com/M/title-exact?Young%20Guns%20(1988)	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	6.5999999	135	1988	A group of young gunmen, led by Billy the Kid, become deputies to avenge the murder of the rancher who became their benefactor. But when Billy takes their authority too far, they become the hunted.	img_232.jpg
234	Jaws	http://us.imdb.com/M/title-exact?Jaws%20(1975)	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	8.19999981	65	1975	When a gigantic great white shark begins to menace the small island community of Amity, a police chief, a marine scientist and grizzled fisherman set out to stop it.	img_234.jpg
237	Jerry Maguire	http://us.imdb.com/M/title-exact?Jerry%20Maguire%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7.19999981	138	1996	When a sports agent has a moral epiphany and is fired for expressing it, he decides to put his new philosophy to the test as an independent with the only athlete who stays with him.	img_237.jpg
239	Sneakers	http://us.imdb.com/M/title-exact?Sneakers%20(1992)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	1	0	0	0	7	127	1992	Complex but lighthearted thriller about computers and cryptography, government and espionage, secrets and deception and betrayal.	img_239.jpg
246	Chasing Amy	http://us.imdb.com/M/title-exact?Chasing+Amy+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7.4000001	140	1997	Holden and Banky are comic book artists. Everything&#x27;s going good for them until they meet Alyssa, also a comic book artist. Holden falls for her, but his hopes are crushed when he finds out she&#x27;s a lesbian.	img_246.jpg
249	Austin Powers: International Man of Mystery	http://us.imdb.com/M/title-exact?Austin%20Powers%3A%20International%20Man%20of%20Mystery%20%281997%29	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7	143	1997	A 1960s hipster secret agent is brought out of cryofreeze to oppose his greatest enemy in the 1990s, where his social attitudes are glaringly out of place.	img_249.jpg
1190	That Old Feeling	http://us.imdb.com/M/title-exact?That%20Old%20Feeling%20(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	5.80000019	282	1997	A bride&#x27;s divorced parents find their old feelings for each other during the wedding reception and over the course of the next few days upsetting the newlywed&#x27;s honeymoon.	img_1190.jpg
256	When the Cats Away (Chacun cherche son chat)	http://us.imdb.com/M/title-exact?Chacun+cherche+son+chat+(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6.80000019	145	1996	Chloe, a young woman, is going on holidays. She entrusts her beloved cat to Madame Ren&#xE9;e&#x27;s care...	img_256.jpg
259	George of the Jungle	http://us.imdb.com/M/title-exact?George+of+the+Jungle+(1997)	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.30000019	146	1997	George grows up in the jungle raised by apes. Based on the Cartoon series.	img_259.jpg
261	Air Bud	http://us.imdb.com/M/title-exact?Air+Bud+(1997)	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.69999981	148	1997	A young boy and a talented stray dog with an amazing basketball playing ability become instant friends...	img_261.jpg
263	Steel	http://us.imdb.com/M/title-exact?Steel+(1997)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2.70000005	150	1997	John Henry Irons designs weapons for the military. When his project to create weapons that harmlessly neutralize soldiers is sabotaged...	img_263.jpg
266	Kull the Conqueror	http://us.imdb.com/M/title-exact?Kull+the+Conqueror+(1997)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4.5999999	152	1997	An barbarian warrior becomes a king when he defeats a king in armed combat and the king&#x27;s heir conspire to overthrow him and reclaim the throne by resurrecting an evil sorceress.	img_266.jpg
270	Gattaca	http://us.imdb.com/M/title-exact?Gattaca+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	1	1	0	0	7.80000019	153	1997	A genetically inferior man assumes the identity of a superior one in order to pursue his lifelong dream of space travel.	img_270.jpg
273	Heat	http://us.imdb.com/M/title-exact?Heat%20(1995)	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	8.30000019	154	1995	A group of professional bank robbers start to feel the heat from police when they unknowingly leave a clue at their latest heist.	img_273.jpg
276	Leaving Las Vegas	http://us.imdb.com/M/title-exact?Leaving%20Las%20Vegas%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7.5999999	157	1995	Ben Sanderson, an alcoholic Hollywood screenwriter who lost everything because of his drinking, arrives in Las Vegas to drink himself to death. There, he meets and forms an uneasy friendship and non-interference pact with prostitute Sera.	img_276.jpg
278	Bed of Roses	http://us.imdb.com/M/title-exact?Bed%20of%20Roses%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	5.69999981	159	1996	Romantic drama about a young career girl who is swept off her feet by a shy florist, who fell in love with her after one glimpse through a shadowy window.	img_278.jpg
285	Secrets & Lies	http://us.imdb.com/M/title-exact?Secrets%20&%20Lies%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.9000001	162	1996	Successful black woman traces her birth mother to a lower-class white woman, who denies it; emotions run high as everyone&#x27;s secrets are exposed.	img_285.jpg
289	Evita	http://us.imdb.com/M/title-exact?Evita%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	6.0999999	165	1996	The hit musical based on the life of Evita Duarte, a B-picture Argentinian actress who eventually became the wife of Argentinian president Juan Per&#xF3;n, and the most beloved and hated woman in Argentina.	img_289.jpg
290	Fierce Creatures	http://us.imdb.com/M/title-exact?Fierce%20Creatures%20(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.19999981	46	1997	Zookeepers struggle to deal with the policies of changing directors.	img_290.jpg
292	Rosewood	http://us.imdb.com/M/title-exact?Rosewood%20(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	166	1997	A dramatization of a 1923 horrific racist lynch mob attack on an African American community.	img_292.jpg
294	Liar Liar	http://us.imdb.com/Title?Liar+Liar+(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.69999981	57	1997	A fast track lawyer can&#x27;t lie for 24 hours due to his son&#x27;s birthday wish after the lawyer turns his son down for the last time.	img_294.jpg
298	Face/Off	http://us.imdb.com/M/title-exact?Face/Off+(1997)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	7.30000019	168	1997	A revolutionary medical technique allows an undercover agent to take the physical appearance of a major criminal and infiltrate his organization.	img_298.jpg
301	In & Out	http://us.imdb.com/Title?In+%26+Out+(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.19999981	170	1997	A midwestern teacher questions his sexuality after a former student makes a comment about him at the Academy Awards.	img_301.jpg
315	Apt Pupil	http://us.imdb.com/Title?Apt+Pupil+(1998)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	6.5999999	173	1998	A boy blackmails his neighbour after suspecting him to be a Nazi war criminal.	img_315.jpg
317	In the Name of the Father	http://us.imdb.com/M/title-exact?In%20the%20Name%20of%20the%20Father%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8.10000038	174	1993	Man&#x27;s coerced confession to an IRA bombing he didn&#x27;t do imprisons his father as well; a British lawyer helps fight for their freedom.	img_317.jpg
319	Everyone Says I Love You	http://us.imdb.com/M/title-exact?Everyone%20Says%20I%20Love%20You%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	1	0	1	0	0	0	0	6.80000019	21	1996	A New York girl sets her father up with a beautiful woman in a shaky marriage while her half sister gets engaged.	img_319.jpg
322	Murder at 1600	http://us.imdb.com/M/title-exact?Murder%20at%201600%20(1997)	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	5.9000001	36	1997	At a time of international incident, the body of a young female staffer is found in a White House wash room...	img_322.jpg
324	Lost Highway	http://us.imdb.com/Title?Lost+Highway+(1997)	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	7.5999999	177	1997	After a bizarre encounter at a party, a jazz saxophonist is framed for the murder of his wife and sent to prison, where he inexplicably morphs into a young mechanic and begins leading a new life.	img_324.jpg
326	G.I. Jane	http://us.imdb.com/M/title-exact?G%2EI%2E+Jane+(1997)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	5.5999999	69	1997	A female Senator succeeds in enrolling a woman into Combined Reconnaissance Team training where everyone expects her to fail.	img_326.jpg
328	Conspiracy Theory	http://us.imdb.com/M/title-exact?Conspiracy+Theory+(1997)	0	1	0	0	0	0	0	0	0	0	0	0	0	1	1	0	1	0	0	6.5999999	60	1997	A man obsessed with conspiracy theories becomes a target after one of his theories turns out to be true. Unfortunately, in order to save himself, he has to figure out which theory it is.	img_328.jpg
332	Kiss the Girls	http://us.imdb.com/M/title-exact?Kiss+the+Girls+(1997)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	1	0	0	6.4000001	181	1997	Police hunting for a serial killer are helped when a victim manages to escape for the first time.	img_332.jpg
336	Playing God	http://us.imdb.com/M/title-exact?Playing+God+(1997)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	5.5	183	1997	Stripped of his medical license after performing an operation while high on amphetamines, famed LA surgeon...	img_336.jpg
338	Bean	http://us.imdb.com/M/title-exact?Bean+(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6	184	1997	The bumbling Mr. Bean travels to America when he is given the responsibility of bringing a highly valuable painting to a Los Angeles museum.	img_338.jpg
341	Critical Care	http://us.imdb.com/M/title-exact?Critical+Care+(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.9000001	114	1997	Werner Ernst is a young hospital resident who becomes embroiled in a legal battle between two half-sisters who are fighting over the care of their comatose father...	img_341.jpg
348	Desperate Measures	http://us.imdb.com/Title?Desperate+Measures+(1998)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	1	0	0	5.9000001	180	1998	San Francisco police officer Frank Connor is in a frantic search for a compatible bone marrow donor for his gravely ill son...	img_348.jpg
355	Sphere	http://us.imdb.com/M/title-exact?Sphere+(1998)	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	5.80000019	42	1998	A spaceship is discovered under three hundred years&#x27; worth of coral growth at the bottom of the ocean.	img_355.jpg
1269	Love in the Afternoon	http://us.imdb.com/M/title-exact?Love%20in%20the%20Afternoon%20(1957)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	7.30000019	242	1957	Director Billy Wilder salutes his idol, Ernst Lubitsch, with this comedy about a middle-aged playboy...	img_1269.jpg
362	Blues Brothers 2000	http://us.imdb.com/M/title-exact?Blues+Brothers+2000+(1998)	0	1	0	0	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	4.5999999	190	1998	Elwood must reunite the old band, with a few new members, and go on another &#x22;Mission from God.&#x22;	img_362.jpg
364	Ace Ventura: When Nature Calls	http://us.imdb.com/M/title-exact?Ace%20Ventura:%20When%20Nature%20Calls%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6	192	1995	Pet detective Ace Ventura comes out of retirement to investigate the disappearance of a rare white bat, the symbol of an African tribe.	img_364.jpg
366	Dangerous Minds	http://us.imdb.com/M/title-exact?Dangerous%20Minds%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6	194	1995	An ex-marine teacher struggles to connect with her students in an inner city schools.	img_366.jpg
368	Bio-Dome	http://us.imdb.com/M/title-exact?Bio-Dome%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4	196	1996	Moronic best friends get themselves locked inside the Bio-Dome, a science experiment, along with a group of environmental scientists for one year.	img_368.jpg
370	Mary Reilly	http://us.imdb.com/M/title-exact?Mary%20Reilly%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	5.5999999	198	1996	A housemaid falls in love with Dr. Jekyll and his darkly mysterious counterpart, Mr. Hyde.	img_370.jpg
373	Judge Dredd	http://us.imdb.com/M/title-exact?Judge%20Dredd%20(1995)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	5.19999981	200	1995	In a dystopian future, Dredd, the most famous judge (a cop with instant field judiciary powers) is convicted for a crime he did not commit while his murderous counterpart escapes.	img_373.jpg
375	Showgirls	http://us.imdb.com/M/title-exact?Showgirls%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	4.30000019	108	1995	A young drifter, named Nomi, arrives in Las Vegas to become a dancer and soon sets about clawing and pushing her way to become the top of the Vegas showgirls.	img_375.jpg
381	Muriel's Wedding	http://us.imdb.com/M/title-exact?Muriel's%20Wedding%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	7	144	1994	Muriel finds life in Porpoise Spit, Australia dull and spends her days alone in her room listening to Abba music and dreaming of her wedding day...	img_381.jpg
385	True Lies	http://us.imdb.com/M/title-exact?True%20Lies%20(1994)	0	1	1	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	7.19999981	74	1994	Harry Tasker is a secret agent for the United States Government. For years, he has kept his job from his wife, but is forced to reveal his identity and try to stop nuclear terrorists when he and his wife are kidnapped by the terrorists.	img_385.jpg
388	Beverly Hills Cop III	http://us.imdb.com/M/title-exact?Beverly%20Hills%20Cop%20III%20(1994)	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.19999981	190	1994	Axel Foley, while investigating a car theft ring, comes across something much bigger than that: the same men who shot his boss are running a counterfeit money ring out of a theme park in Los Angeles.	img_388.jpg
391	Last Action Hero	http://us.imdb.com/M/title-exact?Last%20Action%20Hero%20(1993)	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6	101	1993	A young movie fan gets thrown into the movie world of his favourite action film character.	img_391.jpg
394	Radioland Murders	http://us.imdb.com/M/title-exact?Radioland%20Murders%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	1	1	0	0	0	0	5.80000019	184	1994	In 1939, WBN, a fourth radio network, is about to take to America&#x27;s airwaves. As if the confusion of the premiere night wasn&#x27;t enough...	img_394.jpg
396	Serial Mom	http://us.imdb.com/M/title-exact?Serial%20Mom%20(1994)	0	0	0	0	0	1	1	0	0	0	0	1	0	0	0	0	0	0	0	6.5	206	1994	A sweet mother takes a little too much at heart for the defence of her family.	img_396.jpg
398	Super Mario Bros.	http://us.imdb.com/M/title-exact?Super%20Mario%20Bros.%20(1993)	0	1	1	0	1	0	0	0	0	0	0	0	0	0	0	1	0	0	0	3.79999995	208	1993	The Marios rush to save a princess from Koopa.	img_398.jpg
402	Ghost	http://us.imdb.com/M/title-exact?Ghost%20(1990)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	1	0	0	6.9000001	209	1990	After being killed during a botched mugging, a man&#x27;s love for his partner enables him to remain on earth as a ghost.	img_402.jpg
404	Pinocchio	http://us.imdb.com/M/title-exact?Pinocchio%20(1940)	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	7.5999999	210	1940	A living puppet, with the help of a cricket as his conscience, must prove himself worthy to become a real boy.	img_404.jpg
1195	Strawberry and Chocolate (Fresa y chocolate)	http://us.imdb.com/M/title-exact?Fresa%20y%20chocolate%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.19999981	521	1993	Diego, a cultivated, homosexual and skeptical young man, falls in love with a young heterosexual communist full of prejudices and doctrinary ideas...	img_1195.jpg
410	Kingpin	http://us.imdb.com/M/title-exact?Kingpin%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.80000019	213	1996	A star bowler whose career was prematurely &#x22;cut off&#x22; hopes to ride a new prodigy to success and riches.	img_410.jpg
414	My Favorite Year	http://us.imdb.com/M/title-exact?My%20Favorite%20Year%20(1982)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.19999981	214	1982	A dissolute matinee idol is slated to appear on a live TV variety show.	img_414.jpg
419	Mary Poppins	http://us.imdb.com/M/title-exact?Mary%20Poppins%20(1964)	0	0	0	0	1	1	0	0	0	0	0	0	1	0	0	0	0	0	0	7.69999981	100	1964	A magic nanny comes to work for a cold banker&#x27;s unhappy family.	img_419.jpg
420	Alice in Wonderland	http://us.imdb.com/M/title-exact?Alice%20in%20Wonderland%20(1951)	0	0	0	1	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	7.4000001	215	1951	Alice stumbles into the world of Wonderland. Will she get home? Not if the Queen of Hearts has her way.	img_420.jpg
425	Bob Roberts	http://us.imdb.com/M/title-exact?Bob%20Roberts%20(1992)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.9000001	18	1992	A corrupt rightwing folksinger runs a crooked election campaign while only one independent muck-raking reporter is trying to stop him.	img_425.jpg
428	Harold and Maude	http://us.imdb.com/M/title-exact?Harold%20and%20Maude%20(1971)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	8	217	1971	Young, rich, and obsessed with death, Harold finds himself changed forever when he meets lively septuagenarian Maude at a funeral.	img_428.jpg
431	Highlander	http://us.imdb.com/M/title-exact?Highlander%20(1986)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	7.19999981	219	1986	An immortal Scottish swordsman must confront the last of his immortal opponent, a murderously brutal barbarian who lusts for the fabled &#x22;Prize&#x22;.	img_431.jpg
435	Butch Cassidy and the Sundance Kid	http://us.imdb.com/M/title-exact?Butch%20Cassidy%20and%20the%20Sundance%20Kid%20(1969)	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	8.19999981	221	1969	Two Western bank/train robbers flee to Bolivia when the law gets too close.	img_435.jpg
440	Amityville II: The Possession	http://us.imdb.com/M/title-exact?Amityville%20II:%20The%20Possession%20(1982)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	5	223	1982	A family moves into their new home, which proves to be evil, resulting in the demonic possession of the teenage son. Only the local priest can save him.	img_440.jpg
447	Carrie	http://us.imdb.com/M/title-exact?Carrie%20(1976)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	7.4000001	62	1976	A young, abused and timid 17-year-old girl discovers she has telekinesis, and gets pushed to the limit on the night of her school&#x27;s prom by a humiliating prank.	img_447.jpg
450	Star Trek V: The Final Frontier	http://us.imdb.com/M/title-exact?Star%20Trek%20V:%20The%20Final%20Frontier%20(1989)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	5.19999981	226	1989	Captain Kirk and his crew must deal with Mr. Spock&#x27;s half brother who hijacks the Enterprise for an obsessive search for God.	img_450.jpg
452	Jaws 2	http://us.imdb.com/M/title-exact?Jaws%202%20(1978)	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	5.5999999	228	1978	Police chief Brody must protect the citizens of Amity after a second monstrous shark begins terrorizing the waters.	img_452.jpg
1355	Infinity	http://us.imdb.com/M/title-exact?Infinity%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6	585	1996	Story of the early life of genius and Nobel Prize-winning physicist Richard Feynman.	img_1355.jpg
458	Nixon	http://us.imdb.com/M/title-exact?Nixon%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7	49	1995	A biographical story of former U.S. president Richard Milhous Nixon, from his days as a young boy to his eventual presidency which ended in shame.	img_458.jpg
461	Smoke	http://us.imdb.com/M/title-exact?Smoke%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.4000001	234	1995	A Brooklyn smoke shop is the center of neighborhood activity, and the stories of its customers.	img_461.jpg
464	Vanya on 42nd Street	http://us.imdb.com/M/title-exact?Vanya%20on%2042nd%20Street%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.19999981	236	1994	New York actors rehearse Chekhov&#x27;s &#x22;Uncle Vanya&#x22; in a rundown theater.	img_464.jpg
468	Rudy	http://us.imdb.com/M/title-exact?Rudy%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.4000001	237	1993	Rudy has always been told that he was too small to play college football. But he is determined to overcome the odds and fulfill his dream of playing for Notre Dame.	img_468.jpg
471	Courage Under Fire	http://us.imdb.com/M/title-exact?Courage%20Under%20Fire%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	6.5	48	1996	A US Army officer, despondent about a deadly mistake he made, investigates a female chopper commander&#x27;s worthiness for the Medal of Honor.	img_471.jpg
475	Trainspotting	http://us.imdb.com/Title?Trainspotting+(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8.19999981	240	1996	Renton, deeply immersed in the Edinburgh drug scene, tries to clean up and get out, despite the allure of the drugs and influence of friends.	img_475.jpg
479	Vertigo	http://us.imdb.com/M/title-exact?Vertigo%20(1958)	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	8.5	116	1958	A retired San Francisco detective suffering from acrophobia investigates the strange activities of an old friend&#x27;s much-younger wife, all the while becoming dangerously obsessed with her.	img_479.jpg
483	Casablanca	http://us.imdb.com/M/title-exact?Casablanca%20(1942)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	1	0	8.69999981	243	1942	Set in unoccupied Africa during the early days of World War II: An American expatriate meets a former lover, with unforeseen complications.	img_483.jpg
486	Sabrina	http://us.imdb.com/M/title-exact?Sabrina%20(1954)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	7.69999981	242	1954	A playboy becomes interested in the daughter of his family&#x27;s chauffeur. But it&#x27;s his more serious brother who would be the better man for her.	img_486.jpg
489	Notorious	http://us.imdb.com/M/title-exact?Notorious%20(1946)	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	1	0	0	8.19999981	116	1946	A woman is asked to spy on a group of Nazi friends in South America. How far will she have to go to ingratiate herself with them?	img_489.jpg
492	East of Eden	http://us.imdb.com/M/title-exact?East%20of%20Eden%20(1955)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8	246	1955	In the Salinas Valley, in and around World War I, Cal Trask feels he must compete against overwhelming odds with his brother Aron for the love of their father Adam...	img_492.jpg
496	It's a Wonderful Life	http://us.imdb.com/M/title-exact?It's%20a%20Wonderful%20Life%20(1946)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8.69999981	96	1946	An angel helps a compassionate but despairingly frustrated businessman by showing what life would have been like if he never existed.	img_496.jpg
500	Fly Away Home	http://us.imdb.com/M/title-exact?Fly%20Away%20Home%20(1996)	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6.80000019	172	1996	A father and daughter decide to attempt to lead a flock of orphaned Canada Geese south by air.	img_500.jpg
501	Dumbo	http://us.imdb.com/M/title-exact?Dumbo%20(1941)	0	0	0	1	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	7.4000001	249	1941	Ridiculed because of his enormous ears, a young circus elephant is assisted by a mouse to achieve his full potential.	img_501.jpg
504	Bonnie and Clyde	http://us.imdb.com/M/title-exact?Bonnie%20and%20Clyde%20(1967)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	8	250	1967	A somewhat romanticized account of the career of the notoriously violent bank robbing couple and their gang.	img_504.jpg
1203	Top Hat	http://us.imdb.com/M/title-exact?Top%20Hat%20(1935)	0	0	0	0	0	1	0	0	0	0	0	0	1	0	1	0	0	0	0	7.69999981	525	1935	An American dancer comes to Britain and falls for a model whom he initially annoyed, but she mistakes him for his goofy producer.	img_1203.jpg
510	Magnificent Seven, The	http://us.imdb.com/M/title-exact?Shichinin%20no%20samurai%20(1954)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	8.80000019	252	1954	A poor village under attack by bandits recruits seven unemployed samurai to help them defend themselves.	img_510.jpg
514	Annie Hall	http://us.imdb.com/M/title-exact?Annie%20Hall%20(1977)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	8.19999981	21	1977	Neurotic New York comedian Alvy Singer falls in love with the ditsy Annie Hall.	img_514.jpg
516	Local Hero	http://us.imdb.com/M/title-exact?Local%20Hero%20(1983)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.4000001	254	1983	An American oil company sends a man to Scotland to buy up an entire village where they want to build a refinery. But things don&#x27;t go as expected.	img_516.jpg
522	Down by Law	http://us.imdb.com/M/title-exact?Down%20by%20Law%20(1986)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	7.80000019	255	1986	The story of three different men in a Louisiana prison and their eventual journey.	img_522.jpg
523	Cool Hand Luke	http://us.imdb.com/M/title-exact?Cool%20Hand%20Luke%20(1967)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	8.19999981	256	1967	A man refuses to conform to life in a rural prison.	img_523.jpg
527	Gandhi	http://us.imdb.com/M/title-exact?Gandhi%20(1982)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8.10000038	257	1982	Biography of <a  href="/name/nm0003987/"	img_527.jpg
531	Shine	http://us.imdb.com/M/title-exact?Shine%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7.5999999	258	1996	Pianist David Helfgott, driven by his father and teachers, has a breakdown. Years later he returns to the piano, to popular if not critical acclaim.	img_531.jpg
534	Traveller	http://us.imdb.com/M/title-exact?Traveller%20%281997%29	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6	259	1997	A young man, Pat, visits the clan of gypsy-like grifters (Irish Travellers) in rural North Carolina from whom he is descended...	img_534.jpg
536	Ponette	http://us.imdb.com/M/title-exact?Ponette%20%281996%29	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.4000001	261	1996	An extremely captivating movie on how a little girl copes with her mother&#x27;s death. She withdraws from all the people around her...	img_536.jpg
538	Anastasia	http://us.imdb.com/M/title-exact?Anastasia+(1997)	0	0	0	1	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	6.80000019	263	1997	The only surviving child of the Russian Royal Family hooks up with two con men while the undead Rasputin seeks her death.	img_538.jpg
541	Mortal Kombat	http://us.imdb.com/M/title-exact?Mortal%20Kombat%20(1995)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.5999999	147	1995	Three unknowing martial artists are summoned to a mysterious island to compete in a tournament whose outcome will decide the fate of the world.	img_541.jpg
546	Broken Arrow	http://us.imdb.com/M/title-exact?Broken%20Arrow%20(1996)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	5.9000001	168	1996	Terrorists steal nuclear warheads from the US military but don&#x27;t count on a pilot and park ranger spoiling their plans.	img_546.jpg
550	Die Hard: With a Vengeance	http://us.imdb.com/M/title-exact?Die%20Hard:%20With%20a%20Vengeance%20(1995)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	7.5	101	1995	John McClane and a store owner must play a bomber&#x27;s deadly game as they race around New York while trying to stop him.	img_550.jpg
552	Species	http://us.imdb.com/M/title-exact?Species%20(1995)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	5.69999981	176	1995	A message from outer space contains instructions on how to modify human DNA.	img_552.jpg
1270	Life with Mikey	http://us.imdb.com/M/title-exact?Life%20with%20Mikey%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.19999981	545	1993	Michael J. Fox stars as a child actor who has grown up, and grown out of his popularity. He now runs a talent agency with his brother...	img_1270.jpg
558	Heavenly Creatures	http://us.imdb.com/M/title-exact?Heavenly%20Creatures%20(1994)	0	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	1	0	0	7.5	271	1994	Two girls have an intense fantasy life; their parents, concerned the fantasy is too intense, separate them, and the girls take revenge.	img_558.jpg
565	Village of the Damned	http://us.imdb.com/M/title-exact?Village%20of%20the%20Damned%20(1995)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	5.4000001	272	1995	A small town&#x27;s women give birth to unfriendly alien children posing as humans.	img_565.jpg
569	Wolf	http://us.imdb.com/M/title-exact?Wolf%20(1994)	0	0	0	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	6.0999999	274	1994	Publisher Will Randall becomes a werewolf and has to fight to keep his job.	img_569.jpg
570	Wyatt Earp	http://us.imdb.com/M/title-exact?Wyatt%20Earp%20(1994)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	6.5	275	1994	Wyatt Earp is a movie about a man and his family. The movie shows us the good times and the bad times of one of the West&#x27;s most famous individuals.	img_570.jpg
572	Blown Away	http://us.imdb.com/M/title-exact?Blown%20Away%20(1994)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6	276	1994	An Irish bomber escapes from prison and targets a member of the Boston bomb squad.	img_572.jpg
574	Boxing Helena	http://us.imdb.com/M/title-exact?Boxing%20Helena%20(1993)	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	1	0	0	4.19999981	278	1993	A surgeon becomes obsessed with the seductive woman he once had an affair with. Refusing to accept that she has moved on, he amputates her limbs and holds her captive in his mansion.	img_574.jpg
576	Cliffhanger	http://us.imdb.com/M/title-exact?Cliffhanger%20(1993)	0	1	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	6.30000019	132	1993	A botched mid-air heist results in suitcases full of cash being searched for by various groups throughout the Rocky Mountains.	img_576.jpg
578	Demolition Man	http://us.imdb.com/M/title-exact?Demolition%20Man%20(1993)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	6.5	281	1993	A cop is brought out of suspended animation in prison to pursue an old ultra-violent enemy who is loose in a nonviolent future society.	img_578.jpg
581	Kalifornia	http://us.imdb.com/M/title-exact?Kalifornia%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	6.69999981	283	1993	A journalist duo go on a tour of serial killer murder sites with two companions, unaware that one of them is a serial killer himself.	img_581.jpg
586	Terminal Velocity	http://us.imdb.com/M/title-exact?Terminal%20Velocity%20(1994)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.30000019	286	1994	A maverick skydiver and a former KGB agent team up to stop the Russian mafia from stealing gold.	img_586.jpg
588	Beauty and the Beast	http://us.imdb.com/M/title-exact?Beauty%20and%20the%20Beast%20(1991)	0	0	0	1	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	8	287	1991	Belle, whose father is imprisoned by the Beast, offers herself instead and discovers her captor to be an enchanted prince.	img_588.jpg
591	Primal Fear	http://us.imdb.com/M/title-exact?Primal%20Fear%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	7.5999999	188	1996	An altar boy is accused of murdering a priest, and the truth is buried several layers deep.	img_591.jpg
594	Heavy	http://us.imdb.com/M/title-exact?Heavy%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7	179	1995	The life of an overweight, unhappy cook is forever changed after a kind, beautiful college drop-out comes to work as a waitress at he and his mother&#x27;s roadside restaurant.	img_594.jpg
603	Rear Window	http://us.imdb.com/M/title-exact?Rear%20Window%20(1954)	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	8.69999981	116	1954	A wheelchair bound photographer spies on his neighbours from his apartment window and becomes convinced one of them has committed murder.	img_603.jpg
1277	Set It Off	http://us.imdb.com/M/title-exact?Set%20It%20Off%20(1996)	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	6.30000019	532	1996	Four Black women, all of whom have suffered for lack of money and at the hands of the majority, undertake to rob banks...	img_1277.jpg
606	All About Eve	http://us.imdb.com/M/title-exact?All%20About%20Eve%20(1950)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8.39999962	293	1950	An ingenue insinuates herself in to the company of an established but aging stage actress and her circle of theater friends.	img_606.jpg
608	Spellbound	http://us.imdb.com/M/title-exact?Spellbound%20(1945)	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	1	0	0	7.5999999	116	1945	A female psychiatrist protects the identity of an amnesia patient accused of murder while attempting to recover his memory.	img_608.jpg
610	Gigi	http://us.imdb.com/M/title-exact?Gigi%20(1958)	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	6.9000001	292	1958	Weary of the conventions of Parisian society, a rich playboy and a youthful courtesan-in-training enjoy a platonic friendship, but it may not stay platonic for long.	img_610.jpg
612	Lost Horizon	http://us.imdb.com/M/title-exact?Lost%20Horizon%20(1937)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.69999981	96	1937	A plane crash delivers a group of people to the secluded land of Shangri-La -- but is it the miraculous utopia it appears to be?	img_612.jpg
614	Giant	http://us.imdb.com/M/title-exact?Giant%20(1956)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.69999981	296	1956	Sprawling epic covering the life of a Texas cattle rancher and his family and associates.	img_614.jpg
618	Picnic	http://us.imdb.com/M/title-exact?Picnic%20(1955)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.19999981	298	1955	Emotions are ignited amongst the complacent townsfolk when a handsome drifter arrives in a small Kansas community on the morning of the Labour Day picnic.	img_618.jpg
622	Swiss Family Robinson	http://us.imdb.com/M/title-exact?Swiss%20Family%20Robinson%20(1960)	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	7	300	1960	A family in route to New Guinea is shipwrecked on a deserted tropical island. They are forced to remain...	img_622.jpg
627	Robin Hood: Prince of Thieves	http://us.imdb.com/Title?Robin+Hood%3A+Prince+of+Thieves+(1991)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.80000019	268	1991	When Robin and his Moorish companion come to England and the tyranny of the Sheriff of Nottingham, he decides to fight back as an outlaw.	img_627.jpg
632	Sophie's Choice	http://us.imdb.com/M/title-exact?Sophie's%20Choice%20(1982)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.5999999	302	1982	Sophie is the survivor of Nazi concentration camps, who has found a reason to live in Nathan, a sparkling if unsteady American Jew obsessed with the Holocaust...	img_632.jpg
636	Escape from New York	http://us.imdb.com/M/title-exact?Escape%20from%20New%20York%20(1981)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	7.19999981	272	1981	In 1997, when the US President crashes into Manhattan, now a giant max. security prison, a convicted bank robber is sent in for a rescue.	img_636.jpg
647	Ran	http://us.imdb.com/M/title-exact?Ran%20(1985)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	8.30000019	252	1985	An elderly lord abdicates to his three sons, and the two corrupt ones turn against him.	img_647.jpg
649	Once Upon a Time in America	http://us.imdb.com/M/title-exact?Once%20Upon%20a%20Time%20in%20America%20(1984)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	1	0	0	8.39999962	305	1984	A former Prohibition-era Jewish gangster returns to Brooklyn over 30 years later, where he once again must confront the ghosts and regrets of his old life.	img_649.jpg
1204	To Be or Not to Be	http://us.imdb.com/M/title-exact?To%20Be%20or%20Not%20to%20Be%20(1942)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	1	0	8.19999981	382	1942	During the Nazi occupation of Poland, an acting troupe becomes embroiled in a Polish soldier&#x27;s efforts to track down a German spy.	img_1204.jpg
655	Stand by Me	http://us.imdb.com/M/title-exact?Stand%20by%20Me%20(1986)	0	0	1	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	8.10000038	126	1986	After the death of a friend, a writer recounts a boyhood journey to find the body of a missing boy.	img_655.jpg
658	Pump Up the Volume	http://us.imdb.com/M/title-exact?Pump%20Up%20the%20Volume%20(1990)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7	308	1990	Mark runs a pirate radio station and causes an uproar when he speaks his mind and enthralls fellow teens.	img_658.jpg
661	High Noon	http://us.imdb.com/M/title-exact?High%20Noon%20(1952)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	8.19999981	309	1952	A marshall, personally compelled to face a returning deadly enemy, finds that his own town refuses to help him.	img_661.jpg
663	Being There	http://us.imdb.com/M/title-exact?Being%20There%20(1979)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	8	217	1979	Chance, a simple gardener, has never left the estate until his employer dies. His simple TV-informed utterances are mistaken for profundity.	img_663.jpg
667	Audrey Rose	http://us.imdb.com/M/title-exact?Audrey%20Rose%20(1977)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	5.69999981	225	1977	A stranger attempts to convince a happily married couple that their daughter is actually his daughter reincarnated.	img_667.jpg
670	Body Snatchers	http://us.imdb.com/M/title-exact?Body%20Snatchers%20(1993)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	1	0	0	5.80000019	277	1993	A teenage girl and her father discover alien clones are replacing humans on a remote U.S. military base in Alabama.	img_670.jpg
672	Candyman	http://us.imdb.com/M/title-exact?Candyman%20(1992)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	6.5	313	1992	The Candyman, a murderous soul with a hook for a hand, is accidentally summoned to reality by a skeptic grad student researching the monster&#x27;s myth.	img_672.jpg
675	Nosferatu (Nosferatu, eine Symphonie des Grauens)	http://us.imdb.com/M/title-exact?Nosferatu,%20eine%20Symphonie%20des%20Grauens%20(1922)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	8	316	1922	Vampire Count Orlok expresses interest in a new residence and real estate agent Hutter&#x27;s wife. Silent classic based on the story &#x22;Dracula.&#x22;	img_675.jpg
678	Volcano	http://us.imdb.com/M/title-exact?Volcano%20%281997%29	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	5.30000019	318	1997	A volcano erupts in downtown L.A., threatening to destroy the city.	img_678.jpg
681	Wishmaster	http://us.imdb.com/M/title-exact?Wishmaster+(1997)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	5.4000001	319	1997	A demonic djinn attempts to grant its owner three wishes, which will allow him to summon his brethren to earth.	img_681.jpg
682	I Know What You Did Last Summer	http://us.imdb.com/M/title-exact?I+Know+What+You+Did+Last+Summer+(1997)	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	1	0	0	5.5	320	1997	Four teens are in great danger one year after their car hits a stranger whose body they dump in the sea.	img_682.jpg
685	Executive Decision	http://us.imdb.com/M/title-exact?Executive%20Decision%20(1996)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6.30000019	321	1996	When terrorists seize control of an airliner, an intelligence analyst accompanies a commando unit for a midair boarding operation.	img_685.jpg
690	Seven Years in Tibet	http://us.imdb.com/M/title-exact?Seven+Years+in+Tibet+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	6.80000019	322	1997	True story of Heinrich Harrer, an Austrian mountain climber who became friends with the Dalai Lama at the time of China&#x27;s takeover of Tibet.	img_690.jpg
695	Kicking and Screaming	http://us.imdb.com/M/title-exact?Kicking%20and%20Screaming%20(1995)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	323	1995	Following graduation, a handful of college students do nothing and talk about it wittily.	img_695.jpg
699	Little Women	http://us.imdb.com/M/title-exact?Little%20Women%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	325	1994	The March sisters live and grow in post-Civil War America.	img_699.jpg
702	Barcelona	http://us.imdb.com/M/title-exact?Barcelona%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6.80000019	327	1994	Ted, a stuffy white guy from Illinois working in sales for the Barcelona office of a US corporation...	img_702.jpg
1532	Foreign Student	http://us.imdb.com/M/title-exact?Foreign%20Student%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.69999981	653	1994	A French football playing exchange student falls in love.	img_1532.jpg
709	Strictly Ballroom	http://us.imdb.com/M/title-exact?Strictly%20Ballroom%20(1992)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	7.0999999	330	1992	A maverick dancer risks his career by performing an unusual routine and sets out to succeed with a new partner.	img_709.jpg
710	Better Off Dead...	http://us.imdb.com/Title?Better+Off+Dead...+(1985)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.0999999	331	1985	A teenager has to deal with his girlfriend dumping him among family crises, homicidal paper boys, and a rival skier.	img_710.jpg
713	Othello	http://us.imdb.com/M/title-exact?Othello%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.80000019	332	1995	The evil Iago pretends to be friend of Othello in order to manipulate him to serve his own end in the film version of this Shakespeare classic.	img_713.jpg
716	Home for the Holidays	http://us.imdb.com/M/title-exact?Home%20for%20the%20Holidays%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.4000001	334	1995	After losing her job, making out with her soon to be ex-boss, and finding out that her daughter plans to spend Thanksgiving with her boyfriend...	img_716.jpg
720	First Knight	http://us.imdb.com/M/title-exact?First%20Knight%20(1995)	0	1	1	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	5.69999981	209	1995	Lancelot falls in love with Guinevere, who is due to be married to King Arthur. Meanwhile, a violent warlord tries to seize power from Arthur and his Knights of the Round Table.	img_720.jpg
722	Nine Months	http://us.imdb.com/M/title-exact?Nine%20Months%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.30000019	72	1995	When he finds out his longtime girlfriend is pregnant, a commitment-phobe realizes he might have to change his lifestyle for better or much, much worse.	img_722.jpg
724	Circle of Friends	http://us.imdb.com/M/title-exact?Circle%20of%20Friends%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.4000001	336	1995	&#x27;Circle Of Friends&#x27; is set in 1950&#x27;s Ireland. The movie focuses on Benny Hogan and her best friend...	img_724.jpg
726	Fluke	http://us.imdb.com/M/title-exact?Fluke%20(1995)	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.30000019	338	1995	Workaholic Thomas Johnson dies in an auto accident and comes back to life as a dog. Remembering some of who he was...	img_726.jpg
728	Junior	http://us.imdb.com/M/title-exact?Junior%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	4.4000001	339	1994	As part of a fertility research project, a male scientist agrees to carry a pregnancy in his own body.	img_728.jpg
731	Corrina, Corrina	http://us.imdb.com/M/title-exact?Corrina,%20Corrina%20(1994)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	1	0	0	0	0	6.0999999	340	1994	When Manny Singer&#x27;s wife dies, his young daughter Molly becomes mute and withdrawn. To help cope with looking after Molly...	img_731.jpg
733	Go Fish	http://us.imdb.com/M/title-exact?Go%20Fish%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	5.5999999	341	1994	Max is a trendy, pretty, young lesbian, who is having trouble finding love. A friend sets her up with Ely...	img_733.jpg
736	Shadowlands	http://us.imdb.com/M/title-exact?Shadowlands%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7.30000019	257	1993	C.S. Lewis, a world-renowned writer and professor, leads a passionless life until he meets spirited poet Joy Gresham.	img_736.jpg
738	Threesome	http://us.imdb.com/M/title-exact?Threesome%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	5.9000001	343	1994	Eddy and Stuart share two-thirds of a dormitory suite. Due to bureaucratic error, a woman named Alex is added to their room...	img_738.jpg
742	Ransom	http://us.imdb.com/M/title-exact?Ransom%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	6.5999999	31	1996	When a rich man&#x27;s son is kidnapped, he cooperates with the police at first but then tries a unique tactic against the criminals.	img_742.jpg
746	Real Genius	http://us.imdb.com/M/title-exact?Real%20Genius%20(1985)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.80000019	346	1985	Teenage geniuses deal with their abilities while developing a laser.	img_746.jpg
747	Benny & Joon	http://us.imdb.com/M/title-exact?Benny%20&%20Joon%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	7	81	1993	A mentally ill young woman finds her love in an eccentric man who models himself after Buster Keaton.	img_747.jpg
756	Father of the Bride Part II	http://us.imdb.com/M/title-exact?Father%20of%20the%20Bride%20Part%20II%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.5999999	349	1995	In this sequel to &#x22;Father of the Bride&#x22;, George Banks must accept the reality of what his daughter&#x27;s ascension from daughter to wife...	img_756.jpg
760	Screamers	http://us.imdb.com/M/title-exact?Screamers%20(1995)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	6.19999981	352	1995	(SIRIUS 6B, Year 2078) On a distant mining planet ravaged by a decade of war, scientists have created the perfect weapon: a blade-wielding...	img_760.jpg
762	Beautiful Girls	http://us.imdb.com/M/title-exact?Beautiful%20Girls%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	353	1996	A piano player at a crossroads in his life returns home to his friends and their own problems with life and love.	img_762.jpg
764	If Lucy Fell	http://us.imdb.com/M/title-exact?If%20Lucy%20Fell%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	4.69999981	354	1996	Joe and Lucy are roommates and best friends. Lucy, whose love life is embarrassingly dull, convinces Joe...	img_764.jpg
766	Man of the Year	http://us.imdb.com/M/title-exact?Man%20of%20the%20Year%20(1995)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	5.80000019	356	1995	Mockumentary look at Playgirl Magazine centerfold and 1992 Man of the Year, Dirk Shafer, who kept it a secret from the magazine that he is gay...	img_766.jpg
769	Congo	http://us.imdb.com/M/title-exact?Congo%20(1995)	0	1	1	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	4.80000019	358	1995	When an expedition to the African Congo ends in disaster, a new team is assembled to find out what went wrong.	img_769.jpg
771	Johnny Mnemonic	http://us.imdb.com/M/title-exact?Johnny%20Mnemonic%20(1995)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	5.30000019	360	1995	A data courier, carrying a data package literally inside his head too large to hold for long, must deliver it before he dies from it.	img_771.jpg
773	Mute Witness	http://us.imdb.com/M/title-exact?Mute%20Witness%20(1994)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6.69999981	362	1994	Billy Hughes, a mute makeup artist working on a slasher film being shot in Moscow, is locked in the studio after hours...	img_773.jpg
779	Drop Zone	http://us.imdb.com/M/title-exact?Drop%20Zone%20(1994)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.4000001	189	1994	A team of skydiving crooks led by DEA-agent-turned-bad Busey specialize in landing on police roofs and...	img_779.jpg
780	Dumb & Dumber	http://us.imdb.com/M/title-exact?Dumb%20&%20Dumber%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.19999981	363	1994	The cross-country adventures of two good-hearted but incredibly stupid friends.	img_780.jpg
782	Little Odessa	http://us.imdb.com/M/title-exact?Little%20Odessa%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.69999981	364	1994	This film tells a bitter tale of a dysfunctional family. Joshua, a cold-blooded professional killer...	img_782.jpg
785	Only You	http://us.imdb.com/M/title-exact?Only%20You%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6.19999981	365	1994	Destiny. Faith (Marisa Tomei) believes that two soul-mates can be united if they find each other. From the Ouija board...	img_785.jpg
790	Tommy Boy	http://us.imdb.com/M/title-exact?Tommy%20Boy%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.80000019	204	1995	An incompetent, immature, and dimwitted heir to an auto parts factory must save the business to keep it out of the hands of his new, con-artist relatives and big business.	img_790.jpg
794	It Could Happen to You	http://us.imdb.com/M/title-exact?It%20Could%20Happen%20to%20You%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.19999981	88	1994	A police officer promises to share his lottery ticket with a waitress in lieu of a tip.	img_794.jpg
796	Speechless	http://us.imdb.com/M/title-exact?Speechless%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	5.69999981	368	1994	Two political speechwriters fall in love before they find out they are working for candidates on opposite sides.	img_796.jpg
798	Bad Company	http://us.imdb.com/M/title-exact?Bad%20Company%20(1995)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.19999981	369	1995	Nelson Crowe is a CIA operative under the thumb of the Company for a disputed delivery of $50,000 in gold...	img_798.jpg
804	Jimmy Hollywood	http://us.imdb.com/M/title-exact?Jimmy%20Hollywood%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.19999981	42	1994	Jimmy Alto is an actor wannabe who stumbles into the role of a lifetime. He becomes a vigilante crime-fighter...	img_804.jpg
805	Manhattan Murder Mystery	http://us.imdb.com/M/title-exact?Manhattan%20Murder%20Mystery%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	7.30000019	21	1993	A middle-aged couple suspects foul play when their neighbor&#x27;s wife suddenly drops dead.	img_805.jpg
807	Poetic Justice	http://us.imdb.com/M/title-exact?Poetic%20Justice%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.30000019	166	1993	In this film, we see the world through the eyes of main character Justice, a young African-American poet. A mail carrier invites a few friends along for a long overnight delivery run.	img_807.jpg
1278	Selena	http://us.imdb.com/M/title-exact?Selena%20(1997)	0	0	0	0	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	6.30000019	502	1997	The true story of Selena Quintanilla-Perez, a Texas born tejano singer who rose from cult status to performing at the Astrodome, as well as having chart topping albums on the Latin music charts.	img_1278.jpg
815	One Fine Day	http://us.imdb.com/M/title-exact?One%20Fine%20Day%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.30000019	158	1996	Melanie Parker, an architect and mother of Sammy, and Jack Taylor, a newspaper columnist and father of Maggie...	img_815.jpg
817	Frisk	http://us.imdb.com/M/title-exact?Frisk%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.30000019	374	1995	A first person narrative of the exploits of a gay serial killer in deeply disturbing, controversial drama about violence...	img_817.jpg
819	Eddie	http://us.imdb.com/M/title-exact?Eddie%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.69999981	285	1996	Eddie is a New York limo driver and a fanatical follower of the New York Knicks professional basketball team...	img_819.jpg
821	Mrs. Winterbourne	http://us.imdb.com/M/title-exact?Mrs.%20Winterbourne%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	5.80000019	214	1996	Connie Doyle is eighteen and pregnant her boyfriend has kicked her out. She accidentaly ends up on a train where she meets Hugh Winterbourne and his wife Patricia who is pregnant...	img_821.jpg
827	Daylight	http://us.imdb.com/M/title-exact?Daylight%20(1996)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	5.5999999	377	1996	Disaster in a New York tunnel as explosions collapse both ends of it. One hero tries to help the people inside find their way to safety.	img_827.jpg
829	Fled	http://us.imdb.com/M/title-exact?Fled%20(1996)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5	379	1996	Two prisoners chained together flee during an escape attempt gone bad.	img_829.jpg
832	Bogus	http://us.imdb.com/M/title-exact?Bogus%20(1996)	0	0	0	0	1	0	0	0	1	1	0	0	0	0	0	0	0	0	0	4.9000001	365	1996	Recently orphaned, a young boy is taken in by his godmother who is shocked to realize that she can see the boy&#x27;s imaginary friend: a flamboyant, French magician named Bogus.	img_832.jpg
836	Ninotchka	http://us.imdb.com/M/title-exact?Ninotchka%20(1939)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	7.9000001	382	1939	A stern Russian woman sent to Paris on official business finds herself attracted to a man who represents everything she is supposed to detest.	img_836.jpg
837	Meet John Doe	http://us.imdb.com/M/title-exact?Meet%20John%20Doe%20(1941)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.69999981	96	1941	A man needing money agrees to impersonate a nonexistent person who said he&#x27;d be committing suicide as a protest, and a political movement begins.	img_837.jpg
845	That Thing You Do!	http://us.imdb.com/M/title-exact?That%20Thing%20You%20Do!%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.69999981	385	1996	A Pennsylvania band scores a hit in 1964 and rides the star-making machinery as long as it can, with lots of help from its manager.	img_845.jpg
847	Looking for Richard	http://us.imdb.com/M/title-exact?Looking%20for%20Richard%20(1996)	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	7.19999981	387	1996	Al Pacino&#x27;s deeply-felt rumination on Shakespeare&#x27;s significance and relevance to the modern world through interviews and an in-depth analysis of &#x22;Richard III.&#x22;	img_847.jpg
849	Days of Thunder	http://us.imdb.com/M/title-exact?Days%20of%20Thunder%20(1990)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	5.5999999	34	1990	A young hot-shot stock car driver gets his chance to compete at the top level.	img_849.jpg
854	Bad Taste	http://us.imdb.com/M/title-exact?Bad%20Taste%20(1987)	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	6.69999981	271	1987	The population of a small town disappears and is replaced by aliens that chase human flesh for their intergalactic fast-food chain.	img_854.jpg
856	Night on Earth	http://us.imdb.com/M/title-exact?Night%20on%20Earth%20(1991)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	7.69999981	255	1991	An anthology of 5 different cab drivers in 5 American and European cities and their remarkable fares on the same eventful night.	img_856.jpg
866	Michael	http://us.imdb.com/M/title-exact?Michael%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	5.5	68	1996	Two tabloid reporters checking out a report of the Archangel Michael living with an old woman find that it&#x27;s true. But that&#x27;s not the only surprise.	img_866.jpg
870	Touch	http://us.imdb.com/M/title-exact?Touch%20(1997)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	5.69999981	315	1997	When Juvenal, a presumed miracle worker, appears on the scene Bill Hill attempts to exploit him but...	img_870.jpg
872	Love Jones	http://us.imdb.com/M/title-exact?Love%20Jones%20(1997)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	6.80000019	394	1997	Darius Lovehall is a young black poet in Chicago who starts dating Nina Moseley, a beautiful and talented photographer...	img_872.jpg
874	Career Girls	http://us.imdb.com/M/title-exact?Career+Girls+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7	162	1997	2 young women reunite and rekindle their friendship after having said goodbye at their college graduation, six years earlier.	img_874.jpg
876	Money Talks	http://us.imdb.com/M/title-exact?Money+Talks+(1997)	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.80000019	396	1997	Sought by police and criminals, a small-time huckster makes a deal with a TV newsman for protection.	img_876.jpg
878	That Darn Cat!	http://us.imdb.com/M/title-exact?That%20Darn%20Cat%20(1997)	0	0	0	0	1	1	0	0	0	0	0	0	0	1	0	0	0	0	0	4.4000001	397	1997	A maid is kidnapped and scratches a message onto D.C. the cat&#x27;s collar and when his owner Patti discovers this, she plays amateur detective with the help of D.C. to try to find the culprits.	img_878.jpg
881	Money Talks	http://us.imdb.com/M/title-exact?Money+Talks+(1997)	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.80000019	396	1997	Sought by police and criminals, a small-time huckster makes a deal with a TV newsman for protection.	img_881.jpg
884	Year of the Horse	http://us.imdb.com/M/title-exact?Year+of+the+Horse+(1997)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	6.5	255	1997	This film documents Neil Young and Crazy Horse&#x27;s 1996 concert tour. Jim Jarmusch interviews the band about their long history, and we see backstage footage from the 1970s and 1980s.	img_884.jpg
885	Phantoms	http://us.imdb.com/M/title-exact?Phantoms+(1998)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	5.19999981	381	1998	150 dead and 350 missing in the tiny mountain town of Snowfield, Colorado. And that&#x27;s only the beginning...	img_885.jpg
890	Mortal Kombat: Annihilation	http://us.imdb.com/M/title-exact?Mortal+Kombat%3A+Annihilation+(1997)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3.4000001	402	1997	A group of martial arts warriors have only six days to save the Earth from an extra-dimensional invasion.	img_890.jpg
912	U.S. Marshalls	http://us.imdb.com/Title?U.S.+Marshals+(1998)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6.30000019	321	1998	US Marshal Samuel Gerard (Jones) and his team of Marshals are assigned to track down Sheridan (Snipes), a murderer and robber.	img_912.jpg
1299	Penny Serenade	http://us.imdb.com/M/title-exact?Penny%20Serenade%20(1941)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7	296	1941	A couple&#x27;s big dreams give way to a life full of unexpected sadness and unexpected joy.	img_1299.jpg
915	Primary Colors	http://us.imdb.com/Title?Primary+Colors+(1998)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.5999999	274	1998	A man joins the political campaign of a smooth-operator candidate for president of the USA.	img_915.jpg
917	Mercury Rising	http://us.imdb.com/Title?Mercury+Rising+(1998)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	5.9000001	324	1998	Bruce Willis is an outcast FBI agent who is assigned to protect a 9 year old autistic boy who is the target for assassins after cracking a top secret government code.	img_917.jpg
920	Two Bits	http://us.imdb.com/M/title-exact?Two%20Bits%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.0999999	109	1995	It&#x27;s a hot summer day in 1933 in South Philly, where 12-year old Gennaro lives with his widowed mom and his ailing grandpa...	img_920.jpg
924	White Squall	http://us.imdb.com/M/title-exact?White%20Squall%20(1996)	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	69	1996	Teenage boys discover discipline and camaraderie on an ill-fated sailing voyage.	img_924.jpg
926	Down Periscope	http://us.imdb.com/M/title-exact?Down%20Periscope%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.5	406	1996	Lt. Cmdr. Tom Dodge is assigned as Captain to the USS Stingray, an old diesel driven submarine that has seen better days...	img_926.jpg
930	Chain Reaction	http://us.imdb.com/M/title-exact?Chain%20Reaction%20(1996)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	5.4000001	136	1996	Two researchers in a green alternative energy project are put on the run when they are framed for murder and treason.	img_930.jpg
936	Brassed Off	http://us.imdb.com/M/title-exact?Brassed%20Off%20%281996%29	0	0	0	0	0	1	0	0	1	0	0	0	0	0	1	0	0	0	0	7	410	1996	The coal mine in a northern English village may be closing, which would also mean the end of the miners&#x27; brass band.	img_936.jpg
940	Airheads	http://us.imdb.com/M/title-exact?Airheads%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.80000019	412	1994	Three band members hoping for a big break head to a radio station to play their demo tape and wind up holding everyone hostage with plastic guns when the head DJ refuses to play them.	img_940.jpg
942	What's Love Got to Do with It	http://us.imdb.com/M/title-exact?What's%20Love%20Got%20to%20Do%20with%20It%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	414	1993	A film about the singer Tina Turner and how she rose to stardom with her abusive husband Ike Turner and how she gained the courage to break free.	img_942.jpg
945	Charade	http://us.imdb.com/M/title-exact?Charade%20(1963)	0	0	0	0	0	1	0	0	0	0	0	0	0	1	1	0	1	0	0	8	329	1963	Romance and suspense in Paris, as a woman is pursued by several men who want a fortune her murdered husband had stolen. Who can she trust?	img_945.jpg
948	Booty Call	http://us.imdb.com/M/title-exact?Booty%20Call%20(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	4.9000001	416	1997	Two friends who have gone too long without sex set out to get some.	img_948.jpg
950	Georgia	http://us.imdb.com/M/title-exact?Georgia%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6	418	1995	Sadie is desperately looking up to her older sister Georgia who is a famous C&#x26;W artist. Sadie wants to be a famous artist like her sister...	img_950.jpg
953	Unstrung Heroes	http://us.imdb.com/M/title-exact?Unstrung%20Heroes%20(1995)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.5	420	1995	Steven Lidz, unhappy with his home life since his mother got sick, goes and lives with his two crazy Uncles...	img_953.jpg
956	Nobody's Fool	http://us.imdb.com/M/title-exact?Nobody's%20Fool%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.19999981	423	1994	Sully is a rascally ne&#x27;er-do-well approaching retirement age. While he is pressing a worker&#x27;s compensation suit for a bad knee...	img_956.jpg
958	To Live (Huozhe)	http://us.imdb.com/M/title-exact?Huozhe%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8	15	1994	Fugui and Jiazhen endure tumultuous events in China as their personal fortunes move from wealthy landownership to peasantry...	img_958.jpg
960	Naked	http://us.imdb.com/M/title-exact?Naked%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.80000019	162	1993	Johnny flees Manchester for London, to avoid a beating from the family of a girl he has raped. There he finds an old girlfriend...	img_960.jpg
969	Winnie the Pooh and the Blustery Day	http://us.imdb.com/M/title-exact?Winnie%20the%20Pooh%20and%20the%20Blustery%20Day%20%281968%29	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	7.80000019	425	1968	Winnie the Pooh and his friends experience high winds, heavy rains, and a flood in Hundred Acre Wood.	img_969.jpg
971	Mediterraneo	http://us.imdb.com/M/title-exact?Mediterraneo%20(1991)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	7.19999981	427	1991	Greek Sea, World War II. An Italian ship leaves a handful of soldiers in a little island; their mission is to spot enemy ships and to hold the island in case of attack...	img_971.jpg
975	Fear	http://us.imdb.com/M/title-exact?Fear%20(1996)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6	109	1996	A 16 year old girl takes up with a charming young man who quickly shows his colors when he beats a friend simply for walking with her and then goes totally ballistic after she tries to break up with him.	img_975.jpg
978	Heaven's Prisoners	http://us.imdb.com/M/title-exact?Heaven's%20Prisoners%20(1996)	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	5.5999999	430	1996	Ex-detective Dave Robicheaux has made a new life for himself and his wife Annie running a bait shop in the outskirts of New Orleans...	img_978.jpg
981	Dangerous Ground	http://us.imdb.com/M/title-exact?Dangerous%20Ground%20(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	4.19999981	233	1997	Vusi Madlazi returns to the South African village he left as a young boy (he was organizing against apartheid...	img_981.jpg
986	Turbulence	http://us.imdb.com/M/title-exact?Turbulence%20(1997)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	4.5999999	433	1997	After a shootout on a flight transporting prisoners, a stewardess must outwit a smooth-talking serial killer and land the plane herself.	img_986.jpg
990	Anna Karenina	http://us.imdb.com/M/title-exact?Anna%20Karenina%20%281997%29	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.19999981	313	1997	Anna (Marceau) is a wife and mother who has an affair with the handsome Count Vronsky (Bean). Based on the novel by Tolstoy.	img_990.jpg
992	Head Above Water	http://us.imdb.com/M/title-exact?Head+Above+Water+(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	1	0	0	5.80000019	435	1996	A prominent judge, his wife, her ex-lover, their neighbor and a dead body that complicates their lives.	img_992.jpg
995	Kiss Me, Guido	http://us.imdb.com/M/title-exact?Kiss+Me%2C+Guido+(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.80000019	436	1997	Warren has an extra room in his apartment (and is five months behind on the rent) after his lover moves out...	img_995.jpg
998	Cabin Boy	http://us.imdb.com/M/title-exact?Cabin%20Boy%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.5999999	437	1994	A foul-mouthed finishing school graduate mistakenly winds up on an ill-fated fishing boat, and faces the wrath of a crew that considers him bad luck.	img_998.jpg
1003	That Darn Cat!	http://us.imdb.com/M/title-exact?That%20Darn%20Cat%20(1997)	0	0	0	0	1	1	0	0	0	0	0	0	0	1	0	0	0	0	0	4.4000001	397	1997	A maid is kidnapped and scratches a message onto D.C. the cat&#x27;s collar and when his owner Patti discovers this, she plays amateur detective with the help of D.C. to try to find the culprits.	img_1003.jpg
1006	Until the End of the World (Bis ans Ende der Welt)	http://us.imdb.com/M/title-exact?Bis%20ans%20Ende%20der%20Welt%20(1991)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	1	0	0	0	6.69999981	310	1991	Set in 1999, a woman (Dommartin) has a car accident with some bank robbers, who enlist her help to take the bank money to a drop in Paris...	img_1006.jpg
1008	I Shot Andy Warhol	http://us.imdb.com/M/title-exact?I%20Shot%20Andy%20Warhol%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	439	1996	Based on the true story of Valerie Solanas who was a 60s radical preaching hatred toward men in her &#x22;Scum&#x22; manifesto...	img_1008.jpg
1010	Basquiat	http://us.imdb.com/M/title-exact?Basquiat%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.80000019	441	1996	Basquiat tells the story of the meteoric rise of youthful artist Jean-Michel Basquiat. Starting out as a street artist...	img_1010.jpg
1012	Private Parts	http://us.imdb.com/M/title-exact?Private%20Parts%20(1997)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.5999999	443	1997	The auto-biographical story of Howard Stern, the radio-rebel who is now also a TV-personality, an author and a movie star.	img_1012.jpg
1217	Assassins	http://us.imdb.com/Title?Assassins+(1995)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6.0999999	60	1995	Robert Rath is a seasoned hitman who just wants out of the business with no back talk. But, as things go...	img_1217.jpg
1281	Manny & Lo	http://us.imdb.com/M/title-exact?Manny%20&%20Lo%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.80000019	549	1996	A pregnant teen and her younger sister run away from foster homes and kidnap a woman whom they believe can help with the pregnancy.	img_1281.jpg
1016	Con Air	http://us.imdb.com/M/title-exact?Con%20Air%20%281997%29	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6.69999981	446	1997	A newly released ex-con and former US Ranger finds himself trapped in a prisoner transport plane when the passengers seize control.	img_1016.jpg
1022	Fast, Cheap & Out of Control	http://us.imdb.com/M/title-exact?Fast,+Cheap+&+Out+of+Control+(1997)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	7.19999981	448	1997	What do an elderly topiary gardener, a retired lion tamer, a man fascinated by mole rats, and a cutting-edge robotics designer have in common...	img_1022.jpg
1025	Fire Down Below	http://us.imdb.com/M/title-exact?Fire+Down+Below+(1997)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	4.5999999	449	1997	Environmental protection agent Jack Taggart is fighting big business types led by Orin Hanner who are dumping toxic waste somewhere in the Kentucky hills region...	img_1025.jpg
1029	Jury Duty	http://us.imdb.com/M/title-exact?Jury%20Duty%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	3.70000005	451	1995	When jobless Tommy Collins discovers that sequestered jurors earn free room and board as well as $5-a-day...	img_1029.jpg
1032	Little Big League	http://us.imdb.com/M/title-exact?Little%20Big%20League%20(1994)	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.80000019	453	1994	A young boy is bequeathed the ownership of a professional baseball team.	img_1032.jpg
1035	Cool Runnings	http://us.imdb.com/M/title-exact?Cool%20Runnings%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.69999981	56	1993	Based on the true story of the First Jamacian bobsled team trying to make it to the winter olympics.	img_1035.jpg
1036	Drop Dead Fred	http://us.imdb.com/M/title-exact?Drop%20Dead%20Fred%20(1991)	0	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	5.30000019	455	1991	A young woman finds her already unstable life rocked by the presence of a rambunctious imaginary friend from childhood.	img_1036.jpg
1038	Switchback	http://us.imdb.com/M/title-exact?Switchback+(1997)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6.19999981	457	1997	An FBI agent tries to catch a serial killer who kidnapped his son.	img_1038.jpg
1041	Forget Paris	http://us.imdb.com/M/title-exact?Forget%20Paris%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6.19999981	458	1995	Mickey Gordon is a basketball referee who travels to France to bury his father. Ellen Andrews is an American living in Paris who works for the airline he flies on...	img_1041.jpg
1045	Fearless	http://us.imdb.com/M/title-exact?Fearless%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	118	1993	A man&#x27;s personality is dramatically changed after surviving a major airline crash.	img_1045.jpg
1047	Multiplicity	http://us.imdb.com/M/title-exact?Multiplicity%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.80000019	120	1996	A man who never has enough time for the things he wants to do is offered the opportunity to have himself duplicated.	img_1047.jpg
1053	Now and Then	http://us.imdb.com/M/title-exact?Now%20and%20Then%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.30000019	461	1995	Four 12-year-old girls grow up together during an eventful small-town summer in 1970.	img_1053.jpg
1064	Crossfire	http://us.imdb.com/M/title-exact?Crossfire%20(1947)	0	0	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	7.4000001	388	1947	A man is murdered, apparently by one of a group of soldiers just out of the army. But which one? And why?	img_1064.jpg
1069	Amateur	http://us.imdb.com/M/title-exact?Amateur%20(1994)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	1	0	0	6.9000001	465	1994	Isabelle is an ex-nun waiting for her special mission from God. In the meantime, she is making a living writing pornography...	img_1069.jpg
1073	Shallow Grave	http://us.imdb.com/Title?Shallow+Grave+(1994)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	7.30000019	240	1994	Three friends discover their new flatmate dead but loaded with cash.	img_1073.jpg
1077	Love and a .45	http://us.imdb.com/M/title-exact?Love%20and%20a%20.45%20(1994)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	5.69999981	468	1994	Watty has made a living out of robbing convenience stores, but after one of these job turned into murder by his partner...	img_1077.jpg
1079	Joe's Apartment	http://us.imdb.com/M/title-exact?Joe's%20Apartment%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	5.0999999	470	1996	A nice guy has just moved to New York and discovers that he must share his run-down apartment with a couple thousand singing, dancing cockroaches.	img_1079.jpg
1083	Albino Alligator	http://us.imdb.com/M/title-exact?Albino%20Alligator%20(1996)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	6	473	1996	While escaping from a foiled robbery attempt, three thieves find themselves surrounded by police at a New Orleans bar--only they&#x27;re not the people the police are searching for.	img_1083.jpg
1085	Carried Away	http://us.imdb.com/M/title-exact?Carried%20Away%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.4000001	475	1996	Joseph Svenden is a middle-aged schoolteacher who lives on a farm with his dying mother. In his simple life there are no excitements...	img_1085.jpg
1088	Double Team	http://us.imdb.com/M/title-exact?Double%20Team%20%281997%29	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4.30000019	476	1997	Counter-terrorist Jack Quinn misses his target, Stavros, on the eve of his final mission. From there...	img_1088.jpg
1090	Sliver	http://us.imdb.com/M/title-exact?Sliver%20(1993)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	4.69999981	273	1993	Carly Norris is a book editor living in New York City who moves into the Sliver apartment building. In the apartment building...	img_1090.jpg
1092	Dear God	http://us.imdb.com/M/title-exact?Dear%20God%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.80000019	337	1996	When letters written to God start getting results, and replies, people everywhere are amazed. The Post Office however is annoyed.	img_1092.jpg
1095	High School High	http://us.imdb.com/M/title-exact?High%20School%20High%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.19999981	479	1996	Richard Clark has just left the well-known Wellington Academy to teach at Marion Barry High School. Now...	img_1095.jpg
1100	What Happened Was...	http://us.imdb.com/M/title-exact?What%20Happened%20Was...%20(1994)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	1	0	0	0	0	7	482	1994	This darkly humorous film explores the personal psychic landscape of two lonely New Yorkers. Jackie and Michael are coworkers at a large law firm...	img_1100.jpg
1103	Trust	http://us.imdb.com/Title?Trust+(1990)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	7.5	465	1990	When high school dropout Maria Coughlin announces her pregnancy to her parents, her father drops dead on the floor...	img_1103.jpg
1107	Beyond Rangoon	http://us.imdb.com/M/title-exact?Beyond%20Rangoon%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	484	1995	Laura is trying to pick up the pieces of her life after the murder of her husband and son, and goes on vacation with her sister to Burma...	img_1107.jpg
1108	Feast of July	http://us.imdb.com/M/title-exact?Feast%20of%20July%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.30000019	485	1995	After an abandoned young woman in late 19th Century England is taken in by a rural couple with three handsome sons, tragic consequences result.	img_1108.jpg
1110	Tank Girl	http://us.imdb.com/M/title-exact?Tank%20Girl%20(1995)	0	1	0	0	0	1	0	0	0	0	0	0	1	0	0	1	0	0	0	4.80000019	486	1995	Based on the British cult comic-strip, our tank-riding anti-heroine fights a mega-corporation, which controls the world&#x27;s water supply.	img_1110.jpg
1112	Cobb	http://us.imdb.com/M/title-exact?Cobb%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.30000019	161	1994	A reporter hired to write the &#x27;official&#x27; biography of Ty Cobb discovers just how dark the baseball legend&#x27;s real story is.	img_1112.jpg
1114	Faithful	http://us.imdb.com/M/title-exact?Faithful%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.69999981	489	1996	A depressed housewife whose husband is having an affair contemplates suicide, but changes her mind when she faces death by a killer hired to do her in.	img_1114.jpg
1119	Some Kind of Wonderful	http://us.imdb.com/M/title-exact?Some%20Kind%20of%20Wonderful%20(1987)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.80000019	450	1987	A young tomboy, Watts, finds her feelings for her best friend, Keith, run deeper than just friendship when he gets a date with the most popular girl in school...	img_1119.jpg
1122	They Made Me a Criminal	http://us.imdb.com/M/title-exact?They%20Made%20Me%20a%20Criminal%20(1939)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	493	1939	A boxer flees believing he has comitted a murder while he was drunk.	img_1122.jpg
1131	Safe	http://us.imdb.com/M/title-exact?Safe%20(1995)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	7	494	1995	An affluent and unexceptional homemaker in the suburbs develops multiple chemical sensitivity.	img_1131.jpg
1133	Escape to Witch Mountain	http://us.imdb.com/M/title-exact?Escape%20to%20Witch%20Mountain%20(1975)	0	0	1	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	6.19999981	496	1975	Two mysterious orphan children have extraordinary powers and are chased by a scheming millionaire. But where do these kids really call home?	img_1133.jpg
1137	Beautiful Thing	http://us.imdb.com/M/title-exact?Beautiful%20Thing%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7.5	497	1996	In a suburb of London, young Jamie is escaping sport hours, to avoid being the victim of his comrades. Young Ste, his neighbor, is beaten by his father, and comes to sleep overnight. They discover new feelings, sleeping in the same bed.	img_1137.jpg
1142	When We Were Kings	http://us.imdb.com/M/title-exact?When%20We%20Were%20Kings%20(1996)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	7.80000019	499	1996	A documentary of the 1974 heavyweight championship bout in Zaire between champion George Foreman and underdog challenger Muhammad Ali.	img_1142.jpg
1146	Calendar Girl	http://us.imdb.com/M/title-exact?Calendar%20Girl%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	4.80000019	501	1993	Three young men go on an end of the summer trip to Hollywood, CA. Their quest: to fulfill the fantasy of meeting Marilyn Monroe.	img_1146.jpg
1149	Walkabout	http://us.imdb.com/M/title-exact?Walkabout%20(1971)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.69999981	504	1971	Two young children are stranded in the Australian outback and are forced to cope on their own. They meet an Aborigine on &#x22;walkabout&#x22;: a ritualistic separation from his tribe.	img_1149.jpg
1151	Original Gangstas	http://us.imdb.com/M/title-exact?Original%20Gangstas%20(1996)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	5.5999999	505	1996	Marvin Bookman is a small shop owner in Gary, Indiana, USA. After he sees a drive-by shooting of Laurie Thompson&#x27;s son by a local gang...	img_1151.jpg
1159	Stalker	http://us.imdb.com/M/title-exact?Stalker%20(1979)	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	8.10000038	506	1979	A guide leads two men through an area known as the Zone to find a room that grants wishes.	img_1159.jpg
1162	Phat Beach	http://us.imdb.com/M/title-exact?Phat%20Beach%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	3.4000001	508	1996	A hefty homeboy borrows his dad&#x27;s Mercedes and goes to the beach with his friends for wild sun &#x26; fun.	img_1162.jpg
1165	Big Bully	http://us.imdb.com/M/title-exact?Big%20Bully%20(1996)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	4.0999999	509	1996	A writer returns to his hometown where he faces the childhood nemesis whose life he ultimately ruined, only the bully wants to relive their painful past by torturing him once again.	img_1165.jpg
1188	Young Guns II	http://us.imdb.com/M/title-exact?Young%20Guns%20II%20(1990)	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	6.0999999	520	1990	Billy &#x22;The Kid&#x22; and his gang is wanted by the law, and when &#x22;Doc&#x22; Scurlock and Chavez are captured...	img_1188.jpg
1194	Once Were Warriors	http://us.imdb.com/M/title-exact?Once%20Were%20Warriors%20(1994)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	7.9000001	376	1994	A family descended from Maori warriors is bedeviled by a violent father and the societal problems of being treated as outcasts.	img_1194.jpg
1198	Purple Noon	http://us.imdb.com/M/title-exact?Plein%20soleil%20(1960)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	7.69999981	522	1960	Tom Ripley is a talented mimic, moocher, forger and all-around criminal improviser; but there&#x27;s more to Tom Ripley than even he can guess.	img_1198.jpg
1199	Cemetery Man (Dellamorte Dellamore)	http://us.imdb.com/M/title-exact?Dellamorte%20Dellamore%20(1994)	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	7.19999981	523	1994	A cemetery man must kill the dead a second time when they become zombies.	img_1199.jpg
1200	Kim	http://us.imdb.com/M/title-exact?Kim%20(1950)	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.5	524	1950	Kim, a young boy living on his own on the streets of India, is actually the son of a British officer...	img_1200.jpg
1206	Amos & Andrew	http://us.imdb.com/M/title-exact?Amos%20&%20Andrew%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.30000019	526	1993	When Andrew Sterling, a successful black urbanite writer buys a vacation home on a resort in New England the police mistake him for a burglar...	img_1206.jpg
1169	Fresh	http://us.imdb.com/M/title-exact?Fresh%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.5	511	1994	Michael (or Fresh as he&#x27;s well known) is a 12-year-old drug pusher who lives in a crowded housing project with his cousins and aunt...	img_1169.jpg
1173	Bliss	http://us.imdb.com/M/title-exact?Bliss%20(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	5.80000019	513	1997	Joseph and Maria are married for six months and Maria still has never had an orgasm with her husband...	img_1173.jpg
1175	Hugo Pool	http://us.imdb.com/M/title-exact?Hugo+Pool+(1997)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	4.9000001	515	1997	Hugo Pool is a quirky tale of a Los Angeles pool cleaner who falls in love with a young man dying of Lou Gerhig&#x27;s Disease.	img_1175.jpg
1179	Man of the House	http://us.imdb.com/M/title-exact?Man%20of%20the%20House%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.5	517	1995	Ben Archer is not happy. His mother, Sandy, has just met a man, and it looks like things are pretty serious...	img_1179.jpg
1182	Cops and Robbersons	http://us.imdb.com/M/title-exact?Cops%20and%20Robbersons%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.69999981	518	1994	When police discover that a mob hitman has moved in next door to the Robbersons, they want to find out what he is up to...	img_1182.jpg
1208	Kiss of Death	http://us.imdb.com/M/title-exact?Kiss%20of%20Death%20(1995)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	1	0	0	5.80000019	180	1995	A reformed convict goes undercover with the help of an angry detective to ensnare a psychotic mobster.	img_1208.jpg
1210	Virtuosity	http://us.imdb.com/M/title-exact?Virtuosity%20(1995)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	5.4000001	527	1995	A virtual-reality serial killer manages to escape into the real world.	img_1210.jpg
1212	Flesh and Bone	http://us.imdb.com/M/title-exact?Flesh%20and%20Bone%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	1	1	0	0	0	0	6.19999981	529	1993	Some thirty years after Arlis witnesses his father murdering a family, he runs into Kay, who happens to be the family&#x27;s baby who was spared...	img_1212.jpg
1215	Barb Wire	http://us.imdb.com/M/title-exact?Barb%20Wire%20(1996)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	3.0999999	530	1996	Post-Apocalyptic remake of &#x22;Casablanca&#x22; set in a strip club.	img_1215.jpg
1222	Judgment Night	http://us.imdb.com/M/title-exact?Judgment%20Night%20(1993)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6.4000001	276	1993	When they took the wrong turn, it lead them to witnessing a murder, which left them running for their lives from the perpetrators.	img_1222.jpg
1223	King of the Hill	http://us.imdb.com/M/title-exact?King%20of%20the%20Hill%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.30000019	534	1993	A young boy struggles on his own in a run-down motel after his parents and younger brother are separated from him in 1930s Depression-era Midwest.	img_1223.jpg
1230	Ready to Wear (Pret-A-Porter)	http://us.imdb.com/Title?Pr%EAt-%E0-Porter+(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.80000019	91	1994	A fashion show in Paris draws the usual bunch of people; designers, reporters, models, magazine editors...	img_1230.jpg
1231	Marked for Death	http://us.imdb.com/M/title-exact?Marked%20for%20Death%20(1990)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.5	36	1990	Chicago DEA agent John Hatcher has just returned from Colombia, where his partner was killed in the line of duty by a drug dealer who has since been taken down...	img_1231.jpg
1233	Nénette et Boni	http://us.imdb.com/Title?N%E9nette+et+Boni+(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	536	1996	Teenage siblings Nenette and Boni were raised apart as a result of their parents&#x27; divorce. Their mother...	img_1233.jpg
1234	Chairman of the Board	http://us.imdb.com/Title?Chairman+of+the+Board+(1998)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	2.0999999	537	1998	A surfer becomes the head of a major company.	img_1234.jpg
1245	Gridlock'd	http://us.imdb.com/M/title-exact?Gridlock'd%20(1997)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	6.80000019	539	1997	After a friend overdoses, Spoon and Stretch decide to kick their drug habits and attempt to enroll in a government detox program...	img_1245.jpg
1249	For Love or Money	http://us.imdb.com/M/title-exact?For%20Love%20or%20Money%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.9000001	13	1993	Doug is a young man who works all day as a concierge at a luxurious hotel, saving money to make his own business...	img_1249.jpg
1254	Gone Fishin'	http://us.imdb.com/M/title-exact?Gone%20Fishin'%20(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.30000019	135	1997	Two fishing fanatics get in trouble when their fishing boat gets stolen while on a trip.	img_1254.jpg
1255	Broken English	http://us.imdb.com/M/title-exact?Broken%20English%20%281996%29	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	541	1996	Ivan is the fierce patriarch of a family of Croatian refugees in Auckland. Nina is his daughter, ready to live on her own...	img_1255.jpg
1260	Total Eclipse	http://us.imdb.com/M/title-exact?Total%20Eclipse%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.30000019	399	1995	A genius 16-year-old 18th century poet and his mentor fall for each other, but, over time, their romantic relationship becomes bitter and violent.	img_1260.jpg
1263	Foxfire	http://us.imdb.com/M/title-exact?Foxfire%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.80000019	543	1996	The story of five teenage girls who form an unlikely bond after beating up a teacher who has sexually harassed them...	img_1263.jpg
1267	Clockers	http://us.imdb.com/M/title-exact?Clockers%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.80000019	367	1995	Young drug pushers in the projects of Brooklyn live hard dangerous lives, trapped between their drug bosses and the detectives out to stop them.	img_1267.jpg
1271	North	http://us.imdb.com/M/title-exact?North%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.30000019	126	1994	Eleven-year-old North has had it with his parents. They are always busy with their careers and don&#x27;t give North the attention he needs...	img_1271.jpg
1276	Sunset Park	http://us.imdb.com/M/title-exact?Sunset%20Park%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.30000019	547	1996	A white school teacher takes over a talented, but undisciplined black high school basketball team and turns them into a winning team.	img_1276.jpg
1279	Wild America	http://us.imdb.com/M/title-exact?Wild+America+(1997)	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.9000001	301	1997	Three brothers - Marshall, Marty and Mark dream of becoming naturalists and portraying animal life of America...	img_1279.jpg
1280	Gang Related	http://us.imdb.com/M/title-exact?Gang+Related+(1997)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	6.19999981	548	1997	Two corrupt cops murder an undercover DEA agent by mistake, and frantically try to cover their tracks by framing a homeless man for the crime...	img_1280.jpg
1283	Out to Sea	http://us.imdb.com/M/title-exact?Out+to+Sea+(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.69999981	346	1997	A failed gambler, intent on meeting a rich widow, tricks his widowed brother-in-law into boarding a cruise ship as dance hosts.	img_1283.jpg
1287	Ed	http://us.imdb.com/M/title-exact?Ed%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	2.4000001	551	1996	    Minor league. Major friendship.	img_1287.jpg
1288	Denise Calls Up	http://us.imdb.com/M/title-exact?Denise%20Calls%20Up%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.69999981	552	1995	A group of friends in New York, working away at their PCs and laptops, keep in touch exclusively by phone and fax...	img_1288.jpg
1291	Celtic Pride	http://us.imdb.com/M/title-exact?Celtic%20Pride%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.9000001	554	1996	Two over-loyal Celtic fans kidnap their opponent&#x27;s star player in order to guarantee their team the championship.	img_1291.jpg
1295	Kicked in the Head	http://us.imdb.com/M/title-exact?Kicked+in+the+Head+(1997)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	3	556	1997	Redmond is a young guy who can&#x27;t find what to do with his life. When his uncle Sam gives him the...	img_1295.jpg
1297	Love Affair	http://us.imdb.com/M/title-exact?Love%20Affair%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	5.5	395	1994	Ex-football star Mike Gambril meets Terry McKay on a flight to Sydney, which is forced to land on a small atoll...	img_1297.jpg
1300	'Til There Was You	http://us.imdb.com/Title?%27Til+There+Was+You+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	4.30000019	558	1997	Two strangers, whose paths are always crossing, finally meet when fate steps in.	img_1300.jpg
1301	Stripes	http://us.imdb.com/M/title-exact?Stripes+(1981)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.80000019	339	1981	Two friends who are dissatisfied with their jobs decide to join the army for a bit of fun.	img_1301.jpg
1308	Babyfever	http://us.imdb.com/M/title-exact?Babyfever%20(1994)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	5.0999999	560	1994	Gena is an average woman who is torn between her current boyfriend&#x27;s desire to marry her and start a family...	img_1308.jpg
1313	Palmetto	http://us.imdb.com/M/title-exact?Palmetto+(1998)	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	1	0	0	5.80000019	562	1998	A recently released ex-con gets involved in a fake kidnapping scheme that turns very real.	img_1313.jpg
1315	Inventing the Abbotts	http://us.imdb.com/M/title-exact?Inventing%20the%20Abbotts%20%281997%29	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.19999981	336	1997	A light-hearted story of two brothers courting three sisters.	img_1315.jpg
1324	Loaded	http://us.imdb.com/M/title-exact?Loaded%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	4.5	565	1994	Seven teenagers retreat to a country house for the weekend to make their epic, an impossibly ambitious Celtic fantasy...	img_1324.jpg
1326	Boys	http://us.imdb.com/M/title-exact?Boys%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	4.4000001	567	1996	Patty Vare falls off a horse and is found unconscious by prep school student John Baker. He takes her to his dorm...	img_1326.jpg
1330	An Unforgettable Summer	http://us.imdb.com/Title?Un+%E9t%E9+inoubliable+(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	570	1994	In 1925 Romania, young Marie-Therese Von Debretsy refuses the flirtatious advances of her husband&#x27;s commanding officer...	img_1330.jpg
1333	Midnight Dancers (Sibak)	http://us.imdb.com/M/title-exact?Sibak%20(1994)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	5.9000001	572	1994	Three young and good-looking brothers live with and support their parents in Manila; they dance at the...	img_1333.jpg
1335	American Buffalo	http://us.imdb.com/M/title-exact?American%20Buffalo%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.5999999	573	1996	Long-repressed feelings of bitterness and betrayal explode when three inner-city losers plot the robbery of a valuable coin in a seedy second-hand junk shop.	img_1335.jpg
1337	Larger Than Life	http://us.imdb.com/M/title-exact?Larger%20Than%20Life%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.19999981	575	1996	A motivational speaker discovers that the inheritance his father left for him is in the form of an elephant.	img_1337.jpg
1339	Stefano Quantestorie	http://us.imdb.com/M/title-exact?Stefano%20Quantestorie%20%281993%29	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.30000019	576	1993	What would it have happened if...? Italian director Maurizio Nichetti replies to this question in this humorous film...	img_1339.jpg
1343	Lotto Land	http://us.imdb.com/M/title-exact?Lotto%20Land%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.69999981	578	1995	This film tells two interwoven stories of two single-parent families in a poor, racially-mixed neighborhood in Brooklyn...	img_1343.jpg
1349	Mille bolle blu	http://us.imdb.com/M/title-exact?Mille%20bolle%20blu%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.0999999	580	1993	The movie tells the little stories of a group of families who live in the same building in Rome as seen from the eyes of Sandrino...	img_1349.jpg
1353	1-900	http://us.imdb.com/M/title-exact?06%20(1994)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	6.19999981	583	1994	Sarah, 30, single, well educated, likes art, places a voice ad for phone sex, inviting replies from men under 35...	img_1353.jpg
1354	Venice/Venice	http://us.imdb.com/M/title-exact?Venice/Venice%20(1992)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.0999999	584	1992	Dean is a maverick American film director surprised that his most recent film has been chosen as the Official U.S...	img_1354.jpg
1362	American Strays	http://us.imdb.com/M/title-exact?American%20Strays%20(1996)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.19999981	587	1996	The desert can be a lonely place for the people who live there or for those who are traveling through...	img_1362.jpg
1367	Faust	http://us.imdb.com/M/title-exact?Faust%20%281994%29	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	7.30000019	589	1994	A very free adaptation of Marlowe&#x27;s &#x27;Doctor Faustus&#x27;, Goethe&#x27;s &#x27;Faust&#x27; and various other treatments of the old legend of the man who sold his soul to the devil...	img_1367.jpg
1370	I Can't Sleep (J'ai pas sommeil)	http://us.imdb.com/M/title-exact?J'ai%20pas%20sommeil%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	6.9000001	536	1994	Beautiful Daiga has emigrated from Lithuania to Paris and is looking for a place to stay and work. Theo is a struggling musician...	img_1370.jpg
1377	Hotel de Love	http://us.imdb.com/M/title-exact?Hotel%20de%20Love%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6	593	1996	Twin brothers meet a childhood sweetheart at a tacky hotel and rediscover their love as they renew their competition for her affection.	img_1377.jpg
1379	Love and Other Catastrophes	http://us.imdb.com/M/title-exact?Love%20and%20Other%20Catastrophes%20%281996%29	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	5.80000019	595	1996	A day in the life of two film-school students trying to find love and another house-mate.	img_1379.jpg
1385	Roseanna's Grave (For Roseanna)	http://us.imdb.com/M/title-exact?Roseanna%27s+Grave+(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6.9000001	279	1997	Roseanna is dying of a heart condition, and all she wants is to be buried next to her daughter, in a cemetery that is getting full fast...	img_1385.jpg
1387	Fall	http://us.imdb.com/M/title-exact?Fall+(1997)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	5.5999999	354	1997	Cab driver Michael and supermodel Sarah fall in love while her gorgeous husband Phillippe is in Madrid for two months.	img_1387.jpg
1391	For Ever Mozart	http://us.imdb.com/M/title-exact?For+Ever+Mozart+(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.5	588	1996	</p>	img_1391.jpg
1393	Stag	http://us.imdb.com/M/title-exact?Stag+(1997)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	5.5	598	1997	Victor Mallick returned to his home and found out that all of his friends have arranged a surprise bachelor/stag party for him...	img_1393.jpg
1396	Stonewall	http://us.imdb.com/M/title-exact?Stonewall%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	600	1995	A group of homosexual people try to live with dignity and self-respect while events build to the opening battle in the major gay rights movement.	img_1396.jpg
1408	Gordy	http://us.imdb.com/M/title-exact?Gordy%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	3.4000001	601	1995	A talking pig named Gordy becomes involved in a quest to save his family from the slaughterhouse.	img_1408.jpg
1413	Street Fighter	http://us.imdb.com/M/title-exact?Street%20Fighter%20(1994)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3.5	603	1994	Col. Guile and various other martial arts heroes fight against the tyranny of Dictator M. Bison and his cohorts.	img_1413.jpg
1414	Coldblooded	http://us.imdb.com/M/title-exact?Coldblooded%20(1995)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6.4000001	604	1995	Cosmo, an affectless mob bookie who lives in the basement of a retirement home, is promoted to hitman...	img_1414.jpg
1421	My Crazy Life (Mi vida loca)	http://us.imdb.com/M/title-exact?Mi%20vida%20loca%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.19999981	12	1993	Mousie and Sad Girl are childhood best friends in a contemporary Los Angeles poor Hispanic neighborhood...	img_1421.jpg
1425	I'll Do Anything	http://us.imdb.com/M/title-exact?I'll%20Do%20Anything%20(1994)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	5.5	608	1994	Matt Hobbs is a talented but unsuccessful actor. When estranged (and strange) ex-wife Beth dumps their daughter Jeannie on Matt...	img_1425.jpg
1427	Drunks	http://us.imdb.com/M/title-exact?Drunks%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.0999999	609	1995	At the beginning of a nightly Alcoholics Anonymous meeting, Jim seems particularly troubled. His sponsor encourages him to talk that night...	img_1427.jpg
1436	Mr. Jones	http://us.imdb.com/M/title-exact?Mr.%20Jones%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	5.5	157	1993	The story about the relationship between a manic depressive man, Mr Jones, and the female doctor who takes more than a professional interest in his treatment.	img_1436.jpg
1439	Jason's Lyric	http://us.imdb.com/M/title-exact?Jason's%20Lyric%20(1994)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	6.30000019	612	1994	The story of a young man who must confront his own fears about love as well as his relationships with family and friends...	img_1439.jpg
1441	Moonlight and Valentino	http://us.imdb.com/M/title-exact?Moonlight%20and%20Valentino%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	5.69999981	237	1995	A young widow still grieving over the death of her husband finds herself being comforted by a local housepainter.	img_1441.jpg
1444	That Darn Cat!	http://us.imdb.com/Title?That+Darn+Cat%21+(1965)	0	0	0	0	1	1	0	0	0	0	0	0	0	1	0	0	0	0	0	6.4000001	100	1965	A woman is kidnapped. While in captivity, she manages to send a message out with a wandering cat. The cat&#x27;s owner calls the FBI...	img_1444.jpg
1448	My Favorite Season	http://us.imdb.com/Title?Ma+saison+pr%E9f%E9r%E9e+(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.19999981	616	1993	Old woman Berthe leaves her house to live in her daugter Emilie&#x27;s one. Emilie and her brother Antoine have fallen out three years ago and have not seen each other since...	img_1448.jpg
1450	Golden Earrings	http://us.imdb.com/M/title-exact?Golden%20Earrings%20%281947%29	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	6.5	618	1947	On the eve of World War II (1939) English officer Ralph Denistoun is in Nazi Germany on an espionage mission to recover a poison gas formula from Prof...	img_1450.jpg
1452	Lady of Burlesque	http://us.imdb.com/M/title-exact?Lady%20of%20Burlesque%20(1943)	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	6.4000001	619	1943	After one member of their group is murdered, the performers at a burlesque house must work together to find out who the killer is before they strike again.	img_1452.jpg
1454	Angel and the Badman	http://us.imdb.com/M/title-exact?Angel%20and%20the%20Badman%20(1947)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	6.69999981	621	1947	Quirt Evens an all round bad guy is nursed back to health and sought after by Penelope Worth a quaker girl...	img_1454.jpg
1459	Madame Butterfly	http://us.imdb.com/M/title-exact?Madame%20Butterfly%20(1995)	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	7	623	1995	</p>	img_1459.jpg
1460	Sleepover	http://us.imdb.com/M/title-exact?Sleepover%20(1995)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	4.4000001	624	1995	</p>	img_1460.jpg
1465	Last Summer in the Hamptons	http://us.imdb.com/M/title-exact?Last%20Summer%20in%20the%20Hamptons%20(1995)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.0999999	584	1995	Filmed entirely on location in East Hampton, Long Island, &#x22;Last Summer in the Hamptons&#x22; concerns...	img_1465.jpg
1466	Margaret's Museum	http://us.imdb.com/M/title-exact?Margaret's%20Museum%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7	626	1995	In a town where half the men die down the coalpit, Margaret MacNeil is quite happy being single. Until she meets Neil Currie...	img_1466.jpg
1471	Hideaway	http://us.imdb.com/M/title-exact?Hideaway%20(1995)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	5.19999981	527	1995	Hatch Harrison had a traffic accident with his car. At first the doctors said he was dead but then they succeeded to bring him back to life after two hours...	img_1471.jpg
1476	Raw Deal	http://us.imdb.com/M/title-exact?Raw%20Deal%20(1948)	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	7.4000001	630	1948	Joe Sullivan is itching to get out of prison. He&#x27;s taken the rap for Rick, who owes him $50 Grand...	img_1476.jpg
1478	Dead Presidents	http://us.imdb.com/M/title-exact?Dead%20Presidents%20(1995)	0	1	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	6.69999981	632	1995	A Vietnam vet adjusts to life after the war while trying to support his family, but the chance of a better life may involve crime and bloodshed.	img_1478.jpg
1481	S.F.W.	http://us.imdb.com/M/title-exact?S.F.W.%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.69999981	633	1994	An alienated and misanthropic teenager gains sudden and unwanted celebrity status after he&#x27;s taken hostage by terrorists where his indifference to their threats to kill him makes news headlines.	img_1481.jpg
1487	Even Cowgirls Get the Blues	http://us.imdb.com/M/title-exact?Even%20Cowgirls%20Get%20the%20Blues%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	4	262	1993	Sissy Hankshaw is born with enormous thumbs that help her hitchhiking through the US from a young age...	img_1487.jpg
1489	Chasers	http://us.imdb.com/M/title-exact?Chasers%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.69999981	635	1994	A hapless Navy grunt is assigned SP duty. The catch : he must escort a beautiful female prisoner on her way to prison for going UA. She in turn will try anything to escape.	img_1489.jpg
1496	Carpool	http://us.imdb.com/M/title-exact?Carpool%20(1996)	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	4.5999999	638	1996	A man with an important business meeting finds himself having to take care of the carpool for the neighborhood school children when his wife gets sick...	img_1496.jpg
1505	Killer: A Journal of Murder	http://us.imdb.com/M/title-exact?Killer:%20A%20Journal%20of%20Murder%20(1995)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	6.30000019	641	1995	Carl Panzram is sent to Leavenworth Prison for burglary. While there, he is brutally beaten by a guard...	img_1505.jpg
1506	Nelly & Monsieur Arnaud	http://us.imdb.com/M/title-exact?Nelly%20%26%20Monsieur%20Arnaud%20%281995%29	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.30000019	642	1995	When Nelly, a woman being just divorced, meets by chance M. Arnaud, a mature salesman just retired, begins a strange and special relationship between the two personalities.	img_1506.jpg
1510	Mad Dog Time	http://us.imdb.com/M/title-exact?Mad%20Dog%20Time%20(1996)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	5.19999981	643	1996	With his boss in the madhouse, a mobster is temporary boss of the criminal empire just as vicious rivals threaten the control of the empire.	img_1510.jpg
1512	World of Apu, The (Apur Sansar)	http://us.imdb.com/M/title-exact?Apur%20Sansar%20(1959)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.9000001	617	1959	Apu is a jobless ex-student dreaming vaguely of a future as a writer. An old college friend talks him into a visit up-country to a village wedding...	img_1512.jpg
1515	Wings of Courage	http://us.imdb.com/M/title-exact?Wings%20of%20Courage%20(1995)	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	6.5	322	1995	While flying mail across the Andean mountains, Henri Guillaumet&#x27;s plane has to crash-land, he must trek back to civilizatin on foot.	img_1515.jpg
1518	Losing Isaiah	http://us.imdb.com/M/title-exact?Losing%20Isaiah%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.0999999	646	1995	The natural and adoptive mothers of a young boy are involved in a bitter, controversial custody battle.	img_1518.jpg
1521	Mr. Wonderful	http://us.imdb.com/M/title-exact?Mr.%20Wonderful%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	5.69999981	648	1993	Electrician Gus gets the chance to fulfill a childhood dream by buying an old bowling-alley with some of his friends...	img_1521.jpg
1529	Underground	http://us.imdb.com/M/title-exact?Underground%20(1995)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	8.10000038	652	1995	The story follows an underground weapons manufacturer in Belgrade during WWII and evolves into fairly surreal situations...	img_1529.jpg
1530	Jefferson in Paris	http://us.imdb.com/M/title-exact?Jefferson%20in%20Paris%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.5999999	490	1995	One of the obsessive speculations in American history is whether Thomas Jefferson, in the years before he became president...	img_1530.jpg
1534	Twin Town	http://us.imdb.com/M/title-exact?Twin%20Town%20%281997%29	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	6.30000019	654	1997	Twin Town opens with wide sweeping shots of seaside Swansea; to be the place of action for the next one and a half hours...	img_1534.jpg
1543	Johns	http://us.imdb.com/M/title-exact?Johns%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.0999999	657	1996	It&#x27;s the day before Christmas, the day before John&#x27;s 21st birthday. He&#x27;s a prostitute on Santa Monica Blvd in L.A....	img_1543.jpg
1545	Frankie Starlight	http://us.imdb.com/M/title-exact?Frankie%20Starlight%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.5999999	658	1995	This is a story of a man (Walker), suffering from dwarfism, who writes an autobiographical account of his life...	img_1545.jpg
1554	Safe Passage	http://us.imdb.com/M/title-exact?Safe%20Passage%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.0999999	660	1994	A mother with seven sons feels like she&#x27;s losing control of her life and her family. But personal...	img_1554.jpg
1556	Condition Red	http://us.imdb.com/M/title-exact?Condition%20Red%20(1995)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	4.80000019	661	1995	Prison guard falls in love with inmate. She wants him to let her escape.	img_1556.jpg
1560	Clean Slate (Coup de Torchon)	http://us.imdb.com/M/title-exact?Coup%20de%20torchon%20(1981)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	7.5999999	662	1981	1938, in a French african colony. Lucien Cordier is the cop of this village, populated with blacks and a few whites (usually racialist and lustful)...	img_1560.jpg
1564	To Cross the Rubicon	http://us.imdb.com/M/title-exact?To%20Cross%20the%20Rubicon%20(1991)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	3.5999999	663	1991	</p>	img_1564.jpg
1565	Daens	http://us.imdb.com/M/title-exact?Daens%20(1992)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.5999999	664	1992	In the 1890s, Father Adolf Daens goes to Aalst, a textile town where child labor is rife, pay and working conditions are horrible...	img_1565.jpg
1582	T-Men	http://us.imdb.com/M/title-exact?T-Men%20(1947)	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	7.0999999	630	1947	Two US Treasury agents hunt a successful counterfeiting ring.	img_1582.jpg
1587	Terror in a Texas Town	http://us.imdb.com/M/title-exact?Terror%20in%20a%20Texas%20Town%20(1958)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	6.9000001	670	1958	A Swedish whaler is out for revenge when he finds out that a greedy oil man murdered his father for their land.	img_1587.jpg
1594	Everest	http://us.imdb.com/Title?Everest+(1998)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	7.19999981	672	1998	An international team of climbers ascends Mt. Everest in the spring of 1996. The film depicts their lengthy preparations for the climb...	img_1594.jpg
1597	Romper Stomper	http://us.imdb.com/M/title-exact?Romper%20Stomper%20(1992)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.80000019	673	1992	A group of skinheads become alarmed at the way their neighbourhood is changing.	img_1597.jpg
1599	Someone Else's America	http://us.imdb.com/M/title-exact?Someone%20Else's%20America%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.69999981	674	1995	This tale take place in a bar. The Spanish Alonso and his blind mother run this place. Bay, who is Alonso&#x27;s friend live here too...	img_1599.jpg
1604	He Walked by Night	http://us.imdb.com/M/title-exact?He%20Walked%20by%20Night%20(1948)	0	0	0	0	0	0	1	0	0	0	1	0	0	0	0	0	1	0	0	7.19999981	676	1948	This film-noir piece, told in semi-documentary style, follows police on the hunt for a resourceful criminal who shoots and kills a cop.	img_1604.jpg
1608	Buddy	http://us.imdb.com/M/title-exact?Buddy%20%281997%29	0	0	1	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	4.69999981	678	1997	An eccentric socialite raises a gorilla as her son.	img_1608.jpg
1611	Intimate Relations	http://us.imdb.com/M/title-exact?Intimate%20Relations%20%281996%29	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.19999981	680	1996	Harold Guppy moves into the Beasley household as a lodger. Before long Mrs. Beasley falls for him and eventually ends up in his bed...	img_1611.jpg
1613	Tokyo Fist	http://us.imdb.com/M/title-exact?Tokyo+Fist+(1995)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	596	1995	A businessman, Tsuda, runs into a childhood friend, Tajuki, on the subway. Tajuki is working as a semiprofessional boxer...	img_1613.jpg
1616	Desert Winds	http://us.imdb.com/M/title-exact?Desert%20Winds%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.69999981	682	1995	Jackie and Eugene are joined by a mystical wind tunnel which enables them to speak across a 500-mile desert...	img_1616.jpg
1619	All Things Fair	http://us.imdb.com/Title?Lust+och+f%E4gring+stor+(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	683	1995	Malm&#xF6;, Sweden during the Second World War. Stig is a 15 year old pupil on the verge of adulthood...	img_1619.jpg
1621	Butterfly Kiss	http://us.imdb.com/M/title-exact?Butterfly%20Kiss%20(1995)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6.4000001	103	1995	Eunice is walking along the highways of northern England from one filling station to another. She is searching for Judith...	img_1621.jpg
1624	Hush	http://us.imdb.com/Title?Hush+(1998)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	4.9000001	685	1998	Helen is the young girlfriend of good-looking Jackson Baring. When Helen gets pregnant and marries Jackson...	img_1624.jpg
1628	Lamerica	http://us.imdb.com/M/title-exact?Lamerica%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.5	687	1994	Two Italian racketeers come to Albania just after the fall of the communists to set up a fictive firm and pocket the grants...	img_1628.jpg
1631	Slingshot, The	http://us.imdb.com/Title?K%E5disbellan+(1993)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.5	689	1993	Stocholm in the 1920s. Young Roland lives with his socialist father, Jewish mother and a boxing brother...	img_1631.jpg
1637	Girls Town	http://us.imdb.com/M/title-exact?Girls%20Town%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.9000001	691	1996	A look at a group of girl friends coming-of-age during their senior year of high school in urban America...	img_1637.jpg
1642	Some Mother's Son	http://us.imdb.com/M/title-exact?Some%20Mother's%20Son%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7	692	1996	Based on the true story of the 1981 hunger strike in a British prison, in which IRA prisoner Bobby Sands...	img_1642.jpg
1647	Hana-bi	http://us.imdb.com/Title?Hana-bi+(1997)	0	0	0	0	0	1	1	0	1	0	0	0	0	0	0	0	0	0	0	7.80000019	694	1997	A police officer leaves the force in the face of harrowing personal and professional difficulties. Spiraling into a depression he makes questionable decisions.	img_1647.jpg
1654	Chairman of the Board	http://us.imdb.com/Title?Chairman+of+the+Board+(1998)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	2.0999999	537	1998	A surfer becomes the head of a major company.	img_1654.jpg
1662	Rough Magic	http://us.imdb.com/M/title-exact?Rough%20Magic%20%281995%29	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	5.19999981	697	1995	Set in the 1950s, Rough Magic tells the story of what happens when a pretty apprentice magician goes to Mexico to escape her fianc&#xE9;...	img_1662.jpg
1663	Nothing Personal	http://us.imdb.com/M/title-exact?Nothing%20Personal%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	6.69999981	698	1995	A raw depiction of the Belfast &#x27;troubles&#x27; as savage tribal warfare. Set shortly after the 1975 cease fire...	img_1663.jpg
1666	Ripe	http://us.imdb.com/M/title-exact?Ripe%20%281996%29	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	3	700	1996	When their abusive parents are killed in a car crash, twin sisters Rosie and Violet vow to run away to Kentucky in search of a better life...	img_1666.jpg
1672	Kika	http://us.imdb.com/M/title-exact?Kika%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.30000019	702	1993	Kika, a young cosmetologist, is called to the mansion of Nicolas, an American writer to make-up the corpse of his stepson...	img_1672.jpg
1674	Mamma Roma	http://us.imdb.com/M/title-exact?Mamma%20Roma%20(1962)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.80000019	704	1962	Mamma Roma is a middle-aged whore of Roma. Now she can quit her job to become a fruit seller. And she can take back her 16-year-old son...	img_1674.jpg
41	Billy Madison	http://us.imdb.com/M/title-exact?Billy%20Madison%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.30000019	41	1995	In order to inherit his fed up father&#x27;s hotel empire, an immature and lazy man must repeat grades 1-12 all over again.	img_41.jpg
46	Exotica	http://us.imdb.com/M/title-exact?Exotica%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	43	1994	The &#x27;Exotica&#x27; is a nightclub on the outskirts of Toronto, where Eric, DJ and MC, watches nightly as his ex-girlfriend Christina performs...	img_46.jpg
48	Hoop Dreams	http://us.imdb.com/M/title-exact?Hoop%20Dreams%20(1994)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	8.10000038	45	1994	A film following the lives of two inner-city Chicago boys who struggle to become college basketball players on the road to going professional.	img_48.jpg
49	I.Q.	http://us.imdb.com/M/title-exact?I.Q.%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6	46	1994	Albert Einstein helps a young man who&#x27;s in love with Einstein&#x27;s niece to catch her attention by pretending temporarily to be a great physicist.	img_49.jpg
51	Legends of the Fall	http://us.imdb.com/M/title-exact?Legends%20of%20the%20Fall%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	1	1	7.30000019	48	1994	Epic tale of three brothers and their father living in the remote wilderness of 1900s USA and how their lives are affected by nature, history, war, and love.	img_51.jpg
2	GoldenEye	http://us.imdb.com/M/title-exact?GoldenEye%20(1995)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	7.19999981	11	1995	James Bond teams up with the lone survivor of a destroyed Russian research center to stop the hijacking of a nuclear space weapon by a fellow agent believed to be dead.	img_2.jpg
4	Get Shorty	http://us.imdb.com/M/title-exact?Get%20Shorty%20(1995)	0	1	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	13	1995	A mobster travels to Hollywood to collect a debt and discovers that the movie business is much the same as his current job.	img_4.jpg
6	Shanghai Triad (Yao a yao yao dao waipo qiao)	http://us.imdb.com/Title?Yao+a+yao+yao+dao+waipo+qiao+(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	15	1995	A provincial boy related to a Shanghai crime family is recruited by his uncle into cosmopolitan Shanghai in the 1930s to be a servant to a ganglord&#x27;s mistress.	img_6.jpg
8	Babe	http://us.imdb.com/M/title-exact?Babe%20(1995)	0	0	0	0	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	7	17	1995	Babe, a pig raised by sheepdogs, learns to herd sheep with a little help from Farmer Hoggett.	img_8.jpg
10	Richard III	http://us.imdb.com/M/title-exact?Richard%20III%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	7.4000001	19	1995	The classic Shakespearean play about a murderously scheming king staged in an alternative fascist England setting.	img_10.jpg
13	Mighty Aphrodite	http://us.imdb.com/M/title-exact?Mighty%20Aphrodite%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7	21	1995	When he discovers his adopted son is a genius, a New York sportswriter seeks out the boy&#x27;s birth mother: a prostitute.	img_13.jpg
16	French Twist (Gazon maudit)	http://us.imdb.com/M/title-exact?Gazon%20maudit%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6.19999981	23	1995	After learning of her husband&#x27;s infidelities, a housewife invites an itinerant lesbian to move in with them. None of their lives will ever be the same again.	img_16.jpg
19	Antonia's Line	http://us.imdb.com/M/title-exact?Antonia%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.19999981	25	1995	A Dutch matron establishes and, for several generations, oversees a close-knit, matriarchal community where feminism and liberalism thrive.	img_19.jpg
22	Braveheart	http://us.imdb.com/M/title-exact?Braveheart%20(1995)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	8.39999962	28	1995	When his secret bride is executed for assaulting an English soldier whom tried to rape her, a commoner begins a revolt and leads Scottish warriors against the cruel English tyrant who rules Scotland with an iron-fist.	img_22.jpg
23	Taxi Driver	http://us.imdb.com/M/title-exact?Taxi%20Driver%20(1976)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	8.5	29	1976	A mentally unstable Vietnam war veteran works as a nighttime taxi driver in New York City where the perceived decadence and sleaze feeds his urge to violently lash out, attempting to save a teenage prostitute in the process.	img_23.jpg
29	Batman Forever	http://us.imdb.com/M/title-exact?Batman%20Forever%20(1995)	0	1	1	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	5.4000001	32	1995	Batman must battle Two-Face and The Riddler with help of an amourous psychologist and a young circus acrobat who becomes his sidekick, Robin.	img_29.jpg
31	Crimson Tide	http://us.imdb.com/M/title-exact?Crimson%20Tide%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	1	0	7.19999981	34	1995	On a US nuclear missile sub, a young first officer stages a mutiny to prevent his trigger happy captain from launching his missiles before confirming his orders to do so.	img_31.jpg
35	Free Willy 2: The Adventure Home	http://us.imdb.com/M/title-exact?Free%20Willy%202:%20The%20Adventure%20Home%20(1995)	0	0	1	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	4.5	36	1995	Jesse becomes reunited with Willy three years after the whale&#x27;s jump to freedom as the teenager tries to rescue the killer whale and other orcas from an oil spill.	img_35.jpg
1	Toy Story	http://us.imdb.com/M/title-exact?Toy%20Story%20(1995)	0	0	0	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	8.30000019	38	1995	A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy&#x27;s room.	img_1.jpg
37	Nadja	http://us.imdb.com/M/title-exact?Nadja%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.80000019	39	1994	This ultra-hip, post-modern vampire tale is set in contemporary New York City. Members of a dysfunctional family of vampires are trying to come to terms with each other...	img_37.jpg
53	Natural Born Killers	http://us.imdb.com/M/title-exact?Natural%20Born%20Killers%20(1994)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	7.19999981	49	1994	Two victims of traumatized childhoods become lovers and psychopathic serial murderers irresponsibly glorified by the mass media.	img_53.jpg
54	Outbreak	http://us.imdb.com/M/title-exact?Outbreak%20(1995)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	6.5	50	1995	Extreme measures are necessary to contain an epidemic of a deadly airborne virus. But how extreme, exactly?	img_54.jpg
1681	You So Crazy	http://us.imdb.com/M/title-exact?You%20So%20Crazy%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6	70	1994	Stand up comedy by Martin Lawrence, filmed in the Majestic Theater in New York City. Martin Lawrence talks about everything from racism, to relationships, to his childhood.	img_1681.jpg
56	Pulp Fiction	http://us.imdb.com/M/title-exact?Pulp%20Fiction%20(1994)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	9	52	1994	The lives of two mob hit men, a boxer, a gangster&#x27;s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.	img_56.jpg
58	Quiz Show	http://us.imdb.com/M/title-exact?Quiz%20Show%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.5	53	1994	Dick Goodwin discovers game shows are fixed: Charles Van Doren is fed answers so he beats Herbie Stempel.	img_58.jpg
65	What's Eating Gilbert Grape	http://us.imdb.com/M/title-exact?What's%20Eating%20Gilbert%20Grape%20(1993)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	7.69999981	55	1993	Gilbert has to care for his brother Arnie and his obese mother, which gets in the way when love walks into his life.	img_65.jpg
67	Ace Ventura: Pet Detective	http://us.imdb.com/M/title-exact?Ace%20Ventura:%20Pet%20Detective%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.80000019	57	1994	A goofy detective specializing in animals goes in search of a missing dolphin mascot of a football team.	img_67.jpg
70	Four Weddings and a Funeral	http://us.imdb.com/M/title-exact?Four%20Weddings%20and%20a%20Funeral%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	7	59	1994	Over the course of five social occasions, a committed bachelor must consider the notion that he may have discovered love.	img_70.jpg
75	Brother Minister: The Assassination of Malcolm X	http://us.imdb.com/M/title-exact?Brother%20Minister:%20The%20Assassination%20of%20Malcolm%20X%20(1994)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	4.9000001	61	1994	Brother Minister reveals the mystery surrounding the assassination of Malcolm X at the Audubon Ballroom in New York City on February 21...	img_75.jpg
80	Hot Shots! Part Deux	http://us.imdb.com/M/title-exact?Hot%20Shots!%20Part%20Deux%20(1993)	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	6.4000001	64	1993	&#x22;Rambo&#x22; parody in which Topper Harley leads a rescue team into Iraq to save Iraqi war prisoners and all of their previous rescue teams.	img_80.jpg
83	Much Ado About Nothing	http://us.imdb.com/M/title-exact?Much%20Ado%20About%20Nothing%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	7.30000019	66	1993	Young lovers Hero and Claudio, soon to wed, conspire to get verbal sparring partners and confirmed singles Benedick and Beatrice to wed as well.	img_83.jpg
88	Sleepless in Seattle	http://us.imdb.com/M/title-exact?Sleepless%20in%20Seattle%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6.69999981	68	1993	A recently-widowed man&#x27;s son calls a radio talk show in an attempt to find his father a partner.	img_88.jpg
90	So I Married an Axe Murderer	http://us.imdb.com/M/title-exact?So%20I%20Married%20an%20Axe%20Murderer%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	1	0	0	6.19999981	70	1993	A San Francisco poet who fears commitment has a girlfriend who he suspects may not be who she appears.	img_90.jpg
93	Welcome to the Dollhouse	http://us.imdb.com/Title?Welcome+to+the+Dollhouse+(1995)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	7.30000019	71	1995	Insightful look at an unattractive 7th grader as she struggles to cope with un-attentive parents, snobbish classmates, a smart older brother, an attractive younger sister, and her own insecurities.	img_93.jpg
95	Aladdin	http://us.imdb.com/M/title-exact?Aladdin%20(1992)	0	0	0	1	1	1	0	0	0	0	0	0	1	0	0	0	0	0	0	7.9000001	73	1992	Aladdin, a street urchin, accidentally meets Princess Jasmine, who is in the city undercover. They love each other, but she can only marry a prince.	img_95.jpg
96	Terminator 2: Judgment Day	http://us.imdb.com/M/title-exact?Terminator%202:%20Judgment%20Day%20(1991)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	8.60000038	74	1991	The cyborg who once tried to kill Sarah Connor is dead, and another T-101 must now protect her teenage son, John Connor, from an even more powerful and advanced Terminator, the T-1000.	img_96.jpg
99	Snow White and the Seven Dwarfs	http://us.imdb.com/M/title-exact?Snow%20White%20and%20the%20Seven%20Dwarfs%20(1937)	0	0	0	1	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	7.80000019	76	1937	Snow White, pursued by a jealous queen, hides with the Dwarfs; the queen feeds her a poison apple, but Prince Charming awakens her with a kiss.	img_99.jpg
103	All Dogs Go to Heaven 2	http://us.imdb.com/M/title-exact?All%20Dogs%20Go%20to%20Heaven%202%20(1996)	0	0	0	1	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	4.9000001	79	1996	Charlie and Itchy return to Earth to find Gabriel&#x27;s Horn, but along the way meet up with a young boy named David, who ran away from home.	img_103.jpg
105	Sgt. Bilko	http://us.imdb.com/M/title-exact?Sgt.%20Bilko%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.30000019	80	1996	This movie is a remake of the hit series which starred, Phil Silvers as Sgt. Bilko. In this movie, Bilko runs the motor pool and has all sorts of scams going on like gambling...	img_105.jpg
107	Moll Flanders	http://us.imdb.com/M/title-exact?Moll%20Flanders%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.19999981	82	1996	The daughter of a thief, young Moll is placed in the care of a nunnery after the execution of her mother...	img_107.jpg
108	Kids in the Hall: Brain Candy	http://us.imdb.com/M/title-exact?Kids%20in%20the%20Hall:%20Brain%20Candy%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.5	83	1996	A pharmaceutical scientist creates a pill that makes people remember their happiest memory, and although it&#x27;s successful, it has unfortunate side effects.	img_108.jpg
112	Flipper	http://us.imdb.com/M/title-exact?Flipper%20(1996)	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5	85	1996	Sandy Ricks is sent by his mom to Coral Key, a rustic island in the Florida keys, to spend the summer with his uncle Porter Ricks...	img_112.jpg
119	Maya Lin: A Strong Clear Vision	http://us.imdb.com/M/title-exact?Maya%20Lin:%20A%20Strong%20Clear%20Vision%20(1994)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	7.30000019	87	1994	A film about the work of the artist most famous for her monuments such as the Vietnam Memorial Wall and the Civil Rights Fountain Memorial.	img_119.jpg
121	Independence Day (ID4)	http://us.imdb.com/M/title-exact?Independence%20Day%20(1996)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	6.80000019	54	1996	The aliens are coming and their goal is to invade and destroy. Fighting superior technology, Man&#x27;s best weapon is the will to survive.	img_121.jpg
125	Phenomenon	http://us.imdb.com/M/title-exact?Phenomenon%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.30000019	56	1996	An ordinary man sees a bright light descend from the sky, and discovers he now has super-intelligence and telekinesis.	img_125.jpg
130	Kansas City	http://us.imdb.com/M/title-exact?Kansas%20City%20(1996)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	6.0999999	91	1996	Robert Altman&#x27;s jazz-scored film explores themes of love, crime, race, and politics in 1930&#x27;s Kansas City...	img_130.jpg
131	Breakfast at Tiffany's	http://us.imdb.com/M/title-exact?Breakfast%20at%20Tiffany's%20(1961)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7.80000019	92	1961	A young New York socialite becomes interested in a young man who has moved into her apartment building.	img_131.jpg
134	Citizen Kane	http://us.imdb.com/M/title-exact?Citizen%20Kane%20(1941)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8.5	94	1941	Following the death of a publishing tycoon, news reporters scramble to discover the meaning of his final utterance.	img_134.jpg
136	Mr. Smith Goes to Washington	http://us.imdb.com/M/title-exact?Mr.%20Smith%20Goes%20to%20Washington%20(1939)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8.30000019	96	1939	A naive man is appointed to fill a vacancy in the US Senate. His plans promptly collide with political corruption, but he doesn&#x27;t back down.	img_136.jpg
138	D3: The Mighty Ducks	http://us.imdb.com/M/title-exact?D3:%20The%20Mighty%20Ducks%20(1996)	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.80000019	98	1996	In the third episode of this series, the Ducks get scholarships to Eden Hall Academy, a high ranking prep school. But as freshmen, they will have to face the snob varsity team...	img_138.jpg
142	Bedknobs and Broomsticks	http://us.imdb.com/M/title-exact?Bedknobs%20and%20Broomsticks%20(1971)	0	0	1	0	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	6.80000019	100	1971	An apprentice witch, three kids and a cynical conman search for the missing component to a magic spell useful to the defense of Britain.	img_142.jpg
146	Unhook the Stars	http://us.imdb.com/M/title-exact?Unhook%20the%20Stars%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.5999999	102	1996	Character study about Mildred, an elderly woman who has spent her life caring for others. When her daughter finally leaves home...	img_146.jpg
150	Swingers	http://us.imdb.com/M/title-exact?Swingers%20(1996)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	7.4000001	104	1996	Wannabe actors become regulars in the stylish neo-lounge scene; Trent teaches his friend Mike the unwritten rules of the scene.	img_150.jpg
152	Sleeper	http://us.imdb.com/M/title-exact?Sleeper%20(1973)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	7.30000019	21	1973	A nerdish store owner is revived out of cryostasis into a future world to fight an oppressive government.	img_152.jpg
154	Monty Python's Life of Brian	http://us.imdb.com/M/title-exact?Life%20of%20Brian%20(1979)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	8.19999981	105	1979	Brian is born on the original Christmas, in the stable next door. He spends his life being mistaken for a messiah.	img_154.jpg
156	Reservoir Dogs	http://us.imdb.com/M/title-exact?Reservoir%20Dogs%20(1992)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	8.39999962	52	1992	After a simple jewelery heist goes terribly wrong, the surviving criminals begin to suspect that one of them is a police informant.	img_156.jpg
158	Weekend at Bernie's	http://us.imdb.com/M/title-exact?Weekend%20at%20Bernie's%20(1989)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.0999999	107	1989	A pair of losers try to pretend that their murdered employer is really alive, but the murderer is out to &#x22;finish him off.&#x22;	img_158.jpg
160	Glengarry Glen Ross	http://us.imdb.com/M/title-exact?Glengarry%20Glen%20Ross%20(1992)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.9000001	109	1992	An examination of the machinations behind the scenes at a real estate office.	img_160.jpg
162	On Golden Pond	http://us.imdb.com/M/title-exact?On%20Golden%20Pond%20(1981)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.5999999	110	1981	The loons are back again on Golden Pond and so are Norman Thayer, a retired professor, and Ethel who have had a summer cottage there since early in their marriage...	img_162.jpg
166	Manon of the Spring (Manon des sources)	http://us.imdb.com/M/title-exact?Manon%20des%20sources%20(1986)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8	111	1986	A beautiful but shy shepherdess plots vengeance on the men whose greedy conspiracy to acquire her her father&#x27;s land caused his death years earlier.	img_166.jpg
171	Delicatessen	http://us.imdb.com/M/title-exact?Delicatessen%20(1991)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	7.69999981	113	1991	Post-apocalyptic surrealist black comedy about the landlord of an apartment building who occasionally prepares a delicacy for his odd tenants.	img_171.jpg
175	Brazil	http://us.imdb.com/M/title-exact?Brazil%20(1985)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	8	16	1985	A bureaucrat in a retro-future world tries to correct an administrative error and himself becomes an enemy of the state.	img_175.jpg
178	12 Angry Men	http://us.imdb.com/M/title-exact?12%20Angry%20Men%20(1957)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8.89999962	114	1957	A dissenting juror in a murder trial slowly manages to convince the others that the case is not as obviously clear as it seemed in court.	img_178.jpg
183	Alien	http://us.imdb.com/M/title-exact?Alien%20(1979)	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	1	1	0	0	8.5	69	1979	The crew of a commercial deep space mining ship, investigating a suspected S.O.S., lands on a distant planet and discovers a nest of strange eggs.	img_183.jpg
188	Full Metal Jacket	http://us.imdb.com/M/title-exact?Full%20Metal%20Jacket%20(1987)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	8.39999962	95	1987	A pragmatic U.S. Marine observes the dehumanizing effects the Vietnam War has on his fellow Marine recruits from their brutal boot camp training to the bloody street fighting set in 1968 in Hue, Vietnam.	img_188.jpg
191	Amadeus	http://us.imdb.com/M/title-exact?Amadeus%20(1984)	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	8.39999962	117	1984	The incredible story of Wolfgang Amadeus Mozart, told in flashback by his peer and secret rival Antonio Salieri - now confined to an insane asylum.	img_191.jpg
192	Raging Bull	http://us.imdb.com/M/title-exact?Raging%20Bull%20(1980)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8.30000019	29	1980	An emotionally self-destructive boxer&#x27;s journey through life, as the violence and temper that leads him to the top in the ring, destroys his life outside it.	img_192.jpg
201	Evil Dead II	http://us.imdb.com/M/title-exact?Evil%20Dead%20II%20(1987)	0	1	1	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	7.80000019	119	1987	The lone survivor of an onslaught of flesh-possessing spirits holds up in a cabin with a group of strangers while the demons continue their attack.	img_201.jpg
202	Groundhog Day	http://us.imdb.com/M/title-exact?Groundhog%20Day%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	8.10000038	120	1993	A weatherman finds himself living the same day over and over again.	img_202.jpg
204	Back to the Future	http://us.imdb.com/M/title-exact?Back%20to%20the%20Future%20(1985)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	8.5	58	1985	A teenager is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his friend, Dr. Emmett Brown, and must make sure his high-school-age parents unite in order to save his own existence.	img_204.jpg
206	Akira	http://us.imdb.com/M/title-exact?Akira%20(1988)	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	8	123	1988	A secret military project endangers Neo-Tokyo when it turns a biker gang member into a rampaging psionic psychopath that only two kids and a group of psionics can stop.	img_206.jpg
208	Young Frankenstein	http://us.imdb.com/M/title-exact?Young%20Frankenstein%20(1974)	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	8	125	1974	Dr. Frankenstein&#x27;s grandson, after years of living down the family reputation, inherits granddad&#x27;s castle and repeats the experiments.	img_208.jpg
210	Indiana Jones and the Last Crusade	http://us.imdb.com/M/title-exact?Indiana%20Jones%20and%20the%20Last%20Crusade%20(1989)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	8.30000019	65	1989	When Dr. Henry Jones Sr. suddenly goes missing while pursuing the Holy Grail, eminent archaeologist Indiana Jones must follow in his father&#x27;s footsteps and stop the Nazis.	img_210.jpg
215	Field of Dreams	http://us.imdb.com/M/title-exact?Field%20of%20Dreams%20(1989)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.5	127	1989	An Iowa corn farmer, hearing voices, interprets them as a command to build a baseball diamond in his fields; he does, and the Chicago Black Sox come.	img_215.jpg
218	Cape Fear	http://us.imdb.com/M/title-exact?Cape%20Fear%20(1991)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	7.30000019	29	1991	A convicted rapist, released from prison after serving a 14 year sentence, stalks the family of the lawyer who originally defended him.	img_218.jpg
222	Star Trek: First Contact	http://us.imdb.com/M/title-exact?Star%20Trek:%20First%20Contact%20(1996)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	7.5	129	1996	Captain Picard and his crew pursue the Borg back in time to stop them from preventing Earth from initiating first contact with alien life.	img_222.jpg
224	Ridicule	http://us.imdb.com/M/title-exact?Ridicule%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.30000019	131	1996	To get royal backing on a needed drainage project, a poor French lord must learn to play the delicate games of wit at court at Versailles.	img_224.jpg
226	Die Hard 2	http://us.imdb.com/M/title-exact?Die%20Hard%202%20(1990)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	7.0999999	132	1990	John McClane, officer of the LAPD and hero of the Nakatomi Hostage Crisis, attempts to avert disaster as rogue military officials seize control of Dulles International Airport in Washington, D.C.	img_226.jpg
227	Star Trek VI: The Undiscovered Country	http://us.imdb.com/M/title-exact?Star%20Trek%20VI:%20The%20Undiscovered%20Country%20(1991)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	7.19999981	133	1991	On the eve of retirement, Kirk and McCoy are charged with assassinating the Klingon High Chancellor and imprisoned. The Enterprise crew must help them escape to thwart a conspiracy aimed at sabotaging the last best hope for peace.	img_227.jpg
229	Star Trek III: The Search for Spock	http://us.imdb.com/M/title-exact?Star%20Trek%20III:%20The%20Search%20for%20Spock%20(1984)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	6.5	134	1984	Admiral Kirk and his bridge crew risk their careers stealing the decommissioned Enterprise to return to the restricted Genesis planet to recover Spock&#x27;s body.	img_229.jpg
231	Batman Returns	http://us.imdb.com/M/title-exact?Batman%20Returns%20(1992)	0	1	1	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	7	44	1992	When a corrupt businessman and the grotesque Penguin plot to take control of Gotham City, only Batman can stop them, while the Catwoman has her own agenda.	img_231.jpg
233	Under Siege	http://us.imdb.com/M/title-exact?Under%20Siege%20(1992)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6.30000019	136	1992	A former SEAL, now cook, is the only person who can stop a gang of terrorists when they seize control of a US Navy battleship.	img_233.jpg
235	Mars Attacks!	http://us.imdb.com/M/title-exact?Mars%20Attacks!%20(1996)	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	1	0	6.30000019	44	1996	The Earth is invaded by Martians with irresistible weapons and a cruel sense of humor.	img_235.jpg
236	Citizen Ruth	http://us.imdb.com/M/title-exact?Citizen%20Ruth%20(1996)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	137	1996	An irresponsible, drug-addicted, recently impregnated woman finds herself in the middle of an abortion debate when both parties attempt to sway her to their respective sides.	img_236.jpg
238	Raising Arizona	http://us.imdb.com/M/title-exact?Raising%20Arizona%20(1987)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.4000001	77	1987	When a childless couple of an ex-con and an ex-cop decide to help themselves to one of another family&#x27;s quintupelets, their lives get more complicated than they anticipated.	img_238.jpg
244	Smilla's Sense of Snow	http://us.imdb.com/M/title-exact?Smilla%27s%20Sense%20of%20Snow%20(1997)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	6.19999981	139	1997	Based on Peter Hoeg&#x27;s bestseller, this film is set in snowy Copenhagen where a small boy is found dead after he fell off a roof...	img_244.jpg
247	Turbo: A Power Rangers Movie	http://us.imdb.com/M/title-exact?Turbo%3A%20A%20Power%20Rangers%20Movie%20%281997%29	0	1	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	2.79999995	141	1997	The legendary Power Rangers must stop the evil space pirate Divatox from releasing the powerful Maligore from his volcanic imprisonment on the island of Muranthias...	img_247.jpg
248	Grosse Pointe Blank	http://us.imdb.com/M/title-exact?Grosse%20Pointe%20Blank%20%281997%29	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	7.4000001	142	1997	Martin Blank is a professional assassin. He is sent on a mission to a small Detroit suburb, Grosse Pointe, and, by coincidence, his ten-year high school reunion party is taking place there at the same time.	img_248.jpg
254	Batman & Robin	http://us.imdb.com/M/title-exact?Batman+%26+Robin+(1997)	0	1	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	3.5999999	32	1997	Batman &#x26; Robin try to keep their relationship together even as they must stop Mr. Freeze and Poison Ivy from freezing Gotham City.	img_254.jpg
255	My Best Friend's Wedding	http://us.imdb.com/M/title-exact?My+Best+Friend%27s+Wedding+(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6.19999981	144	1997	When a woman&#x27;s long-time friend says he&#x27;s engaged, she realizes she loves him herself... and sets out to get him, with only days before the wedding.	img_255.jpg
257	Men in Black	http://us.imdb.com/M/title-exact?Men+in+Black+(1997)	0	1	1	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	7.19999981	13	1997	A streetwise NYPD detective joins a secret organization that polices extraterrestrial affairs on Earth.	img_257.jpg
260	Event Horizon	http://us.imdb.com/M/title-exact?Event+Horizon+(1997)	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	1	1	0	0	6.5999999	147	1997	A rescue crew investigates a spaceship that disappeared into a black hole and has now returned...with someone or something new on-board.	img_260.jpg
262	In the Company of Men	http://us.imdb.com/M/title-exact?In+the+Company+of+Men+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.19999981	149	1997	Two business executives--one an avowed misogynist, the other recently emotionally wounded by his love interest--set out to exact revenge on the female gender by seeking out the most innocent, uncorrupted girl they can find and ruining her life.	img_262.jpg
264	Mimic	http://us.imdb.com/M/title-exact?Mimic+(1997)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	5.80000019	151	1997	Three years ago entomologist Dr. Susan Tyler genetically created an insect to kill cockroaches carrying a virulent disease, now the insects are out to destroy their only predator, mankind!	img_264.jpg
268	Chasing Amy	http://us.imdb.com/M/title-exact?Chasing+Amy+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7.4000001	140	1997	Holden and Banky are comic book artists. Everything&#x27;s going good for them until they meet Alyssa, also a comic book artist. Holden falls for her, but his hopes are crushed when he finds out she&#x27;s a lesbian.	img_268.jpg
271	Starship Troopers	http://us.imdb.com/M/title-exact?Starship+Troopers+(1997)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	7.0999999	108	1997	Humans in a fascistic, militaristic future do battle with giant alien bugs in a fight for survival.	img_271.jpg
274	Sabrina	http://us.imdb.com/M/title-exact?Sabrina%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6	155	1995	An ugly duckling having undergone a remarkable change, still harbors feelings for her crush: a carefree playboy, but not before his business-focused brother has something to say about it.	img_274.jpg
275	Sense and Sensibility	http://us.imdb.com/M/title-exact?Sense%20and%20Sensibility%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7.5999999	156	1995	Rich Mr. Dashwood dies, leaving his second wife and her three daughters poor by the rules of inheritance. The two eldest daughters are the titular opposites.	img_275.jpg
277	Restoration	http://us.imdb.com/M/title-exact?Restoration%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.5	158	1995	An aspiring young physician, Robert Merivel found himself in the service of King Charles II and saves the life of a spaniel dear to the King...	img_277.jpg
283	Emma	http://us.imdb.com/M/title-exact?Emma%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.69999981	160	1996	In rural 1800s England things go bad for a young matchmaker after she finds a man for another woman.	img_283.jpg
284	Tin Cup	http://us.imdb.com/M/title-exact?Tin%20Cup%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6.19999981	161	1996	A washed up golf pro working at a driving range tries to qualify for the US Open in order to win the heart of his succesful rival&#x27;s girlfriend.	img_284.jpg
287	Marvin's Room	http://us.imdb.com/M/title-exact?Marvin's%20Room%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.5999999	163	1996	A leukemia patient attempts to end a 20-year feud with her sister to get her bone marrow.	img_287.jpg
288	Scream	http://us.imdb.com/M/title-exact?Scream%20(1996)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	7.19999981	164	1996	A killer known as Ghostface begins killing off teenagers, and as the body count begins rising, one girl and her friends find themselves contemplating the &#x22;Rules&#x22; of horror films as they find themselves living in a real-life one.	img_288.jpg
291	Absolute Power	http://us.imdb.com/M/title-exact?Absolute%20Power%20(1997)	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	6.5999999	121	1997	A career thief witnesses a horrific crime involving the U.S. President.	img_291.jpg
293	Donnie Brasco	http://us.imdb.com/M/title-exact?Donnie%20Brasco%20(1997)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	7.80000019	59	1997	An FBI undercover agent infilitrates the mob and finds himself identifying more with the mafia life to the expense of his regular one.	img_293.jpg
297	Ulee's Gold	http://us.imdb.com/M/title-exact?Ulee%27s+Gold+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7	167	1997	A reclusive beekeeper slowly pulls his dysfunctional family back together, but not without having to fight his son&#x27;s previous dastardly cohorts.	img_297.jpg
299	Hoodlum	http://us.imdb.com/M/title-exact?Hoodlum+(1997)	0	0	0	0	0	0	1	0	1	0	1	0	0	0	0	0	0	0	0	5.9000001	169	1997	Black gangsters in 1930 Harlem fights Dutch Schultz who is trying to horn in on their numbers racket.	img_299.jpg
300	Air Force One	http://us.imdb.com/M/title-exact?Air+Force+One+(1997)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6.30000019	50	1997	Hijackers seize the plane carrying the President of the United States and his family, but he (an ex-soldier) works from hiding to defeat them.	img_300.jpg
302	L.A. Confidential	http://us.imdb.com/M/title-exact?L%2EA%2E+Confidential+(1997)	0	0	0	0	0	0	1	0	0	0	1	0	0	1	0	0	1	0	0	8.39999962	171	1997	As corruption grows in 1950s LA, three policemen - the straight-laced, the brutal, and the sleazy - investigate a series of murders with their own brand of justice.	img_302.jpg
303	Ulee's Gold	http://us.imdb.com/M/title-exact?Ulee%27s+Gold+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7	167	1997	A reclusive beekeeper slowly pulls his dysfunctional family back together, but not without having to fight his son&#x27;s previous dastardly cohorts.	img_303.jpg
304	Fly Away Home	http://us.imdb.com/M/title-exact?Fly%20Away%20Home%20(1996)	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6.80000019	172	1996	A father and daughter decide to attempt to lead a flock of orphaned Canada Geese south by air.	img_304.jpg
312	Midnight in the Garden of Good and Evil	http://us.imdb.com/M/title-exact?Midnight+in+the+Garden+of+Good+and+Evil+(1997)	0	0	0	0	0	1	1	0	1	0	0	0	0	1	0	0	0	0	0	6.5	121	1997	A visiting city reporter&#x27;s assignment suddenly revolves around the murder trial of a local millionaire, whom he befriends.	img_312.jpg
318	Schindler's List	http://us.imdb.com/M/title-exact?Schindler's%20List%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	8.89999962	65	1993	In Poland during World War II, Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.	img_318.jpg
320	Paradise Lost: The Child Murders at Robin Hood Hills	http://us.imdb.com/M/title-exact?Paradise%20Lost%3a%20The%20Child%20Murders%20at%20Robin%20Hood%20Hills%20(1996)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	8.30000019	175	1996	A horrific triple child murder leads to an indictment and trial of three nonconformist boys based on questionable evidence.	img_320.jpg
323	Dante's Peak	http://us.imdb.com/M/title-exact?Dante's%20Peak%20(1997)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	5.69999981	176	1997	A vulcanologist arrives at a countryside named Dante&#x27;s Peak after a long dormant volcano, which has recently been named the second most desirable place to live in America, and discovers that Dante&#x27;s Peak, may wake up at any moment.	img_323.jpg
325	Crash	http://us.imdb.com/M/title-exact?Crash%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	6.30000019	178	1996	After getting into a serious car accident, a TV director discovers an underground sub-culture of scarred, omnisexual car-crash victims who use car accidents and the raw sexual energy they produce to try to rejuvenate his sex life with his wife.	img_325.jpg
327	Cop Land	http://us.imdb.com/M/title-exact?Cop+Land+(1997)	0	0	0	0	0	0	1	0	1	0	0	0	0	1	0	0	0	0	0	6.9000001	179	1997	The sheriff of a suburban New Jersey community populated by New York City policemen slowly discovers the town is a front for mob connections and corruption.	img_327.jpg
329	Desperate Measures	http://us.imdb.com/Title?Desperate+Measures+(1998)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	1	0	0	5.9000001	180	1998	San Francisco police officer Frank Connor is in a frantic search for a compatible bone marrow donor for his gravely ill son...	img_329.jpg
334	U Turn	http://us.imdb.com/Title?U+Turn+(1997)	0	1	0	0	0	0	1	0	0	0	0	0	0	1	0	0	0	0	0	6.69999981	49	1997	A drifter becomes entangled with a femme fatale and her husband after his car breaks down in their small Southwest town.	img_334.jpg
335	How to Be a Player	http://us.imdb.com/M/title-exact?How+to+Be+a+Player+(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.69999981	182	1997	A playboy gets the tables turned on him when a party is arranged with all of the women he has been two-timing are in attendance.	img_335.jpg
339	Mad City	http://us.imdb.com/M/title-exact?Mad+City+(1997)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.0999999	185	1997	A normal guy blows his top, and a news reporter turns into a national spectacle.	img_339.jpg
340	Boogie Nights	http://us.imdb.com/M/title-exact?Boogie+Nights+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.9000001	186	1997	The story of a young man&#x27;s adventures in the Californian pornography industry of the 1970s and 1980s.	img_340.jpg
343	Alien: Resurrection	http://us.imdb.com/M/title-exact?Alien%3A+Resurrection+(1997)	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	0	0	6.19999981	187	1997	200 years after her death, Ellen Ripley is revived as a powerful human/Alien hybrid clone who must continue her war against the Aliens.	img_343.jpg
350	Fallen	http://us.imdb.com/Title?Fallen+(1998)	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	6.9000001	188	1998	Homicide detective John Hobbes witnesses the execution of serial killer Edgar Reese. Soon after the execution the killings start again, and they are very similar to Reese&#x27;s style.	img_350.jpg
357	One Flew Over the Cuckoo's Nest	http://us.imdb.com/M/title-exact?One%20Flew%20Over%20the%20Cuckoo's%20Nest%20(1975)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8.80000019	117	1975	Upon arriving at a mental institution, a brash rebel rallies the patients to take on the oppressive Nurse Ratched, a woman more dictator than nurse.	img_357.jpg
361	Incognito	http://us.imdb.com/M/title-exact?Incognito+(1997)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	6.19999981	189	1997	Harry Donovan is an art forger who paints fake Rembrandt picture for $500,000. The girl he meets and gets into bed with in Paris...	img_361.jpg
363	Sudden Death	http://us.imdb.com/M/title-exact?Sudden%20Death%20(1995)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.4000001	191	1995	A disgraced former fireman takes on a group of terrorists holding the Vice President and others hostage during the seventh game of the NHL Stanley Cup finals.	img_363.jpg
365	Powder	http://us.imdb.com/M/title-exact?Powder%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.30000019	193	1995	A young bald albino boy with unique powers shakes up the rural community he lives in.	img_365.jpg
367	Clueless	http://us.imdb.com/M/title-exact?Clueless%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.5999999	195	1995	A US West Coast teen lifestyle parody centered around Cher, a popular high school girl who spends her days playing match-maker, helping her friends with fashion choices, and looking for a boyfriend.	img_367.jpg
369	Black Sheep	http://us.imdb.com/M/title-exact?Black%20Sheep%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.9000001	197	1996	A gubernatorial candidate hires a wormy special assistant whose only job is to make sure the candidate&#x27;s well-meaning but incompetent brother doesn&#x27;t ruin the election.	img_369.jpg
372	Jeffrey	http://us.imdb.com/M/title-exact?Jeffrey%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.19999981	199	1995	Jeffery, a young gay man in New York, decides that sex is too much and decided to become celibate. He...	img_372.jpg
374	Mighty Morphin Power Rangers: The Movie	http://us.imdb.com/M/title-exact?Mighty%20Morphin%20Power%20Rangers:%20The%20Movie%20(1995)	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4.30000019	201	1995	After the Power Rangers have lost their supernatural power when trying to save their leader, they need help and receive it from a beautiful female fighter getting taught the art of Ninjetti. Thus they are able to fulfill their mission.	img_374.jpg
378	Miracle on 34th Street	http://us.imdb.com/M/title-exact?Miracle%20on%2034th%20Street%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.0999999	202	1994	A little girl discovers dreams do come true if you really believe. Six-year-old Susan has doubts about childhood&#x27;s most enduring miracle - Santa Claus...	img_378.jpg
380	Star Trek: Generations	http://us.imdb.com/M/title-exact?Star%20Trek:%20Generations%20(1994)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	6.5	203	1994	Captain Picard, with the help of supposedly dead Captain Kirk, must stop a madman willing to murder on a planetary scale in order to enter a space matrix.	img_380.jpg
384	Naked Gun 33 1/3: The Final Insult	http://us.imdb.com/M/title-exact?Naked%20Gun%2033%201/3:%20The%20Final%20Insult%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.19999981	204	1994	Frank Drebin comes out of retirement to help Police Squad infiltrate a gang of terrorists planning to detonate a bomb at the Academy Awards.	img_384.jpg
386	Addams Family Values	http://us.imdb.com/M/title-exact?Addams%20Family%20Values%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.4000001	13	1993	A comical Gothic horror-movie-type family tries to rescue their beloved uncle from his gold-digging new love.	img_386.jpg
390	Fear of a Black Hat	http://us.imdb.com/M/title-exact?Fear%20of%20a%20Black%20Hat%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.9000001	205	1993	A mockumentary chronicling the rise and fall of a not particularly talented--or particularly bright but always controversial--1990s hip-hop group, NWH (Niggaz with Hats).	img_390.jpg
393	Mrs. Doubtfire	http://us.imdb.com/M/title-exact?Mrs.%20Doubtfire%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.69999981	72	1993	After a bitter divorce, an actor disguises himself as a female housekeeper to spend secret time with his children held in custody by his Ex.	img_393.jpg
395	Robin Hood: Men in Tights	http://us.imdb.com/M/title-exact?Robin%20Hood:%20Men%20in%20Tights%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.5	125	1993	A spoof of Robin Hood in general, and &#x27;Robin Hood: Prince of Thieves&#x27; in particular.	img_395.jpg
397	Striking Distance	http://us.imdb.com/M/title-exact?Striking%20Distance%20(1993)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.5999999	207	1993	Coming from a police family, Tom Hardy ends up fighting his uncle after the murder of his father. Tom believes the killer is another cop, and goes on the record with his allegations. Demoted then to river duty, the killer taunts Tom.	img_397.jpg
403	Batman	http://us.imdb.com/M/title-exact?Batman%20(1989)	0	1	1	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	7.5999999	44	1989	The Dark Knight of Gotham City begins his war on crime with his first major enemy being the clownishly homicidal Joker.	img_403.jpg
405	Mission: Impossible	http://us.imdb.com/M/title-exact?Mission:%20Impossible%20(1996)	0	1	1	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	7	62	1996	An American agent, under false suspicion of disloyalty, must discover and expose the real spy without the help of his organization.	img_405.jpg
406	Thinner	http://us.imdb.com/M/title-exact?Thinner%20(1996)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	5.4000001	211	1996	A lawyer is cursed by a gypsy to lose weight...and lose weight...and lose weight...	img_406.jpg
407	Spy Hard	http://us.imdb.com/M/title-exact?Spy%20Hard%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.9000001	212	1996	General Rancor is threatening to destroy the world with a missile he is hiding at his secret base. But to complete his goal...	img_407.jpg
721	Mallrats	http://us.imdb.com/M/title-exact?Mallrats%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.0999999	140	1995	Both dumped by their girlfriends, two best friends seek refuge in the local mall.	img_721.jpg
409	Jack	http://us.imdb.com/M/title-exact?Jack%20(1996)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	5.4000001	115	1996	Because of an unusual aging disorder that has aged him four times faster than a normal human being, a boy enters the fifth grade for the first time with the appearance of a 40 year old man.	img_409.jpg
416	Old Yeller	http://us.imdb.com/M/title-exact?Old%20Yeller%20(1957)	0	0	0	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.30000019	100	1957	A boy brings a yellow dog home. The dog loves the family as much as they love him, but can the love last ?	img_416.jpg
418	Cinderella	http://us.imdb.com/M/title-exact?Cinderella%20(1950)	0	0	0	1	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	7.30000019	215	1950	When Cinderella&#x27;s cruel stepmother prevents her from attending the Royal Ball, she gets some unexpected help from the lovable mice Gus and Jaq, and from her Fairy Godmother.	img_418.jpg
423	E.T. the Extra-Terrestrial	http://us.imdb.com/M/title-exact?E%2ET%2E%20the%20Extra-Terrestrial%20%281982%29	0	0	0	0	1	0	0	0	1	1	0	0	0	0	0	1	0	0	0	7.9000001	65	1982	A meek and alienated little boy finds a stranded extraterrestrial. He has to find the courage to defy the authorities to help the alien return to its home planet.	img_423.jpg
427	To Kill a Mockingbird	http://us.imdb.com/M/title-exact?To%20Kill%20a%20Mockingbird%20(1962)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8.5	216	1962	Atticus Finch, a lawyer in the Depression-era South, defends a black man against an undeserved rape charge, and his kids against prejudice.	img_427.jpg
430	Duck Soup	http://us.imdb.com/M/title-exact?Duck%20Soup%20(1933)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	8	218	1933	Rufus T. Firefly is named president/dictator of bankrupt Freedonia and declares war on neighboring Sylvania over the love of wealthy Mrs. Teasdale.	img_430.jpg
434	Forbidden Planet	http://us.imdb.com/M/title-exact?Forbidden%20Planet%20(1956)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	7.69999981	220	1956	A starship crew goes to investigate the silence of a planet&#x27;s colony only to find two survivors and a deadly secret that one of them has.	img_434.jpg
438	Amityville 3-D	http://us.imdb.com/M/title-exact?Amityville%203-D%20(1983)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	3.70000005	222	1983	A reporter moves into the ominous Long Island house to debunk it of the recent supernatural events and becomes besieged by the evil manifestations which are connected to a hell-spawn demon lurking in the basement.	img_438.jpg
446	Burnt Offerings	http://us.imdb.com/M/title-exact?Burnt%20Offerings%20(1976)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	6.0999999	224	1976	Haunted house chiller from Dan Curtis has Oliver Reed and Karen Black as summer caretakers moving into gothic house with their young son...	img_446.jpg
449	Star Trek: The Motion Picture	http://us.imdb.com/M/title-exact?Star%20Trek:%20The%20Motion%20Picture%20(1979)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	6.30000019	225	1979	When a destructive space entity is spotted approaching Earth, Admiral Kirk resumes command of the Starship Enterprise in order to intercept, examine and hopefully stop it.	img_449.jpg
451	Grease	http://us.imdb.com/M/title-exact?Grease%20(1978)	0	0	0	0	0	1	0	0	0	0	0	0	1	0	1	0	0	0	0	7.0999999	227	1978	Good girl Sandy and greaser Danny fell in love over the summer. But when they unexpectedly discover they&#x27;re now in the same high school, will they be able to rekindle their romance?	img_451.jpg
453	Jaws 3-D	http://us.imdb.com/M/title-exact?Jaws%203-D%20(1983)	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	3.5	229	1983	The sons of police chief Brody must protect civilians at a Sea World theme park after a gigantic 35-foot shark becomes trapped in the park.	img_453.jpg
454	Bastard Out of Carolina	http://us.imdb.com/M/title-exact?Bastard%20Out%20of%20Carolina%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.19999981	230	1996	Difficult tale of poor, struggling South Carolinian mother &#x26; daughter, who each face painful choices with their resolve and pride...	img_454.jpg
456	Beverly Hills Ninja	http://us.imdb.com/M/title-exact?Beverly%20Hills%20Ninja%20(1997)	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.0999999	231	1997	An unlikely man raised by ninjas, goes against a counterfeiter with the help of the criminal&#x27;s girlfriend.	img_456.jpg
457	Free Willy 3: The Rescue	http://us.imdb.com/M/title-exact?Free+Willy+3%3A+The+Rescue+(1997)	0	0	1	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	4.19999981	232	1997	A teenage Jesse and old friend Randolph try to foil an illegal whaler threatening Willy and his pregnant mate.	img_457.jpg
459	Cry, the Beloved Country	http://us.imdb.com/M/title-exact?Cry,%20the%20Beloved%20Country%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.80000019	233	1995	A South-African preacher goes to search for his wayward son who has committed a crime in the big city.	img_459.jpg
462	Like Water For Chocolate (Como agua para chocolate)	http://us.imdb.com/M/title-exact?Como%20agua%20para%20chocolate%20(1992)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7.0999999	235	1992	This movie is about how life used to be in Mexico. It is a love story between Pedro and Tita, and why...	img_462.jpg
469	Short Cuts	http://us.imdb.com/M/title-exact?Short%20Cuts%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.69999981	91	1993	The day-to-day lives of a number of suburban Los Angeles residents.	img_469.jpg
470	Tombstone	http://us.imdb.com/M/title-exact?Tombstone%20(1993)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	7.69999981	238	1993	A successful lawman&#x27;s plans to retire anonymously in Tombstone, Arizona, are disrupted by the kind of outlaws he was famous for eliminating.	img_470.jpg
473	James and the Giant Peach	http://us.imdb.com/M/title-exact?James%20and%20the%20Giant%20Peach%20(1996)	0	0	0	1	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	6.69999981	239	1996	An orphan with terrible aunts for guardians, befriends human like bugs who live inside a giant peach, who take the boy on a journey to New York City.	img_473.jpg
477	Matilda	http://us.imdb.com/M/title-exact?Matilda%20(1996)	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.5999999	241	1996	Story of a wonderful little girl, who happens to be a genius, and her wonderful teacher vs. the worst parents ever and the worst school principal imaginable.	img_477.jpg
480	North by Northwest	http://us.imdb.com/M/title-exact?North%20by%20Northwest%20(1959)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	1	0	0	8.60000038	116	1959	A hapless New York advertising executive is mistaken for a government agent by a group of foreign spies, and is pursued across the country while he looks for a way to survive.	img_480.jpg
482	Some Like It Hot	http://us.imdb.com/M/title-exact?Some%20Like%20It%20Hot%20(1959)	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	8.39999962	242	1959	When two musicians witness a mob hit, they flee the state in an all female band disguised as women, but further complications set in.	img_482.jpg
485	My Fair Lady	http://us.imdb.com/M/title-exact?My%20Fair%20Lady%20(1964)	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	7.9000001	244	1964	A misogynistic and snobbish phonetics professor agrees to a wager that he can take a flower girl and make her presentable in high society.	img_485.jpg
487	Roman Holiday	http://us.imdb.com/M/title-exact?Roman%20Holiday%20(1953)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	8.10000038	245	1953	A bored and sheltered princess escapes her guardians and falls in love with an American newsman in Rome.	img_487.jpg
490	To Catch a Thief	http://us.imdb.com/M/title-exact?To%20Catch%20a%20Thief%20(1955)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	1	0	0	7.5	116	1955	When a reformed jewel thief is suspected of returning to his former occupation, he must ferret out the real thief in order to prove his innocence.	img_490.jpg
494	His Girl Friday	http://us.imdb.com/M/title-exact?His%20Girl%20Friday%20(1940)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	8	247	1940	A newspaper editor uses every trick in the book to keep his ace reporter ex-wife from remarrying.	img_494.jpg
497	Bringing Up Baby	http://us.imdb.com/M/title-exact?Bringing%20Up%20Baby%20(1938)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	8	247	1938	While trying to secure a $1 million donation for his museum, a befuddled paleontologist is pursued by a flighty and often irritating heiress and her pet leopard &#x22;Baby.&#x22;	img_497.jpg
499	Cat on a Hot Tin Roof	http://us.imdb.com/M/title-exact?Cat%20on%20a%20Hot%20Tin%20Roof%20(1958)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8	248	1958	Brick, an alcoholic ex-football player, drinks his days away and resists the affections of his wife, Maggie. His reunion with his father, Big Daddy, who is dying of cancer, jogs a host of memories and revelations for both father and son.	img_499.jpg
502	Bananas	http://us.imdb.com/M/title-exact?Bananas%20(1971)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	7	21	1971	When a bumbling New Yorker is dumped by his activist girlfriend, he travels to a tiny Latin American nation and becomes involved in its latest rebellion.	img_502.jpg
505	Dial M for Murder	http://us.imdb.com/M/title-exact?Dial%20M%20for%20Murder%20(1954)	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	8.19999981	116	1954	An ex-tennis pro carries out a plot to murder his wife. When things go wrong, he improvises a brilliant plan B.	img_505.jpg
506	Rebel Without a Cause	http://us.imdb.com/M/title-exact?Rebel%20Without%20a%20Cause%20(1955)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.9000001	251	1955	A rebellious young man with a troubled past comes to a new town, finding friends and enemies.	img_506.jpg
511	Lawrence of Arabia	http://us.imdb.com/M/title-exact?Lawrence%20of%20Arabia%20(1962)	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	8.5	253	1962	The story of T.E. Lawrence, a flamboyant and controversial British military figure and his conflicted loyalties during his World War I service in the Middle East.	img_511.jpg
517	Manhattan	http://us.imdb.com/M/title-exact?Manhattan%20(1979)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	1	0	0	0	0	8	21	1979	A divorced New Yorker currently dating a high-schooler brings himself to look for love in the mistress of his best friend instead.	img_517.jpg
518	Miller's Crossing	http://us.imdb.com/M/title-exact?Miller's%20Crossing%20(1990)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.9000001	77	1990	Tom Regan, an advisor to a Prohibition-era crime boss, tries to keep the peace between warring mobs but gets caught in divided loyalties.	img_518.jpg
526	Ben-Hur	http://us.imdb.com/M/title-exact?Ben-Hur%20(1959)	0	1	1	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8.10000038	245	1959	When a Jewish prince is betrayed and sent into slavery by a Roman friend, he regains his freedom and comes back for revenge.	img_526.jpg
529	My Life as a Dog (Mitt liv som hund)	http://us.imdb.com/M/title-exact?Mitt%20liv%20som%20hund%20(1985)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.5999999	55	1985	A boy and his brother don&#x27;t get along well. In order to let their ill mother rest, they&#x27;re separated and sent each one with their relatives.	img_529.jpg
535	Addicted to Love	http://us.imdb.com/M/title-exact?Addicted%20to%20Love%20%281997%29	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	5.9000001	260	1997	Maggie&#x27;s and Sam&#x27;s former partners are in love; she wants revenge and he wants his lost love back, so they work together to break up the happy couple.	img_535.jpg
537	My Own Private Idaho	http://us.imdb.com/M/title-exact?My+Own+Private+Idaho+(1991)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7	262	1991	Two best friends living on the streets of Portland as hustlers embark on a journey of self discovery and find their relationship stumbling along the way.	img_537.jpg
540	Money Train	http://us.imdb.com/M/title-exact?Money%20Train%20(1995)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.4000001	264	1995	A vengeful New York transit cop decides to steal a trainload of subway fares; his foster brother, a fellow cop, tries to protect him.	img_540.jpg
542	Pocahontas	http://us.imdb.com/M/title-exact?Pocahontas%20(1995)	0	0	0	1	1	0	0	0	0	0	0	0	1	0	1	0	0	0	0	6.30000019	265	1995	The daughter of a Native American tribe chief and English soldier share a romance when English colonists invade 17th century Virginia.	img_542.jpg
545	Vampire in Brooklyn	http://us.imdb.com/M/title-exact?Vampire%20in%20Brooklyn%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	4.30000019	164	1995	Maximillian is the only survivor from a race of vampires on a Caribbean Island, and as a vampire, he must find a mate to keep the line from ending...	img_545.jpg
549	Rob Roy	http://us.imdb.com/M/title-exact?Rob%20Roy%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	1	0	6.80000019	266	1995	In the highlands of Scotland in the 1700s, Rob Roy tries to lead his small town to a better future, by borrowing money from the local nobility to buy cattle to herd to market...	img_549.jpg
551	Lord of Illusions	http://us.imdb.com/M/title-exact?Lord%20of%20Illusions%20(1995)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	5.80000019	267	1995	During a routine case in L.A., NY private investigator Harry D&#x27;Amour stumbles over members of a fanatic cult...	img_551.jpg
554	Waterworld	http://us.imdb.com/M/title-exact?Waterworld%20(1995)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.9000001	268	1995	In a future where the polar ice caps have melted and most of Earth is underwater, a mutated mariner fights starvation and outlaw &#x22;smokers,&#x22; and reluctantly helps a woman and a young girl try to find dry land.	img_554.jpg
555	White Man's Burden	http://us.imdb.com/M/title-exact?White%20Man's%20Burden%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.0999999	269	1995	The story takes place in alternative America where the blacks are members of social elite, and whites are inhabitants of inner city ghettos...	img_555.jpg
556	Wild Bill	http://us.imdb.com/M/title-exact?Wild%20Bill%20(1995)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	5.80000019	270	1995	The early career of legendary lawman Wild Bill Hickock is telescoped and culminates in his relocation in Deadwood and a reunion with Calamity Jane.	img_556.jpg
564	Tales from the Hood	http://us.imdb.com/M/title-exact?Tales%20from%20the%20Hood%20(1995)	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	5.80000019	205	1995	A strange funeral director tells four strange tales of horror with an African American focus to three drug dealers he traps in his place of business.	img_564.jpg
566	Clear and Present Danger	http://us.imdb.com/M/title-exact?Clear%20and%20Present%20Danger%20(1994)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6.80000019	273	1994	CIA Analyst Jack Ryan is drawn into an illegal war fought by the US government against a Colombian drug cartel.	img_566.jpg
571	Another Stakeout	http://us.imdb.com/M/title-exact?Another%20Stakeout%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	1	0	0	5.30000019	189	1993	Prankster cops Chris and Bill are joined by a Gina from the DA&#x27;s office to stakeout a lakeside home.	img_571.jpg
573	Body Snatchers	http://us.imdb.com/M/title-exact?Body%20Snatchers%20(1993)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	1	0	0	5.80000019	277	1993	A teenage girl and her father discover alien clones are replacing humans on a remote U.S. military base in Alabama.	img_573.jpg
575	City Slickers II: The Legend of Curly's Gold	http://us.imdb.com/M/title-exact?City%20Slickers%20II:%20The%20Legend%20of%20Curly's%20Gold%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	5.30000019	279	1994	Shortly after their first western adventure, Mitch Robbins and his friends discover a treasure map that belonged to their late trail guide Curly and set out to discover its secrets.	img_575.jpg
577	Coneheads	http://us.imdb.com/M/title-exact?Coneheads%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	5.0999999	280	1993	Aliens with cone shaped craniums come to Earth to observe everyday life.	img_577.jpg
579	Fatal Instinct	http://us.imdb.com/M/title-exact?Fatal%20Instinct%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.30000019	282	1993	A spoof of the late 80s and early 90s suspense thrillers and murder mysteries, including Basic Instinct...	img_579.jpg
583	Romeo Is Bleeding	http://us.imdb.com/M/title-exact?Romeo%20Is%20Bleeding%20(1993)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	6.4000001	284	1993	A corrupt police sergeant who supplies tips on the locations of safeguarded witnesses to the Mob bites...	img_583.jpg
585	Son in Law	http://us.imdb.com/M/title-exact?Son%20in%20Law%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.19999981	285	1993	Having gotten a taste of college life, a drastically changed farm girl returns home for Thanksgiving break with her best friend, a flamboyant party animal who is clearly a fish out of water in a small farm town.	img_585.jpg
590	Hellraiser: Bloodline	http://us.imdb.com/M/title-exact?Hellraiser:%20Bloodline%20(1996)	0	1	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	0	0	4.69999981	288	1996	In the 22nd century, a scientist attempts to right the wrong his ancestor created: the puzzle box that opens the gates of Hell and unleashes Pinhead and his Cenobite legions.	img_590.jpg
593	Stalingrad	http://us.imdb.com/M/title-exact?Stalingrad%20(1993)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	7.5	289	1993	A depiction of the brutal battle of Stalingrad, the Third Reich&#x27;s &#x27;high water mark&#x27;, as seen through the eyes of German officer Hans von Witzland and his battalion.	img_593.jpg
597	Eraser	http://us.imdb.com/M/title-exact?Eraser%20(1996)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	5.9000001	290	1996	A Witness Protection specialist becomes suspicious of his co-workers when dealing with a case involving high-tech weapons.	img_597.jpg
601	For Whom the Bell Tolls	http://us.imdb.com/M/title-exact?For%20Whom%20the%20Bell%20Tolls%20(1943)	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	7	291	1943	During the Spanish Civil War, an American allied with the Republicans finds romance during a desperate mission to blow up a strategically important bridge.	img_601.jpg
604	It Happened One Night	http://us.imdb.com/M/title-exact?It%20Happened%20One%20Night%20(1934)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	8.19999981	96	1934	A spoiled heiress, running away from her family, is helped by a man who&#x27;s actually a reporter looking for a story.	img_604.jpg
605	Meet Me in St. Louis	http://us.imdb.com/M/title-exact?Meet%20Me%20in%20St.%20Louis%20(1944)	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	7.5999999	292	1944	In the year before the 1904 St Louis World&#x27;s Fair, the four Smith daughters learn lessons of life and love, even as they prepare for a reluctant move to New York.	img_605.jpg
607	Rebecca	http://us.imdb.com/M/title-exact?Rebecca%20(1940)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	8.30000019	116	1940	When a naive young woman marries a rich widower and settles in his gigantic mansion, she finds the memory of the first wife maintaining a grip on her husband and the servants.	img_607.jpg
609	Father of the Bride	http://us.imdb.com/M/title-exact?Father%20of%20the%20Bride%20(1950)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.19999981	292	1950	A father of a young woman deals with the emotional pain of her getting married, and the financial and organizational pain of arranging her wedding.	img_609.jpg
611	Laura	http://us.imdb.com/M/title-exact?Laura%20(1944)	0	0	0	0	0	0	1	0	0	0	1	0	0	1	0	0	0	0	0	8.10000038	294	1944	A police detective falls in love with the woman whose murder he&#x27;s investigating.	img_611.jpg
613	My Man Godfrey	http://us.imdb.com/M/title-exact?My%20Man%20Godfrey%20(1936)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	8.10000038	295	1936	A scatterbrained socialite hires a vagrant as a family butler...but there&#x27;s more to Godfrey than meets the eye.	img_613.jpg
616	Night of the Living Dead	http://us.imdb.com/M/title-exact?Night%20of%20the%20Living%20Dead%20(1968)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	1	0	0	0	8	297	1968	A group of people hide from bloodthirsty zombies in a farmhouse.	img_616.jpg
619	Extreme Measures	http://us.imdb.com/M/title-exact?Extreme%20Measures%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	5.9000001	299	1996	Thriller about Guy Luthan (Hugh Grant), a British doctor working at a hospital in New York who starts...	img_619.jpg
623	Angels in the Outfield	http://us.imdb.com/M/title-exact?Angels%20in%20the%20Outfield%20(1994)	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.69999981	301	1994	When a boy prays for a chance to have a family if the California Angels win the pennant, angels are assigned to make that possible.	img_623.jpg
628	Sleepers	http://us.imdb.com/M/title-exact?Sleepers%20(1996)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	7.4000001	42	1996	After a prank goes disastrously wrong, a group of boys are sent to a detention center where they are brutalized; over 10 years later, they get their chance for revenge.	img_628.jpg
634	Microcosmos: Le peuple de l'herbe	http://us.imdb.com/M/title-exact?Microcosmos%3A%20Le%20peuple%20de%20l%27herbe%20%281996%29	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	7.9000001	303	1996	A documentary of insect life in meadows and ponds, using incredible close-ups, slow motion, and time-lapse photography...	img_634.jpg
641	Paths of Glory	http://us.imdb.com/M/title-exact?Paths%20of%20Glory%20(1957)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	8.5	95	1957	When soldiers in WW1 refuse to continue with an impossible attack, their superiors decide to make an example of them.	img_641.jpg
645	Paris Is Burning	http://us.imdb.com/M/title-exact?Paris%20Is%20Burning%20(1990)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	7.5999999	304	1990	A chronicle of New York&#x27;s drag scene in the 1980s, focusing on balls, voguing and the ambitions and dreams of those who gave the era its warmth and vitality.	img_645.jpg
651	Glory	http://us.imdb.com/M/title-exact?Glory%20(1989)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	7.9000001	48	1989	Robert Gould Shaw leads the US Civil War&#x27;s first all-black volunteer company, fighting prejudices of both his own Union army and the Confederates.	img_651.jpg
653	Touch of Evil	http://us.imdb.com/M/title-exact?Touch%20of%20Evil%20(1958)	0	0	0	0	0	0	1	0	0	0	1	0	0	0	0	0	1	0	0	8.30000019	94	1958	Stark, perverse story of murder, kidnapping, and police corruption in Mexican border town.	img_653.jpg
654	Chinatown	http://us.imdb.com/M/title-exact?Chinatown%20(1974)	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	1	0	0	8.39999962	306	1974	A private detective investigating an adultery case stumbles on to a scheme of murder that has something to do with water.	img_654.jpg
656	M	http://us.imdb.com/M/title-exact?M%20(1931)	0	0	0	0	0	0	1	0	0	0	1	0	0	0	0	0	1	0	0	8.5	307	1931	When the police in a German city are unable to catch a child-murderer, other criminals join in the manhunt.	img_656.jpg
659	Arsenic and Old Lace	http://us.imdb.com/M/title-exact?Arsenic%20and%20Old%20Lace%20(1944)	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	1	0	0	8	96	1944	A drama critic learns on his wedding day that his beloved maiden aunts are homicidal maniacs, and that insanity runs in his family.	img_659.jpg
662	Somewhere in Time	http://us.imdb.com/M/title-exact?Somewhere%20in%20Time%20(1980)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7.0999999	228	1980	A Chicago playwright uses self-hypnosis to find the actress whose vintage portrait hangs in a grand hotel.	img_662.jpg
664	Paris, Texas	http://us.imdb.com/M/title-exact?Paris,%20Texas%20(1984)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8	310	1984	A man wanders out of the desert not knowing who he is. His brother finds him, and helps to pull his memory back of the life he led before he walked out on his wife and son four years before...	img_664.jpg
669	Body Parts	http://us.imdb.com/M/title-exact?Body%20Parts%20(1991)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	5.19999981	311	1991	After losing his arm in a car accident, a criminal psychologist has it replaced with a limb that belonged to a serial killer.	img_669.jpg
671	Bride of Frankenstein	http://us.imdb.com/M/title-exact?Bride%20of%20Frankenstein%20(1935)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	8	312	1935	Mary Shelley reveals the main characters of her novel survived: Dr. Frankenstein (goaded by an even madder scientist) builds his monster a mate.	img_671.jpg
673	Cape Fear	http://us.imdb.com/M/title-exact?Cape%20Fear%20(1962)	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	7.80000019	314	1962	A lawyer&#x27;s family is stalked by a man he once helped put in jail.	img_673.jpg
674	Cat People	http://us.imdb.com/M/title-exact?Cat%20People%20(1982)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	5.9000001	315	1982	In this erotic remake of the 1942 classic, a young woman&#x27;s sexual awakening brings horror when she discovers her urges transform her into a monstrous black leopard.	img_674.jpg
677	Fire on the Mountain	http://us.imdb.com/M/title-exact?Fire%20on%20the%20Mountain%20(1996)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	6.9000001	317	1996	A documentary film about the exploits of the Tenth Mountain Division, an elite group of mountain soldiers...	img_677.jpg
680	Kull the Conqueror	http://us.imdb.com/M/title-exact?Kull+the+Conqueror+(1997)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4.5999999	152	1997	An barbarian warrior becomes a king when he defeats a king in armed combat and the king&#x27;s heir conspire to overthrow him and reclaim the throne by resurrecting an evil sorceress.	img_680.jpg
684	In the Line of Fire	http://us.imdb.com/M/title-exact?In%20the%20Line%20of%20Fire%20(1993)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	7.19999981	50	1993	Secret Service agent Frank Horrigan couldn&#x27;t save Kennedy, but he&#x27;s determined not to let a clever assassin take out this president.	img_684.jpg
687	McHale's Navy	http://us.imdb.com/M/title-exact?McHale's%20Navy%20(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	4.0999999	201	1997	Retired Lieutenant Commander Quinton McHale spends his days puttering around the Caribbean in the old PT-73 selling homebrew...	img_687.jpg
693	Casino	http://us.imdb.com/M/title-exact?Casino%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8.19999981	29	1995	Greed, deception, money, power, and murder occur between two mobster best friends and a trophy wife over a gambling empire.	img_693.jpg
696	City Hall	http://us.imdb.com/M/title-exact?City%20Hall%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	6.0999999	324	1996	The accidental shooting of a boy in New York leads to an investigation by the Deputy Mayor, and unexpectedly far-reaching consequences.	img_696.jpg
700	Miami Rhapsody	http://us.imdb.com/M/title-exact?Miami%20Rhapsody%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.19999981	326	1995	Gwyn Marcus has always wanted a marriage like her parents. She has just accepted the proposal of her boyfriend Matt...	img_700.jpg
703	Widows' Peak	http://us.imdb.com/M/title-exact?Widows'%20Peak%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.5999999	328	1994	Edwina has just moved into the neighborhood known as &#x22;Widows&#x27; Peak,&#x22; so called due to the prevalent marital status of the residents...	img_703.jpg
705	Singin' in the Rain	http://us.imdb.com/M/title-exact?Singin'%20in%20the%20Rain%20(1952)	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	0	0	8.39999962	329	1952	A silent film production company and cast make a difficult transition to sound.	img_705.jpg
706	Bad Moon	http://us.imdb.com/M/title-exact?Bad%20Moon%20(1996)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	5.19999981	311	1996	One man&#x27;s struggle to contain the curse he hides within... and his last-ditch attempt to free himself with the love of family...	img_706.jpg
707	Enchanted April	http://us.imdb.com/M/title-exact?Enchanted%20April%20(1991)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	59	1991	This slow-paced gem is about the civilizing influence of Italy on beleaguered Londoners both male and female and has it&#x27;s own civilizing influence on the viewer...	img_707.jpg
712	Tin Men	http://us.imdb.com/M/title-exact?Tin%20Men%20(1987)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	42	1987	A minor car accident drives two rival aluminum-siding salesmen to the ridiculous extremes of man versus man in 1963 Baltimore.	img_712.jpg
714	Carrington	http://us.imdb.com/M/title-exact?Carrington%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.5999999	333	1995	The story of the relationship between painter Dora Carrington and author Lytton Strachey in a World War One England of cottages and countryside...	img_714.jpg
715	To Die For	http://us.imdb.com/M/title-exact?To%20Die%20For%20(1995)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.69999981	262	1995	Suzanne Stone is an aspiring TV personality who will do anything to be in the spotlight- including enlisting 3 teenagers to kill her husband.	img_715.jpg
718	In the Bleak Midwinter	http://us.imdb.com/M/title-exact?In%20the%20Bleak%20Midwinter%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7	66	1995	Out of work actor Joe volunteers to help try and save his sister&#x27;s local church for the community by putting on a Christmas production of Hamlet...	img_718.jpg
723	Boys on the Side	http://us.imdb.com/M/title-exact?Boys%20on%20the%20Side%20(1995)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.0999999	335	1995	Jane is a night club singer, out of work. Robin is a quirky real estate agent looking for a ride-share to accompany her to California...	img_723.jpg
725	Exit to Eden	http://us.imdb.com/M/title-exact?Exit%20to%20Eden%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	3.79999995	337	1994	Elliot is going to the island of Eden to live out his submissive fantasies, but inadvertently photographs diamond smugglers at work...	img_725.jpg
727	Immortal Beloved	http://us.imdb.com/M/title-exact?Immortal%20Beloved%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	7.19999981	313	1994	The life and death of the legendary Ludwig van Beethoven. Beside all the work he is known for, the composer...	img_727.jpg
729	Nell	http://us.imdb.com/M/title-exact?Nell%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.30000019	299	1994	In a remote woodland cabin, a small town doctor discovers Nell - a beautiful young hermit woman with many secrets.	img_729.jpg
732	Dave	http://us.imdb.com/M/title-exact?Dave%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6.69999981	339	1993	To avoid a potentially explosive scandal when the U.S. President goes into a coma, an affable temp agency owner with an uncanny resemblance, is put in his place.	img_732.jpg
734	Made in America	http://us.imdb.com/M/title-exact?Made%20in%20America%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.5999999	214	1993	A young black woman discovers that her father was a sperm donor, and if that weren&#x27;t bad enough, he&#x27;s white.	img_734.jpg
735	Philadelphia	http://us.imdb.com/M/title-exact?Philadelphia%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.5999999	342	1993	When a man with AIDS is fired by a conservative law firm because of his condition, he hires a homophobic small time lawyer as the only willing advocate for a wrongful dismissal suit.	img_735.jpg
739	Pretty Woman	http://us.imdb.com/M/title-exact?Pretty%20Woman%20(1990)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6.80000019	337	1990	A man in a legal but hurtful business needs an escort for some social events, and hires a beautiful prostitute he meets... only to fall in love.	img_739.jpg
740	Jane Eyre	http://us.imdb.com/M/title-exact?Jane%20Eyre%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.5999999	344	1996	Jane Eyre is an orphan cast out as a young girl by her aunt, Mrs. Reed, and sent to be raised in a harsh charity school for girls...	img_740.jpg
744	Michael Collins	http://us.imdb.com/M/title-exact?Michael%20Collins%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	7	345	1996	Michael Collins plays a crucial role in the establishment of the Irish Free State in the 1920s, but becomes vilified by those hoping to create a completely independent Irish republic.	img_744.jpg
754	Red Corner	http://us.imdb.com/M/title-exact?Red+Corner+(1997)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	6	347	1997	An American attorney on business in China, ends up wrongfully on trial for murder and his only key to innocence is a female defense lawyer from the country.	img_754.jpg
755	Jumanji	http://us.imdb.com/M/title-exact?Jumanji%20(1995)	0	1	1	0	1	0	0	0	0	1	0	0	0	0	0	1	0	0	0	6.5999999	348	1995	When two kids play an old magic board-game they found, they release a man trapped for decades in it and a host of dangers that can only be stopped by finishing the game.	img_755.jpg
758	Lawnmower Man 2: Beyond Cyberspace	http://us.imdb.com/M/title-exact?Lawnmower%20Man%202:%20Beyond%20Cyberspace%20(1996)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	2.29999995	350	1996	Jobe is resuscitated by Jonathan Walker. He wants Jobe to create a special computer chip that would connect all the computers in the world into one network...	img_758.jpg
759	Fair Game	http://us.imdb.com/M/title-exact?Fair%20Game%20(1995)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	3.9000001	351	1995	Max Kirkpatrick is a cop who protects Kate McQuean, a civil law attorney, from a renegade KGB team out to terminate her.	img_759.jpg
761	Nick of Time	http://us.imdb.com/M/title-exact?Nick%20of%20Time%20(1995)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6.30000019	189	1995	An unimpressive, every-day man is forced into a situation where he is told to kill a politician to save his kidnapped daughter.	img_761.jpg
763	Happy Gilmore	http://us.imdb.com/M/title-exact?Happy%20Gilmore%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.9000001	231	1996	A rejected hockey player puts his skills to the golf course to save his grandmother&#x27;s house.	img_763.jpg
765	Boomerang	http://us.imdb.com/M/title-exact?Boomerang%20(1992)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	5.0999999	355	1992	A successful executive and womanizer finds his lifestyle choices have turned back on him when his new female boss turns out to be an even bigger deviant then he is.	img_765.jpg
768	Casper	http://us.imdb.com/M/title-exact?Casper%20(1995)	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.80000019	357	1995	A paranormal expert and his daughter bunk in an abandoned house populated by 3 mischievous ghosts and one friendly one.	img_768.jpg
770	Devil in a Blue Dress	http://us.imdb.com/M/title-exact?Devil%20in%20a%20Blue%20Dress%20(1995)	0	0	0	0	0	0	1	0	0	0	1	0	0	1	0	0	1	0	0	6.5	359	1995	An Afro-American man is hired to find a woman and gets mixed up in a murderous political scandal.	img_770.jpg
772	Kids	http://us.imdb.com/M/title-exact?Kids%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.80000019	361	1995	An amoral, HIV-positive skateboarder sets out to deflower as many virgins as possible while a local girl who contracted his disease tries to save his next target from her same fate.	img_772.jpg
775	Something to Talk About	http://us.imdb.com/M/title-exact?Something%20to%20Talk%20About%20(1995)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	1	0	0	0	0	5.5	55	1995	Grace Bichon, who is managing her father&#x27;s riding-stable, discovers that her husband Eddie deceives her with another woman...	img_775.jpg
776	Three Wishes	http://us.imdb.com/M/title-exact?Three%20Wishes%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.80000019	346	1995	In an unexplained act of charity, Jeanne Holman, picks up an injured, apparent tramp and takes him home to care for him little realising who he was or the effect he would have on her life and those of her family.	img_776.jpg
781	French Kiss	http://us.imdb.com/M/title-exact?French%20Kiss%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6.30000019	275	1995	A woman flies to France to confront her straying fianc&#xE9;, but gets into trouble when the charming crook seated next to her uses her for smuggling.	img_781.jpg
783	Milk Money	http://us.imdb.com/M/title-exact?Milk%20Money%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	5.19999981	214	1994	Young Frank and his pals get an idea for the ultimate in excitement. They decide to pool their savings...	img_783.jpg
787	Roommates	http://us.imdb.com/M/title-exact?Roommates%20(1995)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.19999981	366	1995	An elderly yet young-at-heart man moves in with his grandson, and both their lives turn upside-down.	img_787.jpg
792	Bullets Over Broadway	http://us.imdb.com/M/title-exact?Bullets%20Over%20Broadway%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.5	21	1994	In 1920s New York, a struggling playwright is forced to cast a mobster&#x27;s talentless girlfriend in his latest drama in order to get it produced.	img_792.jpg
793	Crooklyn	http://us.imdb.com/M/title-exact?Crooklyn%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.5999999	367	1994	From Spike Lee comes this vibrant semi-autobiographical portrait of a school-teacher, her stubborn jazz-musician husband and their five kids living in &#x27;70s Brooklyn.	img_793.jpg
797	Timecop	http://us.imdb.com/M/title-exact?Timecop%20(1994)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	5.5999999	191	1994	An officer for a security agency that regulates time travel, must fend for his life against a shady politician who has a tie to his past.	img_797.jpg
802	Hard Target	http://us.imdb.com/M/title-exact?Hard%20Target%20(1993)	0	1	1	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	5.9000001	168	1993	A woman hires a drifter as her guide through New Orleans in search of her father, who has gone missing. They discover a deadly game of cat and mouse behind his disappearance in the process.	img_802.jpg
803	Heaven & Earth	http://us.imdb.com/M/title-exact?Heaven%20&%20Earth%20(1993)	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	6.69999981	49	1993	The final movie in Oliver Stone&#x27;s Vietnam trilogy follows the true story of a Vietnamese village girl who survives a life of suffering and hardship during and after the Vietnam war...	img_803.jpg
806	Menace II Society	http://us.imdb.com/M/title-exact?Menace%20II%20Society%20(1993)	0	1	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	7.4000001	370	1993	A young street hustler attempts to escape the rigors and temptations of the ghetto in a quest for a better life.	img_806.jpg
809	Rising Sun	http://us.imdb.com/M/title-exact?Rising%20Sun%20(1993)	0	1	0	0	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	6.0999999	371	1993	At the offices of a Japanese corporation, during a party, a woman, who&#x27;s evidently a professional mistress...	img_809.jpg
812	Andre	http://us.imdb.com/M/title-exact?Andre%20(1994)	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.4000001	372	1994	The true story of how a marine sea lion named Andre befriended a little girl and her family, circa 1962.	img_812.jpg
816	Candyman: Farewell to the Flesh	http://us.imdb.com/M/title-exact?Candyman:%20Farewell%20to%20the%20Flesh%20(1995)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	4.9000001	373	1995	The Candyman arrives in New Orleans and sets his sights on a young woman whose family was ruined by the immortal killer years before.	img_816.jpg
818	Girl 6	http://us.imdb.com/M/title-exact?Girl%206%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.80000019	367	1996	This Spike Lee film examines the life of an aspiring actress in New York. She is upset by the treatment of women in the movie industry during one of her screen tests with &#x27;QT&#x27;...	img_818.jpg
820	Space Jam	http://us.imdb.com/M/title-exact?Space%20Jam%20(1996)	0	0	1	1	1	1	0	0	0	1	0	0	0	0	0	0	0	0	0	5.9000001	375	1996	Michael Jordan agrees to help the Looney Toons play a basketball game vs. alien slavers to determine their freedom.	img_820.jpg
823	Mulholland Falls	http://us.imdb.com/M/title-exact?Mulholland%20Falls%20(1996)	0	0	0	0	0	0	1	0	0	0	1	0	0	0	0	0	1	0	0	6.0999999	376	1996	In 1950&#x27;s Los Angeles, a special crime squad of the LAPD investigates the murder of a young woman.	img_823.jpg
828	Alaska	http://us.imdb.com/M/title-exact?Alaska%20(1996)	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.4000001	378	1996	Jake Barnes and his two kids, Sean and Jessie, have moved to Alaska after his wife died. He is a former airline pilot now delivering toilet paper across the mountains...	img_828.jpg
831	Escape from L.A.	http://us.imdb.com/M/title-exact?Escape%20from%20L.A.%20(1996)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	5.5	272	1996	Snake Plissken is once again called in by the United States government to recover a potential doomsday device from Los Angeles, now an autonomous island where undesirables are deported.	img_831.jpg
833	Bulletproof	http://us.imdb.com/M/title-exact?Bulletproof%20(1996)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.5999999	380	1996	Two criminals, Keats and Moses, end their friendship when Keats turns out to be an undercover cop. Years later the two are forced to work together when Keats is assigned to protect Moses as a witness.	img_833.jpg
834	Halloween: The Curse of Michael Myers	http://us.imdb.com/M/title-exact?Halloween:%20The%20Curse%20of%20Michael%20Myers%20(1995)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	4.5999999	381	1995	Six years ago, Michael Myers terrorized the town of Haddonfield, Illinois. He and his niece, Jamie Lloyd...	img_834.jpg
842	Pollyanna	http://us.imdb.com/M/title-exact?Pollyanna%20(1960)	0	0	0	0	1	1	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	383	1960	A young girl comes to an embittered town and confronts its attitude with her determination to see the best in life.	img_842.jpg
844	Freeway	http://us.imdb.com/M/title-exact?Freeway%20(1996)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	6.69999981	384	1996	A twisted take on &#x27;Little Red Riding Hood&#x27; with a teenage juvenile delinquent on the run from a social worker traveling to her grandmother&#x27;s house and being hounded by a charming, but sadistic, serial killer/pedophile.	img_844.jpg
846	To Gillian on Her 37th Birthday	http://us.imdb.com/M/title-exact?To%20Gillian%20on%20Her%2037th%20Birthday%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	5.5999999	386	1996	David loves his wife, Gillian. Unfortunately, she died two years ago. David deals with his grief by...	img_846.jpg
848	Murder, My Sweet	http://us.imdb.com/M/title-exact?Murder,%20My%20Sweet%20(1944)	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	7.5999999	388	1944	After being hired to find an ex-con&#x27;s former girlfriend, Philip Marlowe is drawn into a deeply complex web of mystery and deceit.	img_848.jpg
853	Braindead	http://us.imdb.com/M/title-exact?Braindead%20(1992)	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	7.5999999	271	1992	A young man&#x27;s mother is bitten by a Sumatran rat-monkey. She gets sick and dies, at which time she comes back to life, killing and eating dogs, nurses, friends, and neighbors.	img_853.jpg
855	Diva	http://us.imdb.com/M/title-exact?Diva%20(1981)	0	1	0	0	0	0	0	0	1	0	0	0	0	1	1	0	1	0	0	7.0999999	389	1981	Two tapes, two Parisian mob killers, one corrupt policeman, an opera fan, a teenage thief, and the coolest philosopher ever filmed. All these characters twist their way through an intricate and stylish French language thriller.	img_855.jpg
859	April Fool's Day	http://us.imdb.com/M/title-exact?April%20Fool's%20Day%20(1986)	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	5.9000001	390	1986	A group of nine college students staying at a friend&#x27;s remote island mansion begin to fall victim to an unseen murderer over the April Fool&#x27;s day weekend.	img_859.jpg
862	Jingle All the Way	http://us.imdb.com/M/title-exact?Jingle%20All%20the%20Way%20(1996)	0	0	1	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.0999999	391	1996	A harried father decides to dream the impossible dream, to get that year&#x27;s hot toy for his son just before Christmas Day.	img_862.jpg
864	My Fellow Americans	http://us.imdb.com/M/title-exact?My%20Fellow%20Americans%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.30000019	204	1996	Kramer and Douglas, two former presidents from opposite ends of the political spectrum, become reluctant...	img_864.jpg
869	Fools Rush In	http://us.imdb.com/M/title-exact?Fools%20Rush%20In%20(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	5.80000019	392	1997	After a one night stand with Isabel, Alex realizes that she is pregnant and they decide to get married. However, along with the marriage comes compromise of one&#x27;s own cultural traditions.	img_869.jpg
871	Vegas Vacation	http://us.imdb.com/M/title-exact?Vegas%20Vacation%20(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.69999981	393	1997	When Clark Griswold puts his mind to something, we soon realize he hasn&#x27;t got one. Still, nothing stops him when the vacation bug hits...	img_871.jpg
873	Picture Perfect	http://us.imdb.com/M/title-exact?Picture+Perfect+(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	5.30000019	395	1997	Kate is working on a career at Mercer Advertising but is passed up for promotion because she&#x27;s &#x27;not stable enough&#x27;...	img_873.jpg
875	She's So Lovely	http://us.imdb.com/M/title-exact?She%27s+So+Lovely+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	5.80000019	102	1997	Maureen is pregnant and her husband Eddie is missing. Nervous, Maureen shares a couple of drinks with neighbor Kiefer...	img_875.jpg
877	Excess Baggage	http://us.imdb.com/M/title-exact?Excess+Baggage+(1997)	0	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	4.9000001	281	1997	Emily has always been the rich brat who tries to pull every imaginable stunt to get attention. But one day...	img_877.jpg
880	Soul Food	http://us.imdb.com/M/title-exact?Soul+Food+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	398	1997	Matriarch Mama Joe has held her family together for 40 years around a Sunday dinner of soul food. When diabetes hospitalizes her...	img_880.jpg
882	Washington Square	http://us.imdb.com/M/title-exact?Washington+Square+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.5	399	1997	Catherine Sloper has found the man of her dreams in Morris Townsend, but her plans to marry him are strongly opposed by her father...	img_882.jpg
883	Telling Lies in America	http://us.imdb.com/M/title-exact?Telling+Lies+in+America+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.19999981	400	1997	Karchy (Brad Renfro) is a boy in school who has moved from Hungary to America in the 1960&#x27;s. He is struggling in school and trying to adjust to America&#x27;s culture...	img_883.jpg
887	Eve's Bayou	http://us.imdb.com/M/title-exact?Eve's+Bayou+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	401	1997	The story is set in 1962 Louisiana. The big Batiste family is headed by charming doctor Louis. Though he is married to beautiful Roz...	img_887.jpg
888	One Night Stand	http://us.imdb.com/M/title-exact?One+Night+Stand+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.80000019	157	1997	Los-Angeles commercials director Max visits his friend, artist Charlie, who was diagnosed with AIDS in New York...	img_888.jpg
913	Love and Death on Long Island	http://us.imdb.com/Title?Love+and+Death+on+Long+Island+(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.9000001	403	1997	Giles De&#x27;Ath is a widower who doesn&#x27;t like anything modern. He goes to movies and falls in love with film star...	img_913.jpg
914	Wild Things	http://us.imdb.com/Title?Wild+Things+(1998)	0	0	0	0	0	0	1	0	1	0	0	0	0	1	0	0	1	0	0	6.5	404	1998	A police detective uncovers a conspiracy behind a case involving a high school guidance counselor, when accusations of rape are made against him by two female students.	img_914.jpg
916	Lost in Space	http://us.imdb.com/Title?Lost+in+Space+(1998)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	4.9000001	276	1998	The Robinson family was going into space to fight for a chance for humanity. Now they are fighting to live long enough to find a way home.	img_916.jpg
918	City of Angels	http://us.imdb.com/Title?City+of+Angels+(1998)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	6.5	357	1998	Inspired by the modern classic, Wings of Desire, City involves an angel (Cage) who is spotted by a doctor in an operating room. Franz plays Cage&#x27;s buddy who somehow knows a lot about angels.	img_918.jpg
922	Dead Man	http://us.imdb.com/M/title-exact?Dead%20Man%20(1995)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	7.69999981	255	1995	On the run after murdering a man, accountant William Blake encounters a strange Indian named &#x22;Nobody&#x22; who prepares him for his journey into the spiritual world.	img_922.jpg
925	Unforgettable	http://us.imdb.com/Title?Unforgettable+(1996)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	5.80000019	405	1996	Unsuccessfully framed for his wife&#x27;s murder, Dr. David Krane attempts to find the real culprit...	img_925.jpg
929	Harriet the Spy	http://us.imdb.com/M/title-exact?Harriet%20the%20Spy%20(1996)	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.80000019	407	1996	Harriet M. Welsch is a spy. But when Harriet&#x27;s friends find her secret notebook the tables are turned on her. Can she win her friends back and still keep on going with the spy business?	img_929.jpg
932	First Kid	http://us.imdb.com/M/title-exact?First%20Kid%20(1996)	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.69999981	408	1996	Luke Davenport is the 13 year old son of Paul Davenport, the President of the United States, and first lady Linda Davenport...	img_932.jpg
935	Paradise Road	http://us.imdb.com/M/title-exact?Paradise%20Road%20%281997%29	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	6.5999999	409	1997	Fact-based recounting of a group of women who are imprisoned on the island of Sumatra by the Japanese during World War II and used music as a relief to their misery.	img_935.jpg
939	Murder in the First	http://us.imdb.com/M/title-exact?Murder%20in%20the%20First%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	7.0999999	411	1995	An eager and idealistic young attorney defends an Alcatraz prisoner accused of murdering a fellow inmate. The extenuating circumstances: his client had just spent over three years in solitary confinement.	img_939.jpg
941	With Honors	http://us.imdb.com/M/title-exact?With%20Honors%20(1994)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.30000019	413	1994	Convinced he&#x27;ll graduate with honors because of his thesis paper, a stuffy Harvard student finds his paper being held hostage by a homeless man, who might be the guy to school the young man in life.	img_941.jpg
944	Renaissance Man	http://us.imdb.com/M/title-exact?Renaissance%20Man%20(1994)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	1	0	5.9000001	415	1994	A down-on-his-luck businessman desperately takes the only job offered - a teacher in the U.S. Army....	img_944.jpg
949	How to Make an American Quilt	http://us.imdb.com/M/title-exact?How%20to%20Make%20an%20American%20Quilt%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	5.9000001	417	1995	Bride-to-be Finn Dodd hears tales of romance and sorrow from her elders as they construct a quilt.	img_949.jpg
1177	Dunston Checks In	http://us.imdb.com/M/title-exact?Dunston%20Checks%20In%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.80000019	516	1996	Young boy befriends larcenous orangutan in luxury hotel.	img_1177.jpg
952	Blue in the Face	http://us.imdb.com/M/title-exact?Blue%20in%20the%20Face%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.5	419	1995	Wayne Wang&#x27;s follow-up movie to Smoke presents a series of improvisational situations strung together to form a pastiche of Brooklyn&#x27;s diverse ethnicity...	img_952.jpg
954	Unzipped	http://us.imdb.com/M/title-exact?Unzipped%20(1995)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	6.0999999	421	1995	Isaac Mizrahi, one of the most successful designers in high fashion, plans his fall 1994 collection...	img_954.jpg
955	Before Sunrise	http://us.imdb.com/M/title-exact?Before%20Sunrise%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	8	422	1995	A young man and woman meet on a train in Europe, and wind up spending one romantic evening together in Vienna. Unfortunately, both know that this will probably be their only night together.	img_955.jpg
959	Dazed and Confused	http://us.imdb.com/M/title-exact?Dazed%20and%20Confused%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.5999999	422	1993	The adventures of incoming high school and junior high students on the last day of school, in May of 1976.	img_959.jpg
962	Ruby in Paradise	http://us.imdb.com/M/title-exact?Ruby%20in%20Paradise%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	167	1993	Ruby, a young woman, arrives in a Florida resort town during the off season to make a fresh start. She gets work as a sales clerk in a souvineer shop run by Mildred Chambers...	img_962.jpg
965	Funny Face	http://us.imdb.com/M/title-exact?Funny%20Face%20(1957)	0	0	0	0	0	1	0	0	0	0	0	0	1	0	0	0	0	0	0	6.9000001	329	1957	Fashion photographer Dick Avery, in search for an intellectual backdrop for an air-headed model, expropriates a Greenwich Village bookstore...	img_965.jpg
967	Little Lord Fauntleroy	http://us.imdb.com/M/title-exact?Little%20Lord%20Fauntleroy%20(1936)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.19999981	424	1936	An American boy turns out to be the long-lost heir of a British fortune. He is sent to live with the cold and unsentimental lord who oversees the trust.	img_967.jpg
970	Hear My Song	http://us.imdb.com/M/title-exact?Hear%20My%20Song%20(1991)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.9000001	426	1991	The film is based loosely on the life of the Irish Tenor, Josef Locke (1917-1999), played by Ned Beatty...&nbsp;<a href="synopsis">See full synopsis</a>&nbsp;&raquo;	img_970.jpg
972	Passion Fish	http://us.imdb.com/M/title-exact?Passion%20Fish%20(1992)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	89	1992	May-Alice Culhane was a successful soap opera star, but a car accident has left her bound to a wheelchair...	img_972.jpg
974	Eye for an Eye	http://us.imdb.com/Title?Eye+for+an+Eye+(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	5.80000019	428	1996	After her daughter Julie is brutally raped and murdered, Karen McCann is turned down by the LAPD after she requests they keep suspect Robert Doob in jail for good instead of paroling him...	img_974.jpg
976	Solo	http://us.imdb.com/M/title-exact?Solo%20(1996)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	0	0	3.79999995	429	1996	Mario Van Peebles stars as an android killing weapon designed by the military and utilized to enter into a Latin American war to destroy the rebels...	img_976.jpg
980	Mother Night	http://us.imdb.com/M/title-exact?Mother%20Night%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7	431	1996	An American spy behind the lines during WWII serves as a Nazi propagandist, a role he cannot escape in his future life as he can never reveal his real role in the war.	img_980.jpg
982	Maximum Risk	http://us.imdb.com/M/title-exact?Maximum%20Risk%20(1996)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	5.0999999	432	1996	A policeman takes his twin brother&#x27;s place and inherits his problems and a beautiful girlfriend...	img_982.jpg
984	Shadow Conspiracy	http://us.imdb.com/M/title-exact?Shadow%20Conspiracy%20(1997)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	4.69999981	238	1997	Bobby Bishop (Sheen) is a special assistant to the President of the United States. Accidentally, he meets his friend professor Pochenko on the street...	img_984.jpg
989	Cats Don't Dance	http://us.imdb.com/M/title-exact?Cats%20Don%27t%20Dance%20(1997)	0	0	0	1	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	6.69999981	434	1997	Danny, an ambitious singing/dancing cat, goes to Hollywood and overcomes several obstacles to fulfill his dream of becoming a movie star.	img_989.jpg
993	Hercules	http://us.imdb.com/M/title-exact?Hercules+(1997)	0	0	1	1	1	1	0	0	0	0	0	0	1	0	0	0	0	0	0	7	73	1997	The son of the Greek Gods Zeus and Hera is stripped of his immortality as an infant and must become a true hero in order to reclaim it.	img_993.jpg
997	Stuart Saves His Family	http://us.imdb.com/M/title-exact?Stuart%20Saves%20His%20Family%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5	120	1995	Stuart Smalley, the Saturday Night Live character, comes to the big screen. Stuart, the disciple of the 12 step program...	img_997.jpg
999	Clean Slate	http://us.imdb.com/M/title-exact?Clean%20Slate%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.30000019	318	1994	A private eye who has amnesia must go to court about a kingpin&#x27;s murder.	img_999.jpg
1000	Lightning Jack	http://us.imdb.com/M/title-exact?Lightning%20Jack%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	5	63	1994	Lightning Jack Kane is an Australian outlaw in the wild west. During a bungled bank robbery he picks up mute Ben Doyle as a hostage...	img_1000.jpg
1004	Geronimo: An American Legend	http://us.imdb.com/M/title-exact?Geronimo:%20An%20American%20Legend%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	6.30000019	270	1993	The Apache Indians have reluctantly agreed to settle on a US Government approved reservation. Not all the Apaches are able to adapt to the life of corn farmers...	img_1004.jpg
1007	Waiting for Guffman	http://us.imdb.com/M/title-exact?Waiting%20for%20Guffman%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.4000001	438	1996	An aspiring director and the marginally-talented amateur cast of a hokey small-town Missouri musical production go overboard when they learn that someone from Broadway will be in attendance.	img_1007.jpg
1009	Stealing Beauty	http://us.imdb.com/M/title-exact?Stealing%20Beauty%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	440	1996	After her mother commits suicide, nineteen year old Lucy Harmon travels to Italy to have her picture painted...	img_1009.jpg
1011	2 Days in the Valley	http://us.imdb.com/M/title-exact?2%20Days%20in%20the%20Valley%20(1996)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	6.4000001	442	1996	48 hours of intersecting lives and crimes in Los Angeles.	img_1011.jpg
1013	Anaconda	http://us.imdb.com/M/title-exact?Anaconda%20%281997%29	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	4.4000001	444	1997	A &#x22;National Geographic&#x22; film crew is taken hostage by an insane hunter, who takes them along on his quest to capture the world&#x27;s largest - and deadliest - snake.	img_1013.jpg
1170	Spanking the Monkey	http://us.imdb.com/M/title-exact?Spanking%20the%20Monkey%20(1994)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.30000019	512	1994	Raymond Aibelli is a promising medical student ready to begin a prestigious summer internship. But Susan...	img_1170.jpg
1014	Romy and Michele's High School Reunion	http://us.imdb.com/M/title-exact?Romy%20and%20Michele%27s%20High%20School%20Reunion%20%281997%29	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.9000001	445	1997	Two women get into a lot of trouble when they go to their high school reunion and lie about their lives after twelfth grade.	img_1014.jpg
1017	Trees Lounge	http://us.imdb.com/M/title-exact?Trees%20Lounge%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	447	1996	Tommy is an unemployed mechanic who spends most of his time in a bar (Trees Lounge) in a small blue collar town. He seems to always be thinking, &#x22;If only X then I could stop drinking&#x22;.	img_1017.jpg
1020	Gaslight	http://us.imdb.com/M/title-exact?Gaslight%20(1944)	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	7.80000019	244	1944	Years after her aunt was murdered in her home, a young woman moves back into the house with her new husband. However, he has a secret which he will do anything to protect, even if that means driving his wife insane.	img_1020.jpg
1023	Fathers' Day	http://us.imdb.com/M/title-exact?Fathers%27%20Day%20%281997%29	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.80000019	339	1997	A woman cons two old boyfriends into searching for her runaway son by convincing both that they are the boy&#x27;s father.	img_1023.jpg
1028	Grumpier Old Men	http://us.imdb.com/M/title-exact?Grumpier%20Old%20Men%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6.4000001	450	1995	Things don&#x27;t seem to change much in Wabasha County: Max and John are still fighting after 35 years...	img_1028.jpg
1031	Lassie	http://us.imdb.com/M/title-exact?Lassie%20(1994)	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.5999999	452	1994	The dog everyone loves now leaps into the &#x27;90s in this all-new exciting, updated version of Lassie...	img_1031.jpg
1033	Homeward Bound II: Lost in San Francisco	http://us.imdb.com/M/title-exact?Homeward%20Bound%20II:%20Lost%20in%20San%20Francisco%20(1996)	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.5	454	1996	Shadow, Sassy, and Chance have to find their way home after they become stranded at the San Francisco International Airport as their owners fly to Canada on vacation.	img_1033.jpg
1037	Grease 2	http://us.imdb.com/M/title-exact?Grease%202%20(1982)	0	0	0	0	0	1	0	0	0	0	0	0	1	0	1	0	0	0	0	3.79999995	456	1982	An English student at a 1960&#x27;s American high school has to prove himself to the leader of a girls&#x27; gang whose members can only date greasers.	img_1037.jpg
1039	Hamlet	http://us.imdb.com/M/title-exact?Hamlet%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.69999981	66	1996	Hamlet, Prince of Denmark, returns home to find his father murdered and his mother remarrying the murderer, his uncle. Meanwhile, war is brewing.	img_1039.jpg
1042	Just Cause	http://us.imdb.com/M/title-exact?Just%20Cause%20(1995)	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	0	6.19999981	459	1995	A Harvard professor is lured back into the courtroom after 25 years to take the case of a young black man condemned to death for the horrific murder of a child.	img_1042.jpg
1046	Malice	http://us.imdb.com/M/title-exact?Malice%20(1993)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6.19999981	324	1993	A tale about a happily married couple who would like to have children. Tracy teaches infants, Andy&#x27;s a college professor. Things are never the same after she is taken to hospital and operated upon by Jed, a &#x22;know all&#x22; doctor.	img_1046.jpg
1048	She's the One	http://us.imdb.com/M/title-exact?She's%20the%20One%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	6	460	1996	How do siblings deal with each other in their targets? This is the question tackled in this movie. Blue-collared...	img_1048.jpg
1052	Dracula: Dead and Loving It	http://us.imdb.com/M/title-exact?Dracula:%20Dead%20and%20Loving%20It%20(1995)	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	5.4000001	125	1995	Another spoof from the mind of Mel Brooks. This time he&#x27;s out to poke fun at the Dracula myth. Basically...	img_1052.jpg
1054	Mr. Wrong	http://us.imdb.com/M/title-exact?Mr.%20Wrong%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	3.5999999	462	1996	A single and lonely woman finds the seemingly perfect man to date, but soon regrets it when his deranged and possessive other personality emerges and worst still, she cannot convince anyone else of his Jekyll/Hyde true nature.	img_1054.jpg
1066	Balto	http://us.imdb.com/M/title-exact?Balto%20(1995)	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6.80000019	463	1995	An outcast half-wolf risks his life to prevent a deadly epidemic from ravaging Nome, Alaska.	img_1066.jpg
1067	Bottle Rocket	http://us.imdb.com/M/title-exact?Bottle%20Rocket%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.0999999	464	1996	Focusing on a trio of friends and their elaborate plan to pull off a simple robbery and go on the run.	img_1067.jpg
1070	Living in Oblivion	http://us.imdb.com/M/title-exact?Living%20in%20Oblivion%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.4000001	466	1995	Film about filmmaking. It takes place during one day on set of non-budget movie. Ultimate tribute to all independent filmmakers.	img_1070.jpg
1074	Reality Bites	http://us.imdb.com/M/title-exact?Reality%20Bites%20(1994)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	467	1994	Generation X Graduates face life after college with a filmmaker looking for work and love in Houston.	img_1074.jpg
1078	Oliver & Company	http://us.imdb.com/M/title-exact?Oliver%20&%20Company%20(1988)	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	6.5	469	1988	A lost and alone kitten joins a gang of dogs engaged in petty larceny in New York.	img_1078.jpg
1081	Curdled	http://us.imdb.com/M/title-exact?Curdled%20(1996)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	5.5	471	1996	Gabriella, a Colombian immigrant, is obsessed with understanding violent crime. The current string of...	img_1081.jpg
1082	Female Perversions	http://us.imdb.com/M/title-exact?Female%20Perversions%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.5	472	1996	An ambitious female attorney wallows in excess and meaningless sex with both male and female partners, while dealing with her personal life problems including helping her kleptomaniac sister.	img_1082.jpg
1084	Anne Frank Remembered	http://us.imdb.com/M/title-exact?Anne%20Frank%20Remembered%20(1995)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	8.19999981	474	1995	Using previously unreleased archival material in addition to contemporary interviews, this academy award-winning...	img_1084.jpg
1089	Speed 2: Cruise Control	http://us.imdb.com/M/title-exact?Speed%202%3A%20Cruise%20Control%20%281997%29	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	3.5	86	1997	A computer hacker breaks into the computer system of the Seabourn Legend cruise liner and sets it speeding on a collision course into a gigantic oil tanker.	img_1089.jpg
1091	Pete's Dragon	http://us.imdb.com/M/title-exact?Pete's%20Dragon%20(1977)	0	0	1	1	1	0	0	0	0	0	0	0	1	0	0	0	0	0	0	6.0999999	477	1977	An orphan boy and his magical dragon come to town with his abusive adoptive parents in pursuit.	img_1091.jpg
1174	Caught	http://us.imdb.com/M/title-exact?Caught%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	6.5	514	1996	Joe and Betty run a fish market and have sunk into a comfortable, if somewhat boring life. Enter the drifter Nick...	img_1174.jpg
1093	Live Nude Girls	http://us.imdb.com/M/title-exact?Live%20Nude%20Girls%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.30000019	478	1995	Georgina throws a sleepover party for her friend Jamie, a moderately successful actress, on the night of Jamie&#x27;s fianc&#xE9;e&#x27;s bachelor party...	img_1093.jpg
1096	Commandments	http://us.imdb.com/Title?Commandments+(1997)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	5.4000001	480	1997	Seth Warner has reached the end of his rope. Ever since his wife died two years earlier, his world has been in turmoil...	img_1096.jpg
1099	Red Firecracker, Green Firecracker	http://us.imdb.com/M/title-exact?Pao%20Da%20Shuang%20Deng%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.80000019	481	1994	A woman inherits her father&#x27;s fireworks factory, as he had no son. The business does well and everything works in an orderly fashion until one day...	img_1099.jpg
1101	Six Degrees of Separation	http://us.imdb.com/M/title-exact?Six%20Degrees%20of%20Separation%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	6.9000001	46	1993	An affluent New York couple find their lives touched, intruded upon, and compelled by a mysterious young black man who is never quite who he says he is.	img_1101.jpg
1104	C'est arrivé près de chez vous	http://us.imdb.com/M/title-exact?C%27est%20arriv%E9%20pr%E8s%20de%20chez%20vous%20%281992%29	0	0	0	0	0	1	1	0	1	0	0	0	0	0	0	0	0	0	0	7.5	483	1992	In this dark satire, a film crew follows a ruthless thief and heartless killer as he goes about his daily routines. But complications set in when the film crew loses their abjectness and begin lending a hand.	img_1104.jpg
1109	Death and the Maiden	http://us.imdb.com/M/title-exact?Death%20and%20the%20Maiden%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	7.19999981	306	1994	A political activist is convinced that her guest is a man who once tortured her for the government.	img_1109.jpg
1111	Double Happiness	http://us.imdb.com/M/title-exact?Double%20Happiness%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7	487	1994	Twenty-two year old Chinese-Canadian Jade Li comes from a traditional Chinese family, who try to put on the perfect public persona at all cost so as to &#x22;save face&#x22;...	img_1111.jpg
1113	Mrs. Parker and the Vicious Circle	http://us.imdb.com/M/title-exact?Mrs.%20Parker%20and%20the%20Vicious%20Circle%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.19999981	488	1994	Dorothy Parker remembers the heyday of the Algonquin Round Table, a circle of friends whose barbed wit, like hers, was fueled by alcohol and flirted with despair.	img_1113.jpg
1117	Surviving Picasso	http://us.imdb.com/M/title-exact?Surviving%20Picasso%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.0999999	490	1996	The passionate Merchant-Ivory drama tells the story of Francoise Gilot, the only lover of Pablo Picasso who was strong enough to withstand his ferocious cruelty and move on with her life.	img_1117.jpg
1118	Up in Smoke	http://us.imdb.com/M/title-exact?Up%20in%20Smoke%20(1978)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.80000019	491	1978	Two stoners unknowingly smuggle a van - made entirely of marijuana - from Mexico to L.A., with incompetent Sgt. Stedenko on their trail.	img_1118.jpg
1120	I'm Not Rappaport	http://us.imdb.com/M/title-exact?I'm%20Not%20Rappaport%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.30000019	492	1996	Old Nat Moyer is a talker, a philosopher, and a troublemaker with a fanciful imagination. His companion is Midge Carter...	img_1120.jpg
1132	Feeling Minnesota	http://us.imdb.com/M/title-exact?Feeling%20Minnesota%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	5.30000019	495	1996	An ex-convict and his bumbling crook brother fight for the same woman.	img_1132.jpg
1134	Get on the Bus	http://us.imdb.com/M/title-exact?Get%20on%20the%20Bus%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.69999981	367	1996	Get on the Bus follows several Black men on a cross country bus trip to the Million Man March. On the bus are an eclectic set of characters including a laid off aircraft worker...	img_1134.jpg
1136	Ghosts of Mississippi	http://us.imdb.com/M/title-exact?Ghosts%20of%20Mississippi%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	126	1996	The widow of murdered civil rights leader Medger Evers and a district attorney struggle to finally bring the murderer to justice.	img_1136.jpg
1139	Hackers	http://us.imdb.com/M/title-exact?Hackers%20(1995)	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	5.9000001	498	1995	A young boy is arrested by the US Secret Service for writing a computer virus and is banned from using a computer until his 18th birthday...	img_1139.jpg
1145	Blue Chips	http://us.imdb.com/M/title-exact?Blue%20Chips%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.80000019	500	1994	A college basketball coach is forced to break the rules in order to get the players he needs to stay competitive.	img_1145.jpg
1147	My Family	http://us.imdb.com/M/title-exact?My%20Family%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	502	1995	Traces over three generations an immigrant family&#x27;s trials, tribulations, tragedies, and triumphs...	img_1147.jpg
1148	Tom & Viv	http://us.imdb.com/M/title-exact?Tom%20&%20Viv%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.5	503	1994	In 1915, T.S. (Tom) Eliot and Vivienne Haigh-Wood elope, but her longstanding gynecological and emotional problems disrupt their planned honeymoon...	img_1148.jpg
1150	Last Dance	http://us.imdb.com/M/title-exact?Last%20Dance%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.5	409	1996	Upon taking a new job, young lawyer Rick Hayes is assigned to the clemency case of Cindy Liggett, a woman convicted of first degree murder and sentenced to death...	img_1150.jpg
1152	In Love and War	http://us.imdb.com/M/title-exact?In%20Love%20and%20War%20(1996)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	5.5999999	257	1996	Reporter Ernest Hemingway is an ambulance driver in Italy during World War I. While bravely risking his life in the line of duty...	img_1152.jpg
1160	Love! Valour! Compassion!	http://us.imdb.com/Title?Love%21+Valour%21+Compassion%21+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.5999999	507	1997	Gregory invites seven friends to spend the summer at his large, secluded 19th-century home in upstate New York...	img_1160.jpg
1164	Zeus and Roxanne	http://us.imdb.com/M/title-exact?Zeus%20and%20Roxanne%20(1997)	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4.9000001	372	1997	Mary Beth is a marine biologist that gets annoyed when a dog called Zeus stows aboard her research boat...	img_1164.jpg
1166	Love & Human Remains	http://us.imdb.com/M/title-exact?Love%20&%20Human%20Remains%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.5999999	510	1993	Set in a dreary urban landscape of an anonymous Canadian city, LOVE AND HUMAN REMAINS is a dark comedy about a group of twentysomethings looking for love and meaning in the &#x27;90s...	img_1166.jpg
1168	Little Buddha	http://us.imdb.com/M/title-exact?Little%20Buddha%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.69999981	440	1993	Lama Norbu comes to Seattle in search of the reincarnation of his dead teacher, Lama Dorje. His search leads him to young Jesse Conrad...	img_1168.jpg
1180	I Love Trouble	http://us.imdb.com/M/title-exact?I%20Love%20Trouble%20(1994)	0	1	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5	349	1994	Peter Brackett and Sabrina Peterson are two competing Chicago newspaper reporters who join forces to unravel the mystery behind a train derailment.	img_1180.jpg
1207	Jade	http://us.imdb.com/M/title-exact?Jade%20(1995)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	4.9000001	500	1995	A bright assistant D.A. investigates a gruesome hatchet murder and hides a clue he found at the crime scene. Under professional threats and an attempt on his life, he goes on heartbroken because evidence point to the woman he still loves.	img_1207.jpg
1209	Mixed Nuts	http://us.imdb.com/M/title-exact?Mixed%20Nuts%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5	68	1994	The events focus around a crisis hotline business on one crazy night during the Christmas holidays.	img_1209.jpg
1211	Blue Sky	http://us.imdb.com/M/title-exact?Blue%20Sky%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.4000001	528	1994	Hank Marshall is a tough, square-jawed, straitlaced Army engineer and nuclear science expert, assigned to help conduct weapons-testing in 1950&#x27;s America...	img_1211.jpg
1213	Guilty as Sin	http://us.imdb.com/M/title-exact?Guilty%20as%20Sin%20(1993)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	1	0	0	5.4000001	114	1993	A female lawyer takes an accused wife-murderer as a client, but finds herself morally compelled to betray him one way or another.	img_1213.jpg
1216	Kissed	http://us.imdb.com/M/title-exact?Kissed%20%281996%29	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	6.30000019	531	1996	Over the years, a child&#x27;s romantic ideals about death blossom into necrophilia, the study of embalming and the most profound relationship of her life.	img_1216.jpg
1218	Friday	http://us.imdb.com/M/title-exact?Friday%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7.0999999	532	1995	Craig and Smokey are two guys in Los Angeles hanging out on their porch on a Friday afternoon, smoking and drinking...	img_1218.jpg
1220	Higher Learning	http://us.imdb.com/M/title-exact?Higher%20Learning%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.19999981	166	1995	People from all different walks of life, encounter racial tension, rape, responsibility, and the meaning of an education on a university campus.	img_1220.jpg
1221	When a Man Loves a Woman	http://us.imdb.com/M/title-exact?When%20a%20Man%20Loves%20a%20Woman%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.19999981	533	1994	An airline pilot and his wife are forced to face the consequences of her alcoholism when her addictions threaten her life and their daughter&#x27;s safety. While the woman enters detox, her husband must face the truth of his enabling behavior.	img_1221.jpg
1225	Angus	http://us.imdb.com/M/title-exact?Angus%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.30000019	535	1995	A miserable fat teenager secretly has a crush on the class beauty, ends up becoming the surprising participant to dance with her at a high school dance, meaning he&#x27;s got to get his act together with the help of his best friend.	img_1225.jpg
1228	Under Siege 2: Dark Territory	http://us.imdb.com/M/title-exact?Under%20Siege%202:%20Dark%20Territory%20(1995)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.19999981	520	1995	Casey Ryback hops on a Colorado to LA train to start a vacation with his niece. Early into the trip, terrorists board the train and use it as a mobile HQ to hijack a top secret destructive US satellite.	img_1228.jpg
1232	Madonna: Truth or Dare	http://us.imdb.com/M/title-exact?Madonna:%20Truth%20or%20Dare%20(1991)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	5.5	413	1991	Documentary following singer Madonna on her controversial Blond Ambition tour in 1990.	img_1232.jpg
1239	Cutthroat Island	http://us.imdb.com/M/title-exact?Cutthroat%20Island%20(1995)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	5.4000001	132	1995	A female pirate and her companion race against their rivals to find a hidden island that contains a fabulous treasure.	img_1239.jpg
1244	Metro	http://us.imdb.com/M/title-exact?Metro%20(1997)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.30000019	538	1997	Roper, a hostage negotiator catches a murderous bank robber after a blown heist. The bank robber escapes and immediately goes after the man who put him behind bars...	img_1244.jpg
1248	Blink	http://us.imdb.com/M/title-exact?Blink%20(1994)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	6	299	1994	Emma is an attractive girl in her 20s who has been blind for 20 years. A new type of eye operation partially restores her sight...	img_1248.jpg
1250	Best of the Best 3: No Turning Back	http://us.imdb.com/M/title-exact?Best%20of%20the%20Best%203:%20No%20Turning%20Back%20(1995)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	4.4000001	540	1995	A martial arts instructor comes to the defense of a schoolteacher who has taken a stand against a local white supremacist organization.	img_1250.jpg
1258	Trial and Error	http://us.imdb.com/M/title-exact?Trial%20and%20Error%20%281997%29	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	5.5	80	1997	An actor poses as a lawyer to help his sick friend, and problems develop.	img_1258.jpg
1262	Walking and Talking	http://us.imdb.com/M/title-exact?Walking%20and%20Talking%20(1996)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	6.5	542	1996	Things have been tough lately for Amelia. Her best friend moved out of the apartment, her cat got cancer...	img_1262.jpg
1273	Color of Night	http://us.imdb.com/M/title-exact?Color%20of%20Night%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	4.9000001	546	1994	A color-blind psychiatrist Bill Capa is stalked by an unknown killer after taking over his murdered friend&#x27;s therapy group, all of whom have a connection to a mysterious young woman that Capa begins having intense sexual encounters with.	img_1273.jpg
1284	Before and After	http://us.imdb.com/M/title-exact?Before%20and%20After%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	0	0	0	6	180	1996	Two parents deal with the effects when their son is accused of murdering his girlfriend.	img_1284.jpg
1285	Princess Caraboo	http://us.imdb.com/M/title-exact?Princess%20Caraboo%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.5999999	550	1994	Bristol, England, early 19th century. A beautiful young stranger who speaks a weird language is tried for the crime of begging...	img_1285.jpg
1290	Country Life	http://us.imdb.com/M/title-exact?Country%20Life%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.5	553	1994	Adaptation of Chekhov&#x27;s &#x22;Uncle Vanya&#x22; set in rural Australia in the 1920&#x27;s. Jack...	img_1290.jpg
1294	Ayn Rand: A Sense of Life	http://us.imdb.com/Title?Ayn+Rand%3A+A+Sense+of+Life+(1997)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	6.69999981	555	1997	Ayn Rand was born in 1905 in St. Petersberg, Russia. She escaped to America in 1926 amidst the rise of Soviet Communism...	img_1294.jpg
1296	Indian Summer	http://us.imdb.com/M/title-exact?Indian+Summer+(1996)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	557	1996	A passionately committed young dancer is forced to re-examine his career and life when faced with death, finding hope through an older man who becomes his lover, mentor and companion.	img_1296.jpg
1302	Late Bloomers	http://us.imdb.com/M/title-exact?Late%20Bloomers%20%281996%29	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.30000019	559	1996	High School basketball coach, Dinah Groshardt, falls for the school secretary, Carly Lumpkin, and upsets the entire school in the process.	img_1302.jpg
1311	Waiting to Exhale	http://us.imdb.com/M/title-exact?Waiting%20to%20Exhale%20(1995)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	5.0999999	561	1995	Based on Terry McMillan&#x27;s novel, this film follows four very different African-American women and their relationships with the male gender.	img_1311.jpg
1314	Surviving the Game	http://us.imdb.com/M/title-exact?Surviving%20the%20Game%20(1994)	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	5.80000019	380	1994	A homeless man is hired as a survival guide for a group of wealthy businessmen on a hunting trip in the mountains, unaware that they are killers who hunt humans for sport, and that he is their new prey.	img_1314.jpg
1320	Homage	http://us.imdb.com/M/title-exact?Homage%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.5	563	1995	    He would sacrifice everything for her...even her.	img_1320.jpg
1322	Metisse (Café au Lait)	http://us.imdb.com/Title?M%E9tisse+(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.0999999	564	1993	Lola is pregnant. But she does not know who the father is : Jamal, the black muslim, son of diplomats...	img_1322.jpg
1325	August	http://us.imdb.com/M/title-exact?August%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.69999981	566	1996	Chekovs Uncle Vanya, transposed to turn-of-the-century North Wales, where the peace and tranquillity...	img_1325.jpg
1327	Captives	http://us.imdb.com/Title?Captives+(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.0999999	568	1994	A beautiful young dentist (Ormond) working in a tough British prison starts to become attracted to a violent inmate (Roth) after the break-up of her marriage...	img_1327.jpg
1328	Of Love and Shadows	http://us.imdb.com/M/title-exact?Of%20Love%20and%20Shadows%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5	569	1994	Irene is a magazine editor living under the shadow of the Pinochet dictatorship in Chile. Francisco is a handsome photographer and he comes to Irene for a job...	img_1328.jpg
1332	My Life and Times With Antonin Artaud (En compagnie d'Antonin Artaud)	http://us.imdb.com/M/title-exact?En%20compagnie%20d'Antonin%20Artaud%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7	571	1993	May, 1946, in Paris young poet Jacques Prevel meets Antonin Artaud, the actor, artist, and writer just released from a mental asylum...	img_1332.jpg
1336	Kazaam	http://us.imdb.com/M/title-exact?Kazaam%20(1996)	0	0	0	0	1	1	0	0	0	1	0	0	0	0	0	0	0	0	0	2.5999999	574	1996	Being a lone young boy in the &#x27;hood&#x22; is dangerous and unpleasant. This is what Max experiences when he fools a gang of local toughs who cornered him at school...	img_1336.jpg
1338	Two Deaths	http://us.imdb.com/Title?Two+Deaths+(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.80000019	504	1995	A tale of power, passion and obsession set in a politically torn Eastern European country.	img_1338.jpg
1341	Hedd Wyn	http://us.imdb.com/M/title-exact?Hedd%20Wyn%20(1992)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.80000019	577	1992	A young poet living in the North Wales countryside competes for the most coveted prize of all in Welsh Poetry - that of the chair of the National Eisteddfod...	img_1341.jpg
1348	Every Other Weekend	http://us.imdb.com/Title?Un+week-end+sur+deux+(1990)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	579	1990	Camille, a mercurial C&#xE9;sar-winning actress, has seen better times. Estranged from her husband, she&#x27;s with her children only every other weekend...	img_1348.jpg
1350	Crows and Sparrows	http://us.imdb.com/Title?Wuya+yu+maque+(1949)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	581	1949	</p>	img_1350.jpg
1351	Lover's Knot	http://us.imdb.com/M/title-exact?Lover's%20Knot%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.30000019	582	1996	Steve and Megan, unbeknownst to them, are being guided and &#x22;advised&#x22; by one of Cupid&#x27;s caseworkers who has been struggling to get Steve and Megan together for many lifetimes...	img_1351.jpg
1356	Ed's Next Move	http://us.imdb.com/M/title-exact?Ed%27s%20Next%20Move%20%281996%29	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.30000019	586	1996	Ed lives in Wisconsin, but he&#x27;s just been dumped by his girlfriend. So he moves to New York City for a big change...	img_1356.jpg
1366	JLG/JLG - autoportrait de décembre	http://us.imdb.com/M/title-exact?JLG/JLG%20-%20autoportrait%20de%20d%E9cembre%20%281994%29	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	7.19999981	588	1994	Director Jean-Luc Godard reflects in this movie about his place in film history, the interaction of film industry and film as art, as well as the act of creating art.	img_1366.jpg
1368	Mina Tannenbaum	http://us.imdb.com/M/title-exact?Mina%20Tannenbaum%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7	590	1994	The film tells the story of two girls who are of totally different character. They know each other since their childhood and were friends until they became teenagers...	img_1368.jpg
1374	Falling in Love Again	http://us.imdb.com/M/title-exact?Falling%20in%20Love%20Again%20(1980)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5	591	1980	Harry and Sue Lewis met in the 40es as teenagers living in the Bronx. He was an aspiring architect, she was the most beautiful girl in school...	img_1374.jpg
1376	Meet Wally Sparks	http://us.imdb.com/M/title-exact?Meet%20Wally%20Sparks%20(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.80000019	592	1997	Wally Sparks is a tabloid TV show reporter who&#x27;s trying to boost ratings on his show. He goes to the governor&#x27;s mansion to uncover a sex scandal.	img_1376.jpg
1378	Rhyme & Reason	http://us.imdb.com/M/title-exact?Rhyme%20%26%20Reason%20(1997)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	7.0999999	594	1997	A study in the world of hip-hop, done mostly with interviews, in order to see why it is as popular as it is today and what the future holds.	img_1378.jpg
1380	Hollow Reed	http://us.imdb.com/Title?Hollow+Reed+(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.19999981	568	1996	Following the break-up of his marriage after revealing his homosexuality, GP Martin Wyatt loses custody of his son Oliver to his now ex-wife Hannah and her new partner Frank...	img_1380.jpg
1386	Tetsuo II: Body Hammer	http://us.imdb.com/M/title-exact?Tetsuo+II%3A+Body+Hammer+(1992)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	6.19999981	596	1992	Sequel to &#x22;Tetsou&#x22; this time has the Iron Man transforming into cyberkinetic gun when a gang of vicious skinheads kidnap his son...	img_1386.jpg
1388	Gabbeh	http://us.imdb.com/M/title-exact?Gabbeh+(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	597	1996	An elderly couple go about their routine of cleaning their gabbeh (a intricately-designed rug), while bickering gently with each other...	img_1388.jpg
1394	Swept from the Sea	http://us.imdb.com/M/title-exact?Swept+from+the+Sea+(1997)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	6.69999981	599	1997	The film tells the story of Russian emigree and the only survivor from ship crash Yanko Goorall and servant Amy Foster in the end of 19th century...	img_1394.jpg
1397	Of Human Bondage	http://us.imdb.com/M/title-exact?Of%20Human%20Bondage%20(1934)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.0999999	424	1934	Abandoning artistic ambitions, sensitive and club-footed Philip Carey enrolls in medical school and falls in love with a waitress Mildred Rogers...	img_1397.jpg
1401	M. Butterfly	http://us.imdb.com/M/title-exact?M.%20Butterfly%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.69999981	178	1993	In 1960s China, French diplomat Rene Gallimard falls in love with an opera singer, Song Liling - but Song is not at all who Gallimard thinks.	img_1401.jpg
1411	Barbarella	http://us.imdb.com/M/title-exact?Barbarella%20(1968)	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	5.80000019	602	1968	In the far future, a highly sexual woman is tasked with finding and stopping the evil Durand-Durand. Along the way she encounters various unusual people.	img_1411.jpg
1416	No Escape	http://us.imdb.com/M/title-exact?No%20Escape%20(1994)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	5.9000001	11	1994	A soldier convicted for murdering his commanding officer is dumped and left to die on a prison island inhabited by two camps of convicts.	img_1416.jpg
1419	Highlander III: The Sorcerer	http://us.imdb.com/M/title-exact?Highlander%20III:%20The%20Sorcerer%20(1994)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	4	605	1994	Deceived that he had won the Prize, Connor MacLeod awakens from a peaceful life when an entombed immortal magician comes seeking the Highlander.	img_1419.jpg
1422	Suture	http://us.imdb.com/M/title-exact?Suture%20(1993)	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	6.5	606	1993	Brothers Vincent (rich) and Clay (poor) meet up for the first time after their father&#x27;s funeral and remark on how similar they look...	img_1422.jpg
1424	I Like It Like That	http://us.imdb.com/M/title-exact?I%20Like%20It%20Like%20That%20(1994)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	1	0	0	0	0	6.0999999	607	1994	Lisette and husband Chino face marital difficulties. She is fed up with the kids, while he has job troubles...	img_1424.jpg
1426	Grace of My Heart	http://us.imdb.com/M/title-exact?Grace%20of%20My%20Heart%20(1996)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	12	1996	An aspiring singer, Denise Waverly/Edna Buxton, sacrifices her own singing career to write hit songs that launch the careers of other singers...	img_1426.jpg
1429	Sliding Doors	http://us.imdb.com/Title?Sliding+Doors+(1998)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.69999981	610	1998	A London woman&#x27;s love life and career both hinge, unknown to her, on whether or not she catches a train. We see it both ways, in parallel.	img_1429.jpg
1437	House Party 3	http://us.imdb.com/M/title-exact?House%20Party%203%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	3.20000005	611	1994	Come to a new House Party, where Kid, after a lifetime &#x27;playing the field&#x27;, falls in love and is about to get married...	img_1437.jpg
1440	Above the Rim	http://us.imdb.com/M/title-exact?Above%20the%20Rim%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.19999981	416	1994	Story of a promising high school basketball star and his relationships with two brothers, one a drug dealer and the other a former basketball star fallen on hard times and now employed as a security guard.	img_1440.jpg
1443	8 Seconds	http://us.imdb.com/M/title-exact?8%20Seconds%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.0999999	613	1994	This film chronicles the life of Lane Frost, 1987 PRCA Bull Riding World Champion, his marriage and his friendships with Tuff Hedeman (three-time World Champion) and Cody Lambert.	img_1443.jpg
1445	Ladybird Ladybird	http://us.imdb.com/M/title-exact?Ladybird%20Ladybird%20(1994)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.5	614	1994	This Ken Loach docu-drama relates the story of a British womanUs fight with Social Services over the care of her children...	img_1445.jpg
1447	Century	http://us.imdb.com/M/title-exact?Century%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.19999981	615	1993	Paul Reisner, a young doctor, becomes a researcher in a prestigious medical institute. He feels he has a chance to be part of a movement of unending progress in science and civilization...	img_1447.jpg
1449	Pather Panchali	http://us.imdb.com/M/title-exact?Pather%20Panchali%20(1955)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	8.10000038	617	1955	Sometime in the early years of the century, a boy, Apu, is born to a poor Brahmin family in a village in Bengal...	img_1449.jpg
1451	Foreign Correspondent	http://us.imdb.com/M/title-exact?Foreign%20Correspondent%20(1940)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	7.69999981	116	1940	On the eve of WW2, a young American reporter tries to expose enemy agents in London.	img_1451.jpg
1453	Angel on My Shoulder	http://us.imdb.com/M/title-exact?Angel%20on%20My%20Shoulder%20(1946)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	620	1946	The Devil arranges for a deceased gangster to return to Earth as a well-respected judge to make up for his previous life.	img_1453.jpg
1457	Love Is All There Is	http://us.imdb.com/M/title-exact?Love%20Is%20All%20There%20Is%20(1996)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	4.9000001	622	1996	Romeo &#x26; Juliet gets transplanted to the Bronx.	img_1457.jpg
1461	Here Comes Cookie	http://us.imdb.com/M/title-exact?Here%20Comes%20Cookie%20(1935)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.5	625	1935	Alarmed that his younger daughter is about to marry a gold-digger, a millionaire turns over the fortune to her ditsy older sister for safe-keeping to his ultimate regret. protection.	img_1461.jpg
1469	Tom and Huck	http://us.imdb.com/M/title-exact?Tom%20and%20Huck%20(1995)	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.5	627	1995	A mischievous young boy, Tom Sawyer (<a  href="/name/nm0001795/"	img_1469.jpg
1474	Nina Takes a Lover	http://us.imdb.com/M/title-exact?Nina%20Takes%20a%20Lover%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	0	0	0	0	5.4000001	628	1994	When Ninas husband goes off for a few weeks to work, she meets and starts seeing a photographer. This...	img_1474.jpg
1475	Bhaji on the Beach	http://us.imdb.com/M/title-exact?Bhaji%20on%20the%20Beach%20(1993)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	629	1993	A group of women of Indian descent take a trip together from their home in Birmingham, England to the beach resort of Blackpool...	img_1475.jpg
1477	Nightwatch	http://us.imdb.com/M/title-exact?Nightwatch%20(1997)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	6.19999981	631	1997	Ewan McGregor plays a law student who takes a job as a night watchman at a morgue. He begins to discover clues that implicate him as the suspect of a serial of murders.	img_1477.jpg
1480	Herbie Rides Again	http://us.imdb.com/M/title-exact?Herbie%20Rides%20Again%20(1974)	0	0	1	0	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.4000001	100	1974	The living Volkswagen Beetle helps an old lady protect her home from a corrupt developer.	img_1480.jpg
1486	Girl in the Cadillac	http://us.imdb.com/M/title-exact?Girl%20in%20the%20Cadillac%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	4.9000001	634	1995	A runaway meets up with a young man in the bus station who leads her to a rendezvous with two others who are planning a bank robbery...	img_1486.jpg
1488	Germinal	http://us.imdb.com/M/title-exact?Germinal%20(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	111	1993	It&#x27;s mid 19th century in northern France. The story is about a coal miner&#x27;s town. The workers are exploited by the mine&#x27;s owner. One day, they decide to go on strike, and the authorities repress them.	img_1488.jpg
1490	Fausto	http://us.imdb.com/M/title-exact?Fausto%20%281993%29	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.5999999	636	1993	Fausto enters an orphanage and is initially bullied, but then makes friends with a new bunkmate, Raymond...	img_1490.jpg
1492	Window to Paris	http://us.imdb.com/Title?Okno+v+Parizh+(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	7	637	1994	Nikolai (played by Sergei Dontsov) has been fired from his job as a music teacher and has to live in the gym until he finds a place to stay...	img_1492.jpg
1499	Grosse Fatigue	http://us.imdb.com/M/title-exact?Grosse%20fatigue%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.4000001	639	1994	What is going on here?!? French director, Michel Blanc (as Himself), just doesn&#x27;t understand why his life is suddenly falling apart...	img_1499.jpg
1503	Gold Diggers: The Secret of Bear Mountain	http://us.imdb.com/M/title-exact?Gold%20Diggers:%20The%20Secret%20of%20Bear%20Mountain%20(1995)	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	5.69999981	640	1995	A city girl teams up with a tomboy to solve the mystery of Bear Mountain, Molly Morgan, and the buried treasure as well as learn about true friendships.	img_1503.jpg
1509	Getting Even with Dad	http://us.imdb.com/M/title-exact?Getting%20Even%20with%20Dad%20(1994)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.19999981	450	1994	Ray, an ex-con and widower, is planning a coin heist with two accomplices to help him to buy his own bakery...	img_1509.jpg
1511	Children of the Revolution	http://us.imdb.com/M/title-exact?Children%20of%20the%20Revolution%20%281996%29	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.9000001	644	1996	Few knew that Stalin spent his last night in the arms of a young Australian woman. Few still knew that their &#x22;love-child&#x22; brought Australia to the brink of civil war. Until now ...	img_1511.jpg
1513	Sprung	http://us.imdb.com/M/title-exact?Sprung%20%281997%29	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.5	205	1997	Two pairs of best friends - Montel &#x26; Clyde and Brandy &#x26; Adina meet at the party, where Clyde makes Adina think he is very rich and gets her into bed the same evening...	img_1513.jpg
1517	Race the Sun	http://us.imdb.com/M/title-exact?Race%20the%20Sun%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5	645	1996	A bunch of high school misfits in Hawaii, introduced by their new teacher, attend a science fair in...	img_1517.jpg
1519	New Jersey Drive	http://us.imdb.com/M/title-exact?New%20Jersey%20Drive%20(1995)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	6.19999981	647	1995	Jason and Midget are two young, black teenagers living in Newark,New Jersey, the unofficial car theft capital of the world...	img_1519.jpg
1522	Trial by Jury	http://us.imdb.com/M/title-exact?Trial%20by%20Jury%20(1994)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	5.30000019	649	1994	Valerie is a juror in the trail of a mob boss. When her young son&#x27;s life is threatened, she has no option other than to see that justice isn&#x27;t done.	img_1522.jpg
1524	Kaspar Hauser	http://us.imdb.com/Title?Kaspar+Hauser+(1993)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.80000019	650	1993	Kaspar Hauser is the son of the duke of Baden. At the age of one he was swapped by another baby that has been killed right after the change...	img_1524.jpg
1526	Witness	http://us.imdb.com/M/title-exact?Witness+(1985)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	1	0	0	7.5	118	1985	A young Amish boy is sole witness to a murder; policeman John Book goes into hiding in Amish country to protect him until the trial.	img_1526.jpg
1528	Nowhere	http://us.imdb.com/M/title-exact?Nowhere%20%281997%29	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.9000001	651	1997	The third film in a trilogy by writer-director Gregg Araki. Described as &#x22;90210 on acid&#x22;, the film tells the story of a day in the lives of a group of high school kids Los Angeles and the strange lives they lead.	img_1528.jpg
1537	Cosi	http://us.imdb.com/M/title-exact?Cosi%20(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.5999999	655	1996	Lewis is a young Sydney amateur theater director at his first experience: he is offered a job with a...	img_1537.jpg
1538	All Over Me	http://us.imdb.com/M/title-exact?All%20Over%20Me%20%281997%29	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.5999999	656	1997	Claude and Ellen are best friends who live in a not-so-nice area of New York. They&#x27;re involved in the subculture of 90s youth...	img_1538.jpg
1544	It Takes Two	http://us.imdb.com/M/title-exact?It%20Takes%20Two%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5.19999981	392	1995	Amanda Lemmon is a street-wise orphan who&#x27;s about to be adopted by a family who uses children for their own selfish gain...	img_1544.jpg
1550	Destiny Turns on the Radio	http://us.imdb.com/M/title-exact?Destiny%20Turns%20on%20the%20Radio%20(1995)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.30000019	659	1995	Johnny Destiny burns into Las Vegas in his hot Plymouth RoadRunner, stopping only to pick up a stranger stranded in the desert...	img_1550.jpg
1558	Aparajito	http://us.imdb.com/M/title-exact?Aparajito%20(1956)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7.9000001	617	1956	A boy leaves home to study in Calcutta, while his mother must face a life alone.	img_1558.jpg
1561	Tigrero: A Film That Was Never Made	http://us.imdb.com/M/title-exact?Tigrero:%20A%20Film%20That%20Was%20Never%20Made%20(1994)	0	0	0	0	0	0	0	1	1	0	0	0	0	0	0	0	0	0	0	6.69999981	661	1994	In 1993, Sam Fuller takes Jim Jarmusch on a trip into Brazil&#x27;s Mato Grosso, up the River Araguaia to the village of Santa Isabel Do Morro...	img_1561.jpg
1567	Careful	http://us.imdb.com/M/title-exact?Careful%20(1992)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.9000001	665	1992	In the remote Alpine village of Tolzbad at the turn of the century, people talk quietly and restrain their movements lest avalanches come and kill them...	img_1567.jpg
1571	Touki Bouki (Journey of the Hyena)	http://us.imdb.com/M/title-exact?Touki%20Bouki%20(1973)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	7	666	1973	Mory, a cowherd who rides a motorcycle mounted with a cow&#x27;s skull, and Anta, a university student...	img_1571.jpg
1574	Pharaoh's Army	http://us.imdb.com/M/title-exact?Pharaoh's%20Army%20(1995)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	7	667	1995	During the American Civil War, a Union Army captain leads his rag-tag cavalry troop up a misty creek to a remote farm to steal enemy (Confederate) livestock...	img_1574.jpg
1576	Hungarian Fairy Tale, A	http://us.imdb.com/M/title-exact?Hol%20volt,%20hol%20nem%20volt%20(1987)	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	5.9000001	668	1987	Shot in B&#x26;W, Gyula Gazdag&#x27;s film follows the surreal and often comic quests of young Andris...	img_1576.jpg
1585	American Dream	http://us.imdb.com/M/title-exact?American%20Dream%20(1990)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	7.9000001	669	1990	Chronicles the six-month strike at Hormel in Austin, Minnesota, in 1985-86. The local union, P-9 of the Food and Commercial Workers...	img_1585.jpg
1588	Salut cousin!	http://us.imdb.com/M/title-exact?Salut%20cousin!%20(1996)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	6.19999981	671	1996	Salut Cousin! is the tale of two Algerian cousins and their mishaps in the racially volatile environment of Paris.	img_1588.jpg
1595	Shopping	http://us.imdb.com/M/title-exact?Shopping%20(1994)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	5.0999999	147	1994	Lone group of teens, led by recently released joyrider and his disenchanted Belfast girlfriend, strives...	img_1595.jpg
1598	City of Industry	http://us.imdb.com/M/title-exact?City%20of%20Industry%20(1997)	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	1	0	0	6	328	1997	A retired thief swears revenge on the lunatic who murdered his brother and partner, while going on the run with the loot they stole.	img_1598.jpg
1603	Angela	http://us.imdb.com/M/title-exact?Angela%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.4000001	675	1995	A ten year old girl named Angela leads her six year old sister, Ellie, through various regimens of &#x27;purification&#x27; in an attempt to rid themselves of their evil...	img_1603.jpg
1605	Love Serenade	http://us.imdb.com/M/title-exact?Love+Serenade+(1996)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6.9000001	677	1996	In Sunray, a backwater town on Australia&#x27;s Murray River, there&#x27;s little to do but fish or listen to the local radio station...	img_1605.jpg
1610	Truth or Consequences, N.M.	http://us.imdb.com/Title?Truth+or+Consequences,+N.M.+(1997)	0	1	0	0	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	6.19999981	679	1997	A drug deal goes wrong causing a foursome, led by a lunatic killer, to go on the run. A couple in a recreational vehicle are initially kidnapped...	img_1610.jpg
1615	Warriors of Virtue	http://us.imdb.com/M/title-exact?Warriors%20of%20Virtue%20%281997%29	0	1	1	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	4.19999981	681	1997	A young man, Ryan, suffering from a disability, wishes to join the other kids from his schools football team...	img_1615.jpg
1617	Hugo Pool	http://us.imdb.com/M/title-exact?Hugo+Pool+(1997)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	4.9000001	515	1997	Hugo Pool is a quirky tale of a Los Angeles pool cleaner who falls in love with a young man dying of Lou Gerhig&#x27;s Disease.	img_1617.jpg
1618	King of New York	http://us.imdb.com/Title?King+of+New+York+(1990)	0	1	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	6.9000001	277	1990	A former drug lord returns from prison determined to wipe out all his competition and distribute the profits of his operations to New York&#x27;s poor and lower classes in this stylish and ultra violent modern twist on Robin Hood.	img_1618.jpg
1622	Paris, France	http://us.imdb.com/M/title-exact?Paris,%20France%20(1993)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	4.80000019	684	1993	</p>	img_1622.jpg
1625	Nightwatch	http://us.imdb.com/M/title-exact?Nightwatch%20(1997)	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	1	0	0	6.19999981	631	1997	Ewan McGregor plays a law student who takes a job as a night watchman at a morgue. He begins to discover clues that implicate him as the suspect of a serial of murders.	img_1625.jpg
1626	Nobody Loves Me (Keiner liebt mich)	http://us.imdb.com/M/title-exact?Keiner%20liebt%20mich%20(1994)	0	0	0	0	0	1	0	0	1	0	0	0	0	0	0	0	0	0	0	7	686	1994	On the brink of her 30th birthday, Fanny feels the door to marital happiness closing up on her. She is obsessed with death...	img_1626.jpg
1629	Nico Icon	http://us.imdb.com/M/title-exact?Nico%20Icon%20(1995)	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	7.19999981	688	1995	A look into the many lives of Christa P&#xE4;ffgen, otherwise known as Nico; from cutie German m&#xE4;dchen to the first of the supermodels...	img_1629.jpg
1636	Brothers in Trouble	http://us.imdb.com/M/title-exact?Brothers%20in%20Trouble%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.69999981	690	1995	Amir is an illegal Pakistani immigrant smuggled into England in the 1960&#x27;s to work, to send money to his family and perhaps even bring them over with him...	img_1636.jpg
1638	Normal Life	http://us.imdb.com/M/title-exact?Normal%20Life%20(1996)	0	0	0	0	0	0	1	0	1	0	0	0	0	0	0	0	0	0	0	6.19999981	404	1996	Chris is young idealistic cop who falls in love and gets married to Pam, a beautiful but emotionally unstable woman who suffers from alcoholism and drug addiction...	img_1638.jpg
1644	Sudden Manhattan	http://us.imdb.com/M/title-exact?Sudden%20Manhattan%20%281996%29	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	6	693	1996	Donna witnesses identical murders on the same street on different days. Is this a supernatural conspiracy or is she merely cracking up?	img_1644.jpg
1648	Niagara, Niagara	http://us.imdb.com/Title?Niagara,+Niagara+(1997)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.9000001	695	1997	An outsider and a young woman plagued by Tourette&#x27;s syndrome meet and together journey to Canada.	img_1648.jpg
1653	Entertaining Angels: The Dorothy Day Story	http://us.imdb.com/M/title-exact?Entertaining%20Angels:%20The%20Dorothy%20Day%20Story%20(1996)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	6.0999999	696	1996	The phrase &#x22;entertaining angels&#x22; refers to the practice of treating all guests--be they kings or peasants--as if they were visiting angels...	img_1653.jpg
1664	8 Heads in a Duffel Bag	http://us.imdb.com/Title?8+Heads+in+a+Duffel+Bag+(1997)	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5	699	1997	A mob bagman finds that his luggage, containing the proof of his latest hit, has been switched.	img_1664.jpg
1668	Wedding Bell Blues	http://us.imdb.com/M/title-exact?Wedding%20Bell%20Blues%20%281996%29	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	5	701	1996	</p>	img_1668.jpg
1673	Mirage	http://us.imdb.com/M/title-exact?Mirage%20(1995)	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	5.4000001	703	1995	Matteo Juarez is a retired detective hired by a local businessman to follow his wife Jennifer. She has a split personality and seems to be putting herself in danger without knowing it.	img_1673.jpg
1677	Sweet Nothing	http://us.imdb.com/M/title-exact?Sweet%20Nothing%20(1995)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	5.80000019	705	1995	Angel celebrates the birth of his daughter by taking his first hit of crack cocaine. With the hesitant support of his wife...	img_1677.jpg
1679	B. Monkey	http://us.imdb.com/M/title-exact?B%2E+Monkey+(1998)	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0	0	5.9000001	706	1998	Alan Furnace is a young man with the perfectly proper, quiet life of a London school teacher. But beneath all of that decency lies a burning desire for excitement and he just found it...	img_1679.jpg
1680	Sliding Doors	http://us.imdb.com/Title?Sliding+Doors+(1998)	0	0	0	0	0	0	0	0	1	0	0	0	0	0	1	0	0	0	0	6.69999981	610	1998	A London woman&#x27;s love life and career both hinge, unknown to her, on whether or not she catches a train. We see it both ways, in parallel.	img_1680.jpg
\.


--
-- Data for Name: fornecedor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fornecedor (fn_codigo, fn_nome) FROM stdin;
\.


--
-- Name: fornecedor_fn_codigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fornecedor_fn_codigo_seq', 1, false);


--
-- Data for Name: loja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY loja (lj_codigo, lj_nome, lj_fisica, lj_endereco) FROM stdin;
\.


--
-- Name: loja_lj_codigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('loja_lj_codigo_seq', 1, false);


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (us_codigo, us_nome, us_cpf, us_email, us_apelido, us_senha) FROM stdin;
\.


--
-- Name: usuario_us_codigo_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_us_codigo_seq', 1, false);


--
-- Data for Name: writers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY writers (idwriter, name) FROM stdin;
7	Ian Fleming
8	Michael France
9	Allison Anders
10	Alexandre Rockwell
11	Elmore Leonard
12	Scott Frank
13	Ann Biderman
14	David Madsen
15	Bi Feiyu
16	Li Xiao
17	Chris Marker
18	David Webb Peoples
19	Dick King-Smith
20	George Miller
21	Helen Prejean
22	Tim Robbins
23	William Shakespeare
24	Ian McKellen
25	Andrew Kevin Walker
26	Woody Allen
27	Patrick Sheane Duncan
28	Josiane Balasko
29	Patrick Aubr&eacute;e
30	Robert Kurtzman
31	Quentin Tarantino
32	Marleen Gorris
33	A.S. Byatt
34	Belinda Haas
35	Robert Louis Stevenson
36	Jerry Juhl
37	Randall Wallace
38	Paul Schrader
39	George Gallo
40	Michael Barrie
41	Jim Lovell
42	Jeffrey Kluger
43	Bob Kane
44	Lee Batchler
45	Joseph Kessel
46	Luis Bu&ntilde;uel
47	Michael Schiffer
48	Richard P. Henrick
49	Robert Rodriguez
50	Keith Walker
51	Karen Janszen
52	Paula Milne
53	John Lasseter
54	Pete Docter
55	Michael Almereyda
56	James Cameron
57	Tim Herlihy
58	Adam Sandler
59	Michael Crichton
60	Paul Attanasio
61	Atom Egoyan
62	Rudolph Grey
63	Scott Alexander
64	Steve James
65	Frederick Marx
66	Andy Breckman
67	George Lucas
68	Susan Shilliday
69	William D. Wittliff
70	David Veloz
71	Laurence Dworet
72	Robert Roy Pool
73	Luc Besson
74	Roger Avary
75	Jimmy McGovern
76	Richard N. Goodwin
77	Dean Devlin
78	Roland Emmerich
79	Peter Hedges
80	Daniel G. Sullivan
81	Fredric LeBow
82	Jack Bernstein
83	Winston Groom
84	Eric Roth
85	Richard Curtis
86	Roy Huggins
87	William Goldman
88	Jefri Aalmuhammed
89	Jack Baxter
90	Edwin Torres
91	David Koepp
92	Jim Abrahams
93	Pat Proft
94	Kenneth Branagh
95	Fred Waitzkin
96	Steven Zaillian
97	Jeff Arch
98	Nora Ephron
99	Hampton Fancher
100	Robbie Fox
101	Todd Solondz
102	John Hughes
103	Ron Clements
104	John Musker
105	William Wisher Jr.
106	Michael Blake
107	Ted Sears
108	Richard Creedon
109	Ethan Coen
110	Joel Coen
111	Daniel Goldberg
112	Len Blum
113	Mark Young
114	Kelly Ward
115	Nat Hiken
116	Pierre Boileau
117	Thomas Narcejac
118	Daniel Defoe
119	Pen Densham
120	Norm Hiscock
121	Bruce McCulloch
122	Joel Hodgson
123	Michael J. Nelson
124	James Morris
125	Gene Quintano
126	Ricou Browning
127	Jack Cowden
128	Anne-Marie Martin
129	Freida Lee Mock
130	Carl Hiaasen
131	Andrew Bergman
132	John Sayles
133	Gerald Di Pego
134	Andy Wachowski
135	Lana Wachowski
136	Robert Altman
137	Frank Barhydt
138	Truman Capote
139	George Axelrod
140	Margaret Mitchell
141	Sidney Howard
142	Herman J. Mankiewicz
143	Orson Welles
144	Stanley Kubrick
145	Arthur C. Clarke
146	Sidney Buchman
147	Lewis R. Foster
148	Stanley Tucci
149	Joseph Tropiano
150	Steven Brill
151	Kenneth Johnson
152	Sheila Burnford
153	Caroline Thompson
154	Ralph Wright
155	Ted Berman
156	Roderick Thorp
157	Jeb Stuart
158	Nick Cassavetes
159	Helen Caldwell
160	Hossein Amini
161	Thomas Hardy
162	Jon Favreau
163	Marshall Brickman
164	Graham Chapman
165	John Cleese
166	Eleanor Bergstein
167	Oliver Stone
168	Robert Klane
169	Joe Eszterhas
170	David Mamet
171	Jim Cash
172	Jack Epps Jr.
173	Ernest Thompson
174	Claude Berri
175	G&eacute;rard Brach
176	Nancy Meyers
177	Charles Shyer
178	Jean-Pierre Jeunet
179	Marc Caro
180	Lawrence Kasdan
181	Terry Gilliam
182	Tom Stoppard
183	David Giler
184	Reginald Rose
185	John Milius
186	Francis Ford Coppola
187	Dan O&#39;Bannon
188	Ronald Shusett
189	Joseph Stefano
190	Robert Bloch
191	Gustav Hasford
192	Peter Shaffer
193	Jake LaMotta
194	Joseph Carter
195	Tom Schulman
196	Sam Raimi
197	Scott Spiegel
198	Danny Rubin
199	Harold Ramis
200	Robert Zemeckis
201	Bob Gale
202	Edmund H. North
203	Katsuhiro &Ocirc;tomo
204	Iz&ocirc; Hashimoto
205	Jean-Claude Carri&egrave;re
206	Jean-Paul Rappeneau
207	Gene Wilder
208	Mel Brooks
209	Christopher Guest
210	Michael McKean
211	Jeffrey Boam
212	Richard Hooker
213	Ring Lardner Jr.
214	W.P. Kinsella
215	Phil Alden Robinson
216	John D. MacDonald
217	James R. Webb
218	Lars von Trier
219	Peter Asmussen
220	Gene Roddenberry
221	Rick Berman
222	Billy Bob Thornton
223	R&eacute;mi Waterhouse
224	Michel Fessler
225	Dodie Smith
226	Walter Wager
227	Steven E. de Souza
228	Leonard Nimoy
229	Harve Bennett
230	Daniel Waters
231	John Fusco
232	J.F. Lawton
233	Peter Benchley
234	Carl Gottlieb
235	Len Brown
236	Woody Gelman
237	Alexander Payne
238	Jim Taylor
239	Cameron Crowe
240	Lawrence Lasker
241	Peter H&oslash;eg
242	Kevin Smith
243	Shuki Levy
244	Shell Danielson
245	Tom Jankiewicz
246	Mike Myers
247	Akiva Goldsman
248	Ronald Bass
249	C&eacute;dric Klapisch
250	Lowell Cunningham
251	Ed Solomon
252	Jay Ward
253	Dana Olsen
254	Philip Eisner
255	Kevin DiCicco
256	Paul Tamasy
257	Neil LaBute
258	Louise Simonson
259	Jon Bogdanove
260	Donald A. Wollheim
261	Matthew Robbins
262	Robert E. Howard
263	Charles Edward Pogue
264	Andrew Niccol
265	Edward Neumeier
266	Robert A. Heinlein
267	Michael Mann
268	Samuel A. Taylor
269	Billy Wilder
270	Jane Austen
271	Emma Thompson
272	John O&#39;Brien
273	Mike Figgis
274	Rose Tremain
275	Rupert Walters
276	Michael Goldenberg
277	Douglas McGrath
278	John Norville
279	Ron Shelton
280	Mike Leigh
281	Scott McPherson
282	Kevin Williamson
283	Tim Rice
284	Alan Parker
285	Iain Johnstone
286	David Baldacci
287	Gregory Poirier
288	Joseph D. Pistone
289	Richard Woodley
290	Paul Guay
291	Stephen Mazur
292	Victor Nunez
293	Mike Werb
294	Michael Colleary
295	Chris Brancato
296	Andrew W. Marlowe
297	Paul Rudnick
298	James Ellroy
299	Brian Helgeland
300	Bill Lishman
301	Robert Rodat
302	John Berendt
303	John Lee Hancock
304	Stephen King
305	Brandon Boyce
306	Gerry Conlon
307	Terry George
308	Thomas Keneally
309	Wayne Beach
310	David Hodgin
311	Leslie Bohem
312	David Lynch
313	Barry Gifford
314	J.G. Ballard
315	David Cronenberg
316	Danielle Alexandra
317	David Twohy
318	James Mangold
319	David Klass
320	James Patterson
321	John Ridley
322	Mark Brown
323	Mark Haskell Smith
324	Rowan Atkinson
325	Tom Matthews
326	Paul Thomas Anderson
327	Richard Dooling
328	Steven Schwartz
329	Nicholas Kazan
330	Kurt Wimmer
331	Lawrence Hauben
332	Bo Goldman
333	Jordan Katz
334	Dan Aykroyd
335	John Landis
336	Karen Elise Baldwin
337	Steve Oedekerk
338	Victor Salva
339	LouAnne Johnson
340	Amy Heckerling
341	Adam Leff
342	Mitchell Peck
343	Fred Wolf
344	Valerie Martin
345	Christopher Hampton
346	John Wagner
347	Carlos Ezquerra
348	John Kamps
349	Arne Olsen
350	Valentine Davies
351	George Seaton
352	P.J. Hogan
353	David Zucker
354	Claude Zidi
355	Simon Micha&euml;l
356	Charles Addams
357	Danilo Bach
358	Daniel Petrie Jr.
359	Rusty Cundieff
360	Zak Penn
361	Anne Fine
362	Randi Mayem Singer
363	Willard Huyck
364	J.D. Shapiro
365	Evan Chandler
366	John Waters
367	Rowdy Herrington
368	Marty Kaplan
369	Parker Bennett
370	Terry Runte
371	Bruce Joel Rubin
372	Sam Hamm
373	Carlo Collodi
374	Bruce Geller
375	Michael McDowell
376	Jason Friedberg
377	Aaron Seltzer
378	James DeMonaco
379	Gary Nadeau
380	Barry Fanaro
381	Mort Nathan
382	Norman Steinberg
383	Dennis Palumbo
384	Fred Gipson
385	William Tunberg
386	Bill Peet
387	Erdman Penner
388	Bill Walsh
389	Don DaGradi
390	Lewis Carroll
391	Winston Hibler
392	Melissa Mathison
393	Harper Lee
394	Horton Foote
395	Colin Higgins
396	Bert Kalmar
397	Harry Ruby
398	Gregory Widen
399	Cyril Hume
400	Irving Block
401	William Wales
402	Tommy Lee Wallace
403	Hans Holzer
404	Robert Marasco
405	William F. Nolan
406	Lawrence D. Cohen
407	Alan Dean Foster
408	William Shatner
409	Jim Jacobs
410	Warren Casey
411	Richard Matheson
412	Dorothy Allison
413	Anne Meredith
414	Mark Feldberg
415	Mitchell Klebanoff
416	John Mattson
417	Stephen J. Rivele
418	Christopher Wilkinson
419	Ronald Harwood
420	Alan Paton
421	Paul Auster
422	Laura Esquivel
423	Anton Chekhov
424	Angelo Pizzo
425	Raymond Carver
426	Kevin Jarre
427	Roald Dahl
428	Karey Kirkpatrick
429	Irvine Welsh
430	John Hodge
431	Alec Coppel
432	Ernest Lehman
433	I.A.L. Diamond
434	Julius J. Epstein
435	Philip G. Epstein
436	Alan Jay Lerner
437	George Bernard Shaw
438	Ian McLellan Hunter
439	John Dighton
440	Ben Hecht
441	John Michael Hayes
442	David Dodge
443	John Steinbeck
444	Paul Osborn
445	Charles Lederer
446	Frances Goodrich
447	Albert Hackett
448	Dudley Nichols
449	Hagar Wilde
450	Richard Brooks
451	James Poe
452	Helen Aberson
453	Harold Pearl
454	Mickey Rose
455	David Newman
456	Robert Benton
457	Frederick Knott
458	Stewart Stern
459	Irving Shulman
460	Akira Kurosawa
461	Shinobu Hashimoto
462	T.E. Lawrence
463	Robert Bolt
464	Bill Forsyth
465	Jim Jarmusch
466	Donn Pearce
467	Frank Pierson
468	Lew Wallace
469	Karl Tunberg
470	John Briley
471	Reidar J&ouml;nsson
472	Lasse Hallstr&ouml;m
473	Jan Sardi
474	Scott Hicks
475	Jim McGlynn
476	Robert Gordon
477	Jacques Doillon
478	Brune Compagnon
479	Gus Van Sant
480	Susan Gauthier
481	Bruce Graham
482	Doug Richardson
483	Ed Boon
484	John Tobias
485	Carl Binder
486	Susannah Grant
487	Eddie Murphy
488	Vernon Lynch
489	Graham Yost
490	Alan Sharp
491	Jonathan Hensleigh
492	Clive Barker
493	Dennis Feldman
494	Peter Rader
495	Desmond Nakano
496	Peter Dexter
497	Thomas Babe
498	Fran Walsh
499	Peter Jackson
500	Darin Scott
501	John Wyndham
502	Stirling Silliphant
503	Tom Clancy
504	Donald Stewart
505	Jim Harrison
506	Wesley Strick
507	Dan Gordon
508	Jim Kouf
509	John Rice
510	Joe Batteer
511	Jack Finney
512	Raymond Cistheri
513	Philippe Caland
514	Jennifer Chambers Lynch
515	Lowell Ganz
516	Babaloo Mandel
517	John Long
518	Tom Davis
519	Peter M. Lenkov
520	Robert Reneau
521	David O&#39;Malley
522	Stephen Levy
523	Tim Metcalfe
524	Hilary Henkin
525	Patrick J. Clifton
526	Susan McMartin
527	Linda Woolverton
528	Roger Allers
529	Peter Atkins
530	William Diehl
531	Steve Shagan
532	Joseph Vilsmaier
533	J&uuml;rgen B&uuml;scher
534	Tony Puryear
535	Walon Green
536	Ernest Hemingway
537	Cornell Woolrich
538	Robert Riskin
539	Samuel Hopkins Adams
540	Irving Brecher
541	Fred F. Finklehoffe
542	Joseph L. Mankiewicz
543	Daphne Du Maurier
544	Robert E. Sherwood
545	Frances Beeding
546	Colette
547	Vera Caspary
548	Jay Dratler
549	James Hilton
550	Morrie Ryskind
551	Eric Hatch
552	Edna Ferber
553	Fred Guiol
554	John A. Russo
555	George A. Romero
556	Daniel Taradash
557	William Inge
558	Michael Palmer
559	Tony Gilroy
560	Lowell S. Hawley
561	Johann David Wyss
562	Dorothy Kingsley
563	George Wells
564	Lorenzo Carcaterra
565	Barry Levinson
566	William Styron
567	Alan J. Pakula
568	Claude Nuridsany
569	Marie P&eacute;rennou
570	John Carpenter
571	Nick Castle
572	Calder Willingham
573	Hideo Oguni
574	Harry Grey
575	Leonardo Benvenuti
576	Lincoln Kirstein
577	Whit Masterson
578	Robert Towne
579	Raynold Gideon
580	Thea von Harbou
581	Fritz Lang
582	Allan Moyle
583	Carl Foreman
584	John W. Cunningham
585	Jerzy Kosinski
586	L.M. Kit Carson
587	Sam Shepard
588	Frank De Felitta
589	Mary Shelley
590	William Hurlbut
591	Bernard Rose
592	DeWitt Bodeen
593	Alan Ormsby
594	Henrik Galeen
595	Beth Gage
596	Jerome Armstrong
597	Lois Duncan
598	Jeff Maguire
599	Jim Thomas
600	John Thomas
601	Peter Crabbe
602	Andy Rose
603	Heinrich Harrer
604	Becky Johnston
605	Nicholas Pileggi
606	Noah Baumbach
607	Oliver Berkman
608	Ken Lipper
609	Louisa May Alcott
610	Robin Swicord
611	David Frankel
612	Whit Stillman
613	Hugh Leonard
614	Adolph Green
615	Betty Comden
616	Wayne Smith
617	Eric Red
618	Elizabeth von Arnim
619	Peter Barnes
620	Baz Luhrmann
621	Savage Steve Holland
622	Oliver Parker
623	Michael Holroyd
624	Joyce Maynard
625	Buck Henry
626	Chris Radant
627	W.D. Richter
628	Lorne Cameron
629	David Hoselton
630	Patrick Braoud&eacute;
631	Chris Columbus
632	Don Roos
633	Maeve Binchy
634	Andrew Davies
635	Anne Rice
636	Deborah Amelon
637	James Herbert
638	Carlo Carlei
639	Kevin Wade
640	Chris Conrad
641	Mark Handley
642	William Nicholson
643	Jessie Nelson
644	Gary Ross
645	Rose Troche
646	Guinevere Turner
647	Marcia Brandwynne
648	Nadine Schiff
649	Ron Nyswaner
650	Andrew Fleming
651	Charlotte Bront&euml;
652	Hugh Whitemore
653	Richard Maibaum
654	Neil Jordan
655	Neal Israel
656	Barry Berman
657	Lesley McNeil
658	Robert King
659	Greg Taylor
660	Farhad Mann
661	Michael Miner
662	Paula Gosling
663	Charlie Fletcher
664	Philip K. Dick
665	Scott Rosenberg
666	Eric Schaeffer
667	Tony Spiridakis
668	Barry W. Blaustein
669	Dirk Shafer
670	Joseph Oriolo
671	Sherri Stoner
672	John Patrick Shanley
673	Walter Mosley
674	Carl Franklin
675	William Gibson
676	Harmony Korine
677	Larry Clark
678	Anthony Waller
679	Callie Khouri
680	Clifford Green
681	Ellen Green
682	Tony Griffin
683	Guy Manos
684	Peter Farrelly
685	Bennett Yellin
686	Adam Brooks
687	James Gray
688	Diane Drake
689	Max Apple
690	Bonnie Turner
691	Terry Turner
692	Spike Lee
693	Cinqu&eacute; Lee
694	Jane Anderson
695	Mark Verheiden
696	Mike Richardson
697	Ross Thomas
698	Chuck Pfarrer
699	Le Ly Hayslip
700	Jay Wurts
701	Allen Hughes
702	Albert Hughes
703	John Singleton
704	Philip Kaufman
705	Harry Goodridge
706	Lew Dietz
707	Terrel Seltzer
708	Ellen Simon
709	Rand Ravich
710	Jim Dwyer
711	George LaVoo
712	Suzan-Lori Parks
713	Steve Zacharias
714	Jeff Buhai
715	Leo Benvenuti
716	Steve Rudnick
717	Phoef Sutton
718	Floyd Mutrux
719	Andy Burg
720	Scott Myers
721	Preston A. Whitmore II
722	Jeff Rothberg
723	Francis X. McCarthy Jr.
724	Joe Gayton
725	Debra Hill
726	Charles Brackett
727	Richard Connell
728	Robert Presnell Sr.
729	Eleanor H. Porter
730	David Swift
731	Matthew Bright
732	Tom Hanks
733	Michael Brady
734	David E. Kelley
735	Al Pacino
736	John Paxton
737	Raymond Chandler
738	Tom Cruise
739	Stephen Sinclair
740	Tony Hiles
741	Daniel Odier
742	Jean-Jacques Beineix
743	Randy Kornfield
744	E. Jack Kaplan
745	Richard Chapman
746	Jim Quinlan
747	Joan Taylor
748	Katherine Reback
749	Elisa Bell
750	Bob Ducsay
751	Theodore Witcher
752	Arleen Sorkin
753	Paul Slansky
754	John Cassavetes
755	Joel Cohen
756	Alec Sokolow
757	Max D. Adams
758	Gordon Gordon
759	Mildred Gordon
760	George Tillman Jr.
761	Henry James
762	Carol Doyle
763	Dean R. Koontz
764	Kasi Lemmons
765	Lawrence Kasanoff
766	John Pogue
767	Gilbert Adair
768	Richard Kwietniowski
769	Stephen Peters
770	Joe Klein
771	Elaine May
772	Irwin Allen
773	Ryne Douglas Pearson
774	Lawrence Konner
775	Wim Wenders
776	Peter Handke
777	Charles Gieg Jr.
778	Felix Sutton
779	Bill Geddie
780	Hugh Wilson
781	Louise Fitzhugh
782	Arne Schmidt
783	Rick Seaman
784	Tim Kelleher
785	David Giles
786	Martin Meader
787	Mark Herman
788	Rich Wilkes
789	William Mastrosimone
790	Tina Turner
791	Kurt Loder
792	Jim Burnstein
793	Peter Stone
794	Takashi Bufford
795	J. Stanford Parker
796	Whitney Otto
797	Barbara Turner
798	Wayne Wang
799	Franz Lidz
800	Richard LaGravenese
801	Richard Linklater
802	Kim Krizan
803	Richard Russo
804	Wei Lu
805	Hua Yu
806	Leonard Gershe
807	Frances Hodgson Burnett
808	Hugh Walpole
809	Larry Clemmons
810	Adrian Dunbar
811	Peter Chelsom
812	Enzo Monteleone
813	Erika Holzer
814	Amanda Silver
815	Christopher Crowe
816	Robert Mason
817	David L. Corley
818	James Lee Burke
819	Harley Peyton
820	Kurt Vonnegut Jr.
821	Robert B. Weide
822	Greg Latter
823	Darrell Roodt
824	Larry Ferguson
825	Adi Hasak
826	Ric Gibbs
827	Jonathan Brett
828	Mark Dindal
829	Robert Lence
830	Leo Tolstoy
831	Eirik Ildahl
832	Geir Eriksen
833	Tony Vitale
834	Al Franken
835	Chris Elliott
836	Adam Resnick
837	Paul Hogan
838	Eugene Levy
839	Jeremiah Newton
840	Diane Tucker
841	Bernardo Bertolucci
842	Susan Minot
843	Lech Majewski
844	John Bowe
845	John Herzfeld
846	Howard Stern
847	Hans Bauer
848	Robin Schiff
849	Steve Buscemi
850	John Van Druten
851	Walter Reisch
852	Francis Veber
853	Mark Steven Johnson
854	Barbara Williams
855	Samantha Adams
856	Eric Knight
857	Matthew Jacobs
858	Gregory K. Pincus
859	Chris Hauty
860	Julie Hickson
861	Lynn Siefert
862	Michael Ritchie
863	Elizabeth Livingston
864	Carlos Davis
865	Ken Finkleman
866	Billy Crystal
867	John Katzenbach
868	Rafael Yglesias
869	Aaron Sorkin
870	Jonas McCord
871	Chris Miller
872	Edward Burns
873	Rudy De Luca
874	I. Marlene King
875	Chris Matheson
876	Kerry Ehrin
877	David Steven Cohen
878	Elana Lesser
879	Owen Wilson
880	Wes Anderson
881	Hal Hartley
882	Tom DiCillo
883	Helen Childress
884	C.M. Talkington
885	Jim Cox
886	Tim Disney
887	John Payson
888	Reb Braddock
889	John Maass
890	Louise J. Kaplan
891	Julie H&eacute;bert
892	Christian Forte
893	Jon Blair
894	Anne Frank
895	Ed Jones
896	Don Jakoby
897	Jan de Bont
898	Ira Levin
899	Malcolm Marmorstein
900	Seton I. Miller
901	Warren Leight
902	Ed Kaplan
903	Julianna Lavin
904	Robert LoCash
905	Daniel Taplitz
906	Daying Ye
907	Feng Jicai
908	Tom Noonan
909	John Guare
910	R&eacute;my Belvaux
911	Alex Lasker
912	Bill Rubenstein
913	H.E. Bates
914	Christopher Neame
915	Ariel Dorfman
916	Alan Martin
917	Jamie Hewlett
918	Mina Shum
919	Al Stump
920	Alan Rudolph
921	Randy Sue Coburn
922	Chazz Palminteri
923	Arianna Huffington
924	Ruth Prawer Jhabvala
925	Tommy Chong
926	Cheech Marin
927	Herb Gardner
928	Sig Herzig
929	Bertram Millhauser
930	Todd Haynes
931	Steven Baigelman
932	Robert M. Young
933	Alexander Key
934	Reggie Rock Bythewood
935	Lewis Colick
936	Jonathan Harvey
937	Rafael Moreu
938	Paul W. Shapiro
939	Gregory Nava
940	Anna Thomas
941	Michael Hastings
942	Edward Bond
943	James Vance Marshall
944	Steven Haft
945	Ron Koslow
946	Aubrey K. Rattan
947	Henry S. Villard
948	James Nagel
949	Arkadiy Strugatskiy
950	Boris Strugatskiy
951	Terrence McNally
952	Cleveland O&#39;Neal III
953	Brian E. O&#39;Neal
954	Tom Benedek
955	Brad Fraser
956	Rudy Wurlitzer
957	Boaz Yakin
958	David O. Russell
959	Lance Young
960	Edward Pomerantz
961	Robert Downey Sr.
962	Laura Ernst
963	John Hopkins
964	David E. Peckinpah
965	Richard Jefferies
966	Bernie Somers
967	Eugene Corr
968	Leslie Dixon
969	Riwia Brown
970	Alan Duff
971	Senel Paz
972	Patricia Highsmith
973	Ren&eacute; Cl&eacute;ment
974	Gianni Romoli
975	Tiziano Sclavi
976	Leon Gordon
977	Helen Deutsch
978	Dwight Taylor
979	Allan Scott
980	Melchior Lengyel
981	Edwin Justus Mayer
982	E. Max Frye
983	Eleazar Lipsky
984	Delia Ephron
985	Eric Bernt
986	Rama Laurie Stagner
987	Steve Kloves
988	Larry Cohen
989	Chris Warner
990	Ilene Chaiken
991	Angus Fraser
992	Lynne Stopkewich
993	Ice Cube
994	DJ Pooh
995	Jere Cunningham
996	A.E. Hotchner
997	Steven Soderbergh
998	Chris Crutcher
999	Jill Gordon
1000	Richard Hatem
1001	Matt Reeves
1002	Barbara Shulgasser
1003	Michael Grais
1004	Mark Victor
1005	Claire Denis
1006	Jean-Pol Fargeau
1007	Al Septien
1008	Turi Meyer
1009	Michael Frost Beckner
1010	James Gorman
1011	Randy Feldman
1012	Vondie Curtis-Hall
1013	Dana Stevens
1014	Mark Rosenthal
1015	Barry Gray
1016	Deborah Scott
1017	Jill Mazursky
1018	J.J. Abrams
1019	Gregor Nicholas
1020	Johanna Pigott
1021	Sara Bernstein
1022	Gregory Bernstein
1023	Nicole Holofcener
1024	Joyce Carol Oates
1025	Elizabeth White
1026	Miguel Arteta
1027	Richard Price
1028	Marc Lawrence
1029	Alan Zweibel
1030	Billy Ray
1031	Matthew Chapman
1032	Seth Zvi Rosenfeld
1033	Kathleen McGhee-Anderson
1034	David Michael Wieger
1035	Lisa Krueger
1036	Robert Nelson Jacobs
1037	Rosellen Brown
1038	Ted Tally
1039	Michael Austin
1040	John Wells
1041	Ken Richards
1042	Janus Cercone
1043	Hal Salwen
1044	Michael Blakemore
1045	Judd Apatow
1046	Colin Quinn
1047	Michael Paxton
1048	Matthew Harrison
1049	Kevin Corrigan
1050	Martin Sherman
1051	Mildred Cram
1052	Leo McCarey
1053	Martha Cheavens
1054	Winnie Holzman
1055	Gretchen Dyer
1056	Victoria Foyt
1057	Henry Jaglom
1058	Terry McMillan
1059	James Hadley Chase
1060	Sue Miller
1061	Ken Hixon
1062	Mark Medoff
1063	Mathieu Kassovitz
1064	Anna Campion
1065	Julian Mitchell
1066	Stacy Cochran
1067	James Salter
1068	Frank Deasy
1069	Isabel Allende
1070	Donald Freed
1071	Lucian Pintilie
1072	Petru Dumitriu
1073	G&eacute;rard Mordillat
1074	Jacques Prevel
1075	Ricardo Lee
1076	Paul Michael Glaser
1077	Christian Ford
1078	Roy Blount Jr.
1079	Stephen Dobyns
1080	Maurizio Nichetti
1081	Alan Llwyd
1082	John Rubino
1083	Anne-Marie Etienne
1084	Jacques Fieschi
1085	Filippo Pichi
1086	Baichen Chen
1087	Gu Liu
1088	Peter Shaner
1089	Johan Doesburg
1090	Richard Feynman
1091	Ralph Leighton
1092	John Walsh
1093	Michael Covert
1094	Jean-Luc Godard
1095	Johann Wolfgang Goethe
1096	Christian Dietrich Grabbe
1097	Martine Dugowson
1098	Steven Paul
1099	Ted Allan
1100	Harry Basil
1101	Rodney Dangerfield
1102	Craig Rosenberg
1103	Stavros Kazantzidis
1104	Yael Bergman
1105	Neville Bolt
1106	Saul Turteltaub
1107	Shin&#39;ya Tsukamoto
1108	Mohsen Makhmalbaf
1109	Pat Bermel
1110	Jason Schombing
1111	Joseph Conrad
1112	Tim Willocks
1113	Rikki Beadle Blair
1114	Martin Duberman
1115	Lester Cohen
1116	W. Somerset Maugham
1117	David Henry Hwang
1118	Jay Sommers
1119	Dick Chevillat
1120	Jean-Claude Forest
1121	Claude Brul&eacute;
1122	Wallace Wolodarsky
1123	Richard Herley
1124	Michael Gaylin
1125	Brad Mirman
1126	Scott McGehee
1127	David Siegel
1128	Darnell Martin
1129	James L. Brooks
1130	Gary Lennon
1131	Peter Howitt
1132	Reginald Hudlin
1133	David Toney
1134	Bobby Smith Jr.
1135	Jeff Pollack
1136	Benny Medina
1137	Monte Merrick
1138	Rona Munro
1139	Stephen Poliakoff
1140	Andr&eacute; T&eacute;chin&eacute;
1141	Pascal Bonitzer
1142	Satyajit Ray
1143	Bibhutibhushan Bandyopadhyay
1144	Abraham Polonsky
1145	Frank Butler
1146	Charles Bennett
1147	Joan Harrison
1148	Gypsy Rose Lee
1149	James Gunn
1150	Harry Segall
1151	James Edward Grant
1152	Joseph Bologna
1153	Erik Shapiro
1154	Giuseppe Giacosa
1155	Luigi Illica
1156	John F. Sullivan
1157	Don Hartman
1158	Sam Mintz
1159	Sheldon Currie
1160	Gerald Wexler
1161	Mark Twain
1162	Stephen Sommers
1163	Alan Jacobs
1164	Gurinder Chadha
1165	Meera Syal
1166	Leopold Atlas
1167	John C. Higgins
1168	Ole Bornedal
1169	Gordon Buford
1170	Andrew Wellman
1171	James M. Cain
1172	John Warren
1173	Tom Robbins
1174	Arlette Langmann
1175	Richard Morgi&egrave;ve
1176	Vyacheslav Leikin
1177	Yuri Mamin
1178	Don Rhymer
1179	Michel Blanc
1180	Bertrand Blier
1181	Barry Glasser
1182	Thomas E. Gaddis
1183	James Long
1184	Claude Sautet
1185	Tom S. Parker
1186	Jim Jennewein
1187	Larry Bishop
1188	Peter Duncan
1189	Alain Godard
1190	Jean-Jacques Annaud
1191	Barry Morrow
1192	Seth Margolis
1193	Naomi Foner
1194	Nick Gomez
1195	Amy Schor
1196	Vicki Polon
1197	Heywood Gould
1198	Peter Sehr
1199	William Kelley
1200	Pamela Wallace
1201	Gregg Araki
1202	Dusan Kovacevic
1203	Emir Kusturica
1204	Philippe Labro
1205	Menno Meyjes
1206	Kevin Allen
1207	Paul Durden
1208	Louis Nowra
1209	Sylvia Sichel
1210	Scott Silver
1211	Deborah Dean Davis
1212	Ronan O&#39;Leary
1213	Chet Raymo
1214	Robert Ramsey
1215	Matthew Stone
1216	Ellyn Bache
1217	Deena Goldstone
1218	Andre Degas
1219	Jean Aurenche
1220	Bertrand Tavernier
1221	Mika Kaurism&auml;ki
1222	Christa Lang
1223	Lorraine Devon
1224	Patricia Royce
1225	Louis Paul Boon
1226	Fran&ccedil;ois Chevallier
1227	Guy Maddin
1228	George Toles
1229	Djibril Diop Mamb&eacute;ty
1230	Robby Henson
1231	Gyula Gazdag
1232	Mikl&oacute;s Gy&ouml;rffy
1233	Virginia Kellogg
1234	Dalton Trumbo
1235	Ben Perry
1236	Merzak Allouache
1237	Caroline Thivel
1238	Tim Cahill
1239	Stephen Judson
1240	Paul W.S. Anderson
1241	Geoffrey Wright
1242	Ken Solarz
1243	Gordan Mihic
1244	David Rose
1245	Rebecca Miller
1246	Crane Wilbur
1247	Shirley Barrett
1248	Gertrude Davies Lintz
1249	William Joyce
1250	Philip Goodhew
1251	Hisashi Saito
1252	Michael Vickerman
1253	Hugh Kelley
1254	Michael A. Nickles
1255	Nicholas St. John
1256	Bo Widerberg
1257	Frank Cottrell Boyce
1258	Tom Walmsley
1259	Jonathan Darby
1260	Doris D&ouml;rrie
1261	Gianni Amelio
1262	Andrea Porporati
1263	Susanne Ofteringer
1264	&Aring;ke Sandgren
1265	Roland Sch&uuml;tt
1266	Robert Buckler
1267	Abdullah Hussein
1268	Jim McKay
1269	Denise Casano
1270	Peg Haller
1271	Bob Schneider
1272	Jim Sheridan
1273	Adrienne Shelly
1274	Takeshi Kitano
1275	Matthew Weiss
1276	Robert Mundi
1277	Daniel Mornin
1278	Mo Ogrodnik
1279	Dana Lustig
1280	Annette Goliti Gutierrez
1281	Pedro Almod&oacute;var
1282	James Andronica
1283	Pier Paolo Pasolini
1284	Lee Drysdale
1285	Chloe King
\.


--
-- Name: writers_idwriter_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('writers_idwriter_seq', 1285, true);


--
-- Data for Name: writersfilm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY writersfilm (idwriter, idfilm) FROM stdin;
7	2
8	2
9	3
10	3
11	4
12	4
13	5
14	5
15	6
16	6
17	7
18	7
19	8
20	8
21	9
22	9
23	10
24	10
25	11
26	13
27	15
28	16
29	16
30	17
31	17
32	19
33	20
34	20
35	21
36	21
37	22
38	23
39	27
40	27
41	28
42	28
43	29
44	29
45	30
46	30
47	31
48	31
49	33
50	35
51	35
52	36
53	1
54	1
55	37
56	39
57	41
58	41
59	43
60	43
61	46
62	47
63	47
64	48
65	48
66	49
67	50
68	51
69	51
31	53
70	53
71	54
72	54
73	55
31	56
74	56
75	57
60	58
76	58
77	62
78	62
79	65
80	66
81	66
82	67
83	69
84	69
85	70
86	73
87	73
88	75
89	75
90	76
91	76
50	78
92	80
93	80
59	82
23	83
94	83
95	87
96	87
97	88
98	88
99	89
18	89
100	90
31	92
101	93
102	94
103	95
104	95
56	96
105	96
106	97
107	99
108	99
109	100
110	100
111	101
112	101
113	103
114	103
115	105
66	105
116	106
117	106
118	107
119	107
120	108
121	108
122	109
123	109
124	110
125	110
126	112
127	112
59	118
128	118
129	119
130	120
131	120
77	121
78	121
132	124
133	125
134	129
135	129
136	130
137	130
138	131
139	131
140	133
141	133
142	134
143	134
144	135
145	135
146	136
147	136
148	137
149	137
150	138
151	138
152	140
153	140
154	142
155	142
156	144
157	144
158	146
159	146
160	149
161	149
162	150
26	152
163	152
164	154
165	154
166	155
31	156
74	156
167	157
168	158
169	159
170	160
171	161
172	161
173	162
174	165
175	165
174	166
175	166
176	167
177	167
178	171
179	171
180	174
67	174
181	175
182	175
56	176
183	176
184	178
185	180
186	180
187	183
188	183
189	185
190	185
191	188
144	188
23	190
94	190
192	191
193	192
194	192
195	196
73	198
196	201
197	201
198	202
199	202
18	203
200	204
201	204
186	205
202	205
203	206
204	206
205	207
206	207
207	208
208	208
209	209
210	209
211	210
67	210
212	211
213	211
214	215
215	215
98	216
216	218
217	218
218	221
219	221
220	222
221	222
222	223
223	224
224	224
225	225
102	225
226	226
227	226
220	227
228	227
220	228
229	228
220	229
229	229
220	230
228	230
43	231
230	231
231	232
232	233
233	234
234	234
235	235
236	235
237	236
238	236
239	237
109	238
110	238
215	239
240	239
241	244
13	244
242	246
243	247
244	247
245	248
246	249
43	254
247	254
248	255
249	256
250	257
251	257
252	259
253	259
254	260
255	261
256	261
257	262
258	263
259	263
260	264
261	264
262	266
263	266
242	268
264	270
265	271
266	271
267	273
268	274
269	274
270	275
271	275
272	276
273	276
274	277
275	277
276	278
270	283
277	283
278	284
279	284
280	285
281	287
282	288
283	289
284	289
165	290
285	290
286	291
87	291
287	292
288	293
289	293
290	294
291	294
292	297
293	298
294	298
295	299
296	300
297	301
298	302
299	302
292	303
300	304
301	304
302	312
303	312
304	315
305	315
306	317
307	317
308	318
96	318
26	319
309	322
310	322
311	323
312	324
313	324
314	325
315	325
316	326
317	326
318	327
299	328
319	329
320	332
319	332
321	334
322	335
323	336
324	338
85	338
325	339
326	340
327	341
328	341
187	343
188	343
319	348
329	350
59	355
330	355
331	357
332	357
333	361
334	362
335	362
336	363
125	363
82	364
337	364
338	365
339	366
248	366
340	367
341	368
342	368
343	369
344	370
345	370
297	372
346	373
347	373
348	374
349	374
169	375
350	378
351	378
220	380
221	380
352	381
93	384
353	384
354	385
355	385
356	386
297	386
357	388
358	388
359	390
360	391
341	391
361	393
362	393
67	394
363	394
364	395
365	395
366	396
367	397
368	397
369	398
370	398
371	402
43	403
372	403
373	404
107	404
374	405
91	405
304	406
375	406
376	407
377	407
378	409
379	409
380	410
381	410
382	414
383	414
384	416
385	416
386	418
387	418
388	419
389	419
390	420
391	420
392	423
22	425
393	427
394	427
395	428
396	430
397	430
398	431
399	434
400	434
87	435
401	438
402	440
403	440
404	446
405	446
304	447
406	447
220	449
407	449
220	450
408	450
409	451
410	451
233	452
234	452
233	453
411	453
412	454
413	454
414	456
415	456
50	457
416	457
417	458
418	458
419	459
420	459
421	461
422	462
423	464
170	464
424	468
425	469
136	469
426	470
27	471
427	473
428	473
429	475
430	475
427	477
329	477
431	479
268	479
432	480
269	482
433	482
434	483
435	483
436	485
437	485
269	486
268	486
438	487
439	487
440	489
441	490
442	490
443	492
444	492
445	494
440	494
446	496
447	496
448	497
449	497
450	499
451	499
300	500
301	500
452	501
453	501
26	502
454	502
455	504
456	504
457	505
458	506
459	506
460	510
461	510
462	511
463	511
26	514
163	514
464	516
26	517
163	517
110	518
109	518
465	522
466	523
467	523
468	526
469	526
470	527
471	529
472	529
473	531
474	531
475	534
476	535
477	536
478	536
23	537
479	537
480	538
481	538
482	540
483	541
484	541
485	542
486	542
487	545
488	545
489	546
490	549
491	550
156	550
492	551
493	552
494	554
317	554
495	555
496	556
497	556
498	558
499	558
359	564
500	564
501	565
502	565
503	566
504	566
505	569
506	569
507	570
180	570
508	571
509	572
510	572
511	573
512	573
513	574
514	574
515	575
516	575
517	576
8	576
518	577
334	577
519	578
520	578
521	579
522	581
523	581
524	583
525	585
526	585
317	586
527	588
528	588
529	590
530	591
531	591
532	593
533	593
318	594
534	597
535	597
536	601
448	601
441	603
537	603
538	604
539	604
540	605
541	605
542	606
543	607
544	607
440	608
545	608
446	609
447	609
436	610
546	610
547	611
548	611
538	612
549	612
550	613
551	613
552	614
553	614
554	616
555	616
556	618
557	618
558	619
559	619
560	622
561	622
562	623
563	623
119	627
564	628
565	628
566	632
567	632
568	634
569	634
570	636
571	636
144	641
572	641
460	647
573	647
574	649
575	649
426	651
576	651
143	653
577	653
578	654
304	655
579	655
580	656
581	656
582	658
434	659
435	659
583	661
584	661
411	662
585	663
586	664
587	664
588	667
116	669
117	669
511	670
512	670
589	671
590	671
492	672
591	672
216	673
217	673
592	674
593	674
594	675
595	677
596	678
262	680
263	680
529	681
597	682
282	682
598	684
599	685
600	685
601	687
602	687
603	690
604	690
605	693
606	695
607	695
608	696
38	696
609	699
610	699
611	700
612	702
613	703
614	705
615	705
616	706
617	706
618	707
619	707
620	709
621	710
565	712
23	713
622	713
345	714
623	714
624	715
625	715
626	716
627	716
94	718
628	720
629	720
242	721
630	722
631	722
632	723
633	724
634	724
635	725
636	725
637	726
638	726
591	727
639	728
640	728
641	729
642	729
643	731
644	732
645	733
646	733
647	734
648	734
649	735
642	736
650	738
232	739
651	740
652	740
399	742
653	742
654	744
655	746
656	747
657	747
658	754
491	755
659	755
447	756
446	756
660	758
661	758
662	759
663	759
664	760
187	760
27	761
665	762
57	763
58	763
666	764
667	764
487	765
668	765
669	766
670	768
671	768
59	769
672	769
673	770
674	770
675	771
676	772
677	772
678	773
679	775
680	776
681	776
682	779
683	779
684	780
685	780
686	781
687	782
416	783
688	785
689	787
690	790
691	790
26	792
277	792
692	793
693	793
694	794
658	796
695	797
696	797
697	798
698	802
699	803
700	803
565	804
26	805
163	805
701	806
702	806
703	807
59	809
704	809
705	812
706	812
707	815
708	815
492	816
709	816
710	817
711	817
712	818
713	819
714	819
715	820
716	820
537	821
717	821
496	823
718	823
311	827
719	828
720	828
721	829
570	831
571	831
722	832
723	832
724	833
725	834
570	834
726	836
269	836
727	837
728	837
729	842
730	842
731	844
732	845
733	846
734	846
23	847
735	847
736	848
737	848
578	849
738	849
739	853
499	854
740	854
741	855
742	855
465	856
357	859
743	862
744	864
745	864
496	866
746	866
747	869
748	869
11	870
38	870
749	871
750	871
751	872
752	873
753	873
280	874
754	875
755	876
756	876
757	877
758	878
759	878
760	880
755	881
756	881
761	882
762	882
169	883
763	885
764	887
273	888
483	890
765	890
86	912
766	912
767	913
768	913
769	914
770	915
771	915
772	916
247	916
773	917
774	917
775	918
776	918
189	920
465	922
777	924
778	924
779	925
780	926
781	929
659	929
782	930
783	930
784	932
785	935
786	935
787	936
507	939
788	940
789	941
790	942
791	942
792	944
793	945
794	948
795	948
796	949
694	949
797	950
421	952
798	952
799	953
800	953
801	955
802	955
803	956
456	956
804	958
805	958
801	959
280	960
292	962
806	965
807	967
808	967
809	969
154	969
810	970
811	970
812	971
132	972
813	974
814	974
815	975
816	976
817	976
818	978
819	978
820	980
821	980
822	981
823	981
824	982
825	984
826	984
827	986
828	989
829	989
830	990
591	990
831	992
832	992
103	993
104	993
833	995
834	997
835	998
836	998
658	999
837	1000
758	1003
759	1003
185	1004
775	1006
209	1007
838	1007
839	1008
840	1008
841	1009
842	1009
843	1010
844	1010
845	1011
846	1012
112	1012
847	1013
171	1013
134	1217
135	1217
848	1014
665	1016
849	1017
850	1020
851	1020
852	1023
515	1023
157	1025
853	1028
854	1029
855	1029
856	1031
857	1031
858	1032
859	1033
860	1033
861	1035
862	1035
863	1036
864	1036
865	1037
157	1038
23	1039
94	1039
866	1041
515	1041
867	1042
157	1042
868	1045
869	1046
870	1046
871	1047
872	1048
208	1052
873	1052
874	1053
875	1054
876	1054
736	1064
450	1064
877	1066
878	1066
879	1067
880	1067
881	1069
882	1070
430	1073
883	1074
884	1077
885	1078
886	1078
887	1079
888	1081
889	1081
890	1082
891	1082
892	1083
893	1084
894	1084
505	1085
895	1085
896	1088
489	1089
897	1089
898	1090
169	1090
899	1091
900	1091
901	1092
902	1092
903	1093
353	1095
904	1095
905	1096
906	1099
907	1099
908	1100
909	1101
881	1103
910	1104
911	1107
912	1107
913	1108
914	1108
915	1109
868	1109
916	1110
917	1110
918	1111
919	1112
920	1113
921	1113
922	1114
923	1117
924	1117
925	1118
926	1118
102	1119
927	1120
928	1122
929	1122
930	1131
931	1132
932	1133
933	1133
934	1134
935	1136
936	1137
937	1139
279	1145
938	1146
939	1147
940	1147
941	1148
942	1149
943	1149
944	1150
945	1150
946	1151
947	1152
948	1152
949	1159
950	1159
951	1160
952	1162
953	1162
954	1164
853	1165
955	1166
841	1168
956	1168
957	1169
958	1170
959	1173
960	1174
961	1175
962	1175
963	1177
964	1179
965	1179
176	1180
177	1180
966	1182
713	1185
714	1185
231	1188
64	1189
967	1189
968	1190
969	1194
970	1194
971	1195
972	1198
973	1198
974	1199
975	1199
976	1200
977	1200
978	1203
979	1203
980	1204
981	1204
982	1206
169	1207
983	1208
440	1208
98	1209
984	1209
985	1210
986	1211
987	1212
988	1213
989	1215
990	1215
991	1216
992	1216
993	1218
994	1218
703	1220
248	1221
834	1221
935	1222
995	1222
996	1223
997	1223
998	1225
999	1225
1000	1228
1001	1228
136	1230
1002	1230
1003	1231
1004	1231
1005	1233
1006	1233
1007	1234
1008	1234
1009	1239
1010	1239
1011	1244
1012	1245
1013	1248
1014	1249
774	1249
1015	1250
1016	1250
1017	1254
1018	1254
1019	1255
1020	1255
1021	1258
1022	1258
345	1260
1023	1262
1024	1263
1025	1263
1026	1265
1027	1267
269	1269
433	1269
1028	1270
1029	1271
1030	1273
1031	1273
1032	1276
1033	1276
794	1277
939	1278
1034	1279
508	1280
1035	1281
1036	1283
1037	1284
1038	1284
1039	1285
1040	1285
1041	1287
1042	1287
1043	1288
1044	1290
1045	1291
1046	1291
1047	1294
1048	1295
1049	1295
1050	1296
1051	1297
1052	1297
1053	1299
550	1299
1054	1300
112	1301
111	1301
1055	1302
1056	1308
1057	1308
1058	1311
1059	1313
982	1313
985	1314
1060	1315
1061	1315
1062	1320
1063	1322
1064	1324
423	1325
1065	1325
1066	1326
1067	1326
1068	1327
1069	1328
1070	1328
1071	1330
1072	1330
1073	1332
1074	1332
1075	1333
170	1335
1076	1336
1077	1336
1078	1337
119	1337
1079	1338
979	1338
1080	1339
1081	1341
1082	1343
1083	1348
1084	1348
1085	1349
1086	1350
1087	1350
1088	1351
1089	1353
1057	1354
1090	1355
1091	1355
1092	1356
1093	1362
1094	1366
1095	1367
1096	1367
1097	1368
1006	1370
1005	1370
1098	1374
1099	1374
1100	1376
1101	1376
1102	1377
1103	1379
1104	1379
1105	1380
52	1380
1106	1385
1107	1386
666	1387
1108	1388
1109	1393
1110	1393
1111	1394
1112	1394
1113	1396
1114	1396
1115	1397
1116	1397
1117	1401
1118	1408
1119	1408
1120	1411
1121	1411
227	1413
1122	1414
1123	1416
1124	1416
398	1419
1125	1419
9	1421
1126	1422
1127	1422
1128	1424
1129	1425
9	1426
1130	1427
1131	1429
84	1436
1132	1437
1133	1437
1134	1439
1135	1440
1136	1440
708	1441
1137	1443
758	1444
759	1444
1138	1445
1139	1447
1140	1448
1141	1448
1142	1449
1143	1449
1144	1450
1145	1450
1146	1451
1147	1451
1148	1452
1149	1452
1150	1453
1151	1454
1152	1457
1153	1457
1154	1459
1155	1459
1156	1460
1157	1461
1158	1461
1057	1465
1056	1465
1159	1466
1160	1466
1161	1469
1162	1469
763	1471
25	1471
1163	1474
1164	1475
1165	1475
1166	1476
1167	1476
1168	1477
701	1478
702	1478
388	1480
1169	1480
1170	1481
198	1481
1171	1486
1172	1486
1173	1487
479	1487
174	1488
1174	1488
510	1489
509	1489
1175	1490
1176	1492
1177	1492
1178	1496
1179	1499
1180	1499
1181	1503
1182	1505
1183	1505
1084	1506
1184	1506
1185	1509
1186	1509
1187	1510
1188	1511
1142	1512
1143	1512
359	1513
500	1513
1189	1515
1190	1515
1191	1517
1192	1518
1193	1518
1194	1519
1195	1521
1196	1521
333	1522
1197	1522
1198	1524
1199	1526
1200	1526
1201	1528
1202	1529
1203	1529
924	1530
1204	1532
1205	1532
1206	1534
1207	1534
1208	1537
1209	1538
1210	1543
1211	1544
1212	1545
1213	1545
1214	1550
1215	1550
1216	1554
1217	1554
1218	1556
1142	1558
1143	1558
1219	1560
1220	1560
1221	1561
1222	1561
1223	1564
1224	1564
1225	1565
1226	1565
1227	1567
1228	1567
1229	1571
1230	1574
1231	1576
1232	1576
1167	1582
1233	1582
1234	1587
1235	1587
1236	1588
1237	1588
1238	1594
1239	1594
1240	1595
1241	1597
1242	1598
1243	1599
1244	1599
1245	1603
1246	1604
1247	1605
1248	1608
1249	1608
1125	1610
1250	1611
1251	1613
1107	1613
1252	1615
1253	1615
1254	1616
961	1617
962	1617
1255	1618
1256	1619
1257	1621
1258	1622
1259	1624
1168	1625
1260	1626
1261	1628
1262	1628
1263	1629
1264	1631
1265	1631
1266	1636
1267	1636
1268	1637
1269	1637
1270	1638
1271	1638
307	1642
1272	1642
1273	1644
1274	1647
1275	1648
1040	1653
1007	1654
1008	1654
1059	1662
1276	1662
1277	1663
195	1664
1278	1666
1279	1668
1280	1668
1281	1672
1282	1673
1283	1674
1284	1677
634	1679
1285	1679
1131	1680
\.


--
-- Name: actors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY actors
    ADD CONSTRAINT actors_pkey PRIMARY KEY (idactor);


--
-- Name: actorsfilm_idfilm_idactor_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY actorsfilm
    ADD CONSTRAINT actorsfilm_idfilm_idactor_key UNIQUE (idfilm, idactor);


--
-- Name: directors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY directors
    ADD CONSTRAINT directors_pkey PRIMARY KEY (iddirector);


--
-- Name: films_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY films
    ADD CONSTRAINT films_pkey PRIMARY KEY (filmid);


--
-- Name: pk_amizade; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY amizade
    ADD CONSTRAINT pk_amizade PRIMARY KEY (am_codigo);


--
-- Name: pk_fabricante; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fabricante
    ADD CONSTRAINT pk_fabricante PRIMARY KEY (fb_codigo);


--
-- Name: pk_fornecedor; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fornecedor
    ADD CONSTRAINT pk_fornecedor PRIMARY KEY (fn_codigo);


--
-- Name: pk_loja; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY loja
    ADD CONSTRAINT pk_loja PRIMARY KEY (lj_codigo);


--
-- Name: pk_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (us_codigo);


--
-- Name: un_amizade; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY amizade
    ADD CONSTRAINT un_amizade UNIQUE (am_usuario, am_amigo);


--
-- Name: un_fabricante_nome; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fabricante
    ADD CONSTRAINT un_fabricante_nome UNIQUE (fb_nome);


--
-- Name: un_fornecedor_nome; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fornecedor
    ADD CONSTRAINT un_fornecedor_nome UNIQUE (fn_nome);


--
-- Name: un_loja_nome; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY loja
    ADD CONSTRAINT un_loja_nome UNIQUE (lj_nome, lj_endereco);


--
-- Name: unique_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT unique_usuario UNIQUE (us_codigo, us_cpf);


--
-- Name: writers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY writers
    ADD CONSTRAINT writers_pkey PRIMARY KEY (idwriter);


--
-- Name: writesfilm_idfilm_idwriterr_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY writersfilm
    ADD CONSTRAINT writesfilm_idfilm_idwriterr_key UNIQUE (idfilm, idwriter);


--
-- Name: fk_amizade_amigo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY amizade
    ADD CONSTRAINT fk_amizade_amigo FOREIGN KEY (am_amigo) REFERENCES usuario(us_codigo) ON DELETE CASCADE;


--
-- Name: fk_amizade_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY amizade
    ADD CONSTRAINT fk_amizade_usuario FOREIGN KEY (am_usuario) REFERENCES usuario(us_codigo) ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

