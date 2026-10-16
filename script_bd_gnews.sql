CREATE TABLE noticia(
  
  id_noticia SERIAL PRIMARY KEY,
  titulo varchar(255),
  subtitulo varchar(255),
  conteudo_texto varchar(255),
  status varchar(255),
  data_publicacao timestamp,
  data_criacao timestamp,
  id_jornalista int,
  id_categoria int,
  CONSTRAINT id_jornalista FOREIGN key (id_jornalista),
  REFERENCES jornalista (id_jornalista) 
  CONSTRAINT id_categoria FOREIGN key (id_categoria),
  REFERENCES categoria (id_categoria) 

);

CREATE TABLE curtida_reacao(

  id_curtida SERIAL PRIMARY KEY,
  id_jornalista int,
  data_reacao timestamp,
  CONSTRAINT id_jornalista FOREIGN key (id_jornalista),
  REFERENCES jornalista (id_jornalista)

);

