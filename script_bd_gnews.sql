CREATE TABLE noticia(

  id_noticia SERIAL PRIMARY KEY,
  titulo varchar(255),
  subtitulo varchar(255),
  conteudo_texto varchar(255),
  status varchar(255),
  data_publicacao timestamp,
  data_criacao timestamp,
  fk_jornalista int,
  fk_categoria int,
  CONSTRAINT fk_jornalista FOREIGN KEY (fk_jornalista),
  CONSTRAINT fk_categoria FOREIGN KEY (fk_categoria)
);

CREATE TABLE curtida_reacao(

  id_curtida SERIAL PRIMARY KEY,
  fk_jornalista int
  CONSTRAINT fk_jotnalista FOREIGN KEY (fk_jornalista)
  data_reacao timestamp
);

