--create database ratue;
CREATE TABLE Agencia (
  age_cod     varchar(20) NOT NULL, 
  age_nome    varchar(40) NOT NULL, 
  age_fone    varchar(14) NOT NULL, 
  age_ende    varchar(60) NOT NULL, 
  age_cnpj    varchar(20) NOT NULL UNIQUE, 
  age_dt_cria date NOT NULL, 
  PRIMARY KEY (age_cod));
COMMENT ON TABLE Agencia IS 'Tabela da agencia de eventos';
COMMENT ON COLUMN Agencia.age_cod IS 'coluna do CNPJ da agencia';
COMMENT ON COLUMN Agencia.age_nome IS 'Nome da Agencia';
COMMENT ON COLUMN Agencia.age_fone IS 'Telefone da empresa';
COMMENT ON COLUMN Agencia.age_ende IS 'Endereço da cidade';
COMMENT ON COLUMN Agencia.age_cnpj IS 'cnpj da empresa';
COMMENT ON COLUMN Agencia.age_dt_cria IS 'Data de criação da empresa';
CREATE TABLE Cidade (
  cid_cod  SERIAL NOT NULL, 
  cid_cep  varchar(9) NOT NULL, 
  cid_nome varchar(40) NOT NULL, 
  cid_uf   varchar(2) NOT NULL, 
  PRIMARY KEY (cid_cod));
COMMENT ON TABLE Cidade IS 'cidades onde vai acontecer algum evento';
COMMENT ON COLUMN Cidade.cid_cod IS 'Codigo da Cidade';
COMMENT ON COLUMN Cidade.cid_cep IS 'cep da idade';
COMMENT ON COLUMN Cidade.cid_nome IS 'Nome da cidade';
COMMENT ON COLUMN Cidade.cid_uf IS 'Unidade federal';
CREATE TABLE Evento (
  eve_cod     SERIAL NOT NULL, 
  eve_nome    varchar(40) NOT NULL, 
  eve_tema    varchar(40) NOT NULL, 
  eve_data    date NOT NULL, 
  eve_hora    time(7) NOT NULL, 
  eve_age_cod varchar(20) NOT NULL, 
  eve_resumo  varchar(200) NOT NULL, 
  eve_vlr     numeric(12, 2) NOT NULL, 
  PRIMARY KEY (eve_cod));
COMMENT ON COLUMN Evento.eve_cod IS 'Codigo do evento';
COMMENT ON COLUMN Evento.eve_nome IS 'Nome do evento';
COMMENT ON COLUMN Evento.eve_tema IS 'Assunto do evento';
COMMENT ON COLUMN Evento.eve_data IS 'data do evento';
COMMENT ON COLUMN Evento.eve_hora IS 'Hora do evento';
COMMENT ON COLUMN Evento.eve_age_cod IS 'chave estrangeira';
COMMENT ON COLUMN Evento.eve_resumo IS 'resumo do envento';
COMMENT ON COLUMN Evento.eve_vlr IS 'valor do evento';
CREATE TABLE inscricoes (
  pes_cod      int4 NOT NULL, 
  eve_cod      int4 NOT NULL, 
  par_sts_pag  varchar(30) NOT NULL, 
  par_tipo_pag varchar(20) NOT NULL, 
  par_vlr_ing  numeric(6, 2), 
  PRIMARY KEY (pes_cod, 
  eve_cod));
COMMENT ON COLUMN inscricoes.eve_cod IS 'chave estrangeira';
COMMENT ON COLUMN inscricoes.par_sts_pag IS 'status pagamento do ingresso';
COMMENT ON COLUMN inscricoes.par_tipo_pag IS 'tipo de pagamento';
COMMENT ON COLUMN inscricoes.par_vlr_ing IS 'valor dos ingressos';
CREATE TABLE Local (
  loc_cod SERIAL NOT NULL, 
  loc_nom varchar(40), 
  cid_cod int4 NOT NULL, 
  PRIMARY KEY (loc_cod));
