
-- Create sequence for library membership numbers
CREATE SEQUENCE public.clanski_broj_seq
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 101
    CACHE 1
    NO CYCLE;


-- Create users table
CREATE TABLE public.korisnik (
                                 id SERIAL4 NOT NULL,
                                 prezime_i_ime VARCHAR(100) NOT NULL,
                                 datum_rodjenja DATE NOT NULL,
                                 clanski_broj INT4 DEFAULT nextval('public.clanski_broj_seq'::regclass) NULL,

                                 CONSTRAINT korisnik_pkey PRIMARY KEY (id),
                                 CONSTRAINT korisnik_prezime_i_ime_check
                                     CHECK (length(prezime_i_ime::text) >= 2)
);


-- Create books table
CREATE TABLE public.knjiga (
                               id SERIAL4 NOT NULL,
                               naslov VARCHAR(100) NOT NULL,
                               autor VARCHAR(50) NOT NULL,
                               br_strana INT4 NULL,
                               dostupna BOOL DEFAULT true NULL,

                               CONSTRAINT knjiga_pkey PRIMARY KEY (id),
                               CONSTRAINT knjiga_autor_check
                                   CHECK (length(autor::text) >= 2),
                               CONSTRAINT knjiga_naslov_check
                                   CHECK (length(naslov::text) >= 1),
                               CONSTRAINT min_br_strana
                                   CHECK (br_strana > 0)
);


-- Create loans table
CREATE TABLE public.pozajmica (
                                  id SERIAL4 NOT NULL,
                                  korisnik_id INT4 NOT NULL,
                                  knjiga_id INT4 NOT NULL,
                                  dan_izdavanja DATE DEFAULT CURRENT_DATE NOT NULL,
                                  dan_vracanja DATE NULL,

                                  CONSTRAINT pozajmica_pkey PRIMARY KEY (id),
                                  CONSTRAINT pozajmica_korisnik_id_fkey
                                      FOREIGN KEY (korisnik_id) REFERENCES public.korisnik(id),
                                  CONSTRAINT pozajmica_knjiga_id_fkey
                                      FOREIGN KEY (knjiga_id) REFERENCES public.knjiga(id)
);