COMMENT ON TABLE Local IS 'Local do evento';
COMMENT ON COLUMN Local.loc_cod IS 'codigo do local';
COMMENT ON COLUMN Local.loc_nom IS 'nome local';
CREATE TABLE Palestrante (
  pal_cod     SERIAL NOT NULL, 
  pal_cpf     varchar(14) NOT NULL UNIQUE, 
  pal_nome    varchar(40) NOT NULL, 
  pal_dt_nasc date NOT NULL, 
  pal_fone    varchar(14) NOT NULL, 
  pro_cod_atv int4 NOT NULL, 
  PRIMARY KEY (pal_cod));
COMMENT ON COLUMN Palestrante.pal_cod IS 'Codigo do palestrante';
COMMENT ON COLUMN Palestrante.pal_cpf IS 'CPF do palestrante';
COMMENT ON COLUMN Palestrante.pal_nome IS 'Nome do palestrante';
COMMENT ON COLUMN Palestrante.pal_dt_nasc IS 'data de nascimento do palestrante';
COMMENT ON COLUMN Palestrante.pal_fone IS 'Telefone do Palestrante';
CREATE TABLE Pessoa (
  pes_cod    SERIAL NOT NULL, 
  pes_cpf    varchar(14) NOT NULL UNIQUE, 
  pes_nome   varchar(40) NOT NULL, 
  pes_dt_nas date NOT NULL, 
  pes_fone   varchar(14), 
  pes_sexo   varchar(1) NOT NULL CHECK(pes_sexo IN ('F', 'M')), 
  PRIMARY KEY (pes_cod));
COMMENT ON COLUMN Pessoa.pes_cod IS 'codigo pessoa';
COMMENT ON COLUMN Pessoa.pes_cpf IS 'cpf da pessoa';
COMMENT ON COLUMN Pessoa.pes_nome IS 'Nome do Cliente';
COMMENT ON COLUMN Pessoa.pes_dt_nas IS 'data nascimento';
COMMENT ON COLUMN Pessoa.pes_fone IS 'Numero de  telefone';
CREATE TABLE Programacao (
  pro_cod_atv  SERIAL NOT NULL, 
  pro_tipo_atv varchar(40) NOT NULL, 
  pro_dur      time NOT NULL, 
  eve_cod      int4 NOT NULL, 
  loc_cod      int4 NOT NULL, 
  PRIMARY KEY (pro_cod_atv));
COMMENT ON TABLE Programacao IS 'programacao do evento';
COMMENT ON COLUMN Programacao.pro_cod_atv IS 'codigo da atividade';
COMMENT ON COLUMN Programacao.pro_tipo_atv IS 'tipo ta ativadade';
COMMENT ON COLUMN Programacao.pro_dur IS 'duracao da atividade';
COMMENT ON COLUMN Programacao.eve_cod IS 'chave estrangeira';
COMMENT ON COLUMN Programacao.loc_cod IS 'chave estrangeira';
ALTER TABLE Palestrante ADD CONSTRAINT FKPalestrant415556 FOREIGN KEY (pro_cod_atv) REFERENCES Programacao (pro_cod_atv);
ALTER TABLE Local ADD CONSTRAINT FKLocal391002 FOREIGN KEY (cid_cod) REFERENCES Cidade (cid_cod);
ALTER TABLE Programacao ADD CONSTRAINT FKProgramaca394079 FOREIGN KEY (eve_cod) REFERENCES Evento (eve_cod);
ALTER TABLE Programacao ADD CONSTRAINT FKProgramaca873904 FOREIGN KEY (loc_cod) REFERENCES Local (loc_cod);
ALTER TABLE inscricoes ADD CONSTRAINT FKinscriçoes40696 FOREIGN KEY (eve_cod) REFERENCES Evento (eve_cod);
ALTER TABLE inscricoes ADD CONSTRAINT FKinscriçoes282767 FOREIGN KEY (pes_cod) REFERENCES Pessoa (pes_cod);
ALTER TABLE Evento ADD CONSTRAINT FKEvento12065 FOREIGN KEY (eve_age_cod) REFERENCES Agencia (age_cod);
