CREATE TABLE agencia (
  age_cod     SERIAL NOT NULL, 
  age_nome    varchar(40) NOT NULL, 
  age_fone    varchar(14) NOT NULL, 
  age_ende    varchar(60) NOT NULL, 
  age_cnpj    varchar(20) NOT NULL UNIQUE, 
  age_dt_cria date NOT NULL, 
  PRIMARY KEY (age_cod)
);

COMMENT ON TABLE agencia IS 'Tabela da agência';
COMMENT ON COLUMN agencia.age_cod IS 'Código da agência';
COMMENT ON COLUMN agencia.age_nome IS 'Nome da agência';
COMMENT ON COLUMN agencia.age_fone IS 'Telefone da agência';
COMMENT ON COLUMN agencia.age_ende IS 'Endereço da agência';
COMMENT ON COLUMN agencia.age_cnpj IS 'CNPJ da agência';
COMMENT ON COLUMN agencia.age_dt_cria IS 'Data de criação da agência';

CREATE TABLE cidade (
  cid_cod  SERIAL NOT NULL, 
  cid_cep  varchar(9) NOT NULL, 
  cid_nome varchar(40) NOT NULL, 
  cid_uf   varchar(2) NOT NULL, 
  PRIMARY KEY (cid_cod)
);

COMMENT ON TABLE cidade IS 'Tabela da cidade';
COMMENT ON COLUMN cidade.cid_cod IS 'Codigo da cidade';
COMMENT ON COLUMN cidade.cid_cep IS 'CEP da cidade';
COMMENT ON COLUMN cidade.cid_nome IS 'Nome da cidade';
COMMENT ON COLUMN cidade.cid_uf IS 'Unidade Federal da cidade';

CREATE TABLE evento (
  eve_cod     SERIAL NOT NULL, 
  eve_nome    varchar(40) NOT NULL, 
  eve_tema    varchar(40) NOT NULL, 
  eve_data    date NOT NULL, 
  eve_hora    time(7) NOT NULL, 
  age_cod     SERIAL NOT NULL, 
  eve_resumo  varchar(200) NOT NULL, 
  eve_vlr     numeric(12, 2) NOT NULL, 
  PRIMARY KEY (eve_cod)
);

COMMENT ON COLUMN evento.eve_cod IS 'Codigo do evento';
COMMENT ON COLUMN evento.eve_nome IS 'Nome do evento';
COMMENT ON COLUMN evento.eve_tema IS 'Tema do evento';
COMMENT ON COLUMN evento.eve_data IS 'Data do evento';
COMMENT ON COLUMN evento.eve_hora IS 'Hora do evento';
COMMENT ON COLUMN evento.age_cod IS 'Código da agência';
COMMENT ON COLUMN evento.eve_resumo IS 'Resumo do envento';
COMMENT ON COLUMN evento.eve_vlr IS 'Valor do evento';

CREATE TABLE inscricao (
  pes_cod      int4 NOT NULL, 
  eve_cod      int4 NOT NULL, 
  par_sts_pag  varchar(30) NOT NULL, 
  par_tipo_pag varchar(20) NOT NULL, 
  par_vlr_ing  numeric(6, 2), 
  PRIMARY KEY (pes_cod, 
  eve_cod)
);

COMMENT ON COLUMN inscricao.eve_cod IS 'Código do evento';
COMMENT ON COLUMN inscricao.par_sts_pag IS 'Status do pagamento';
COMMENT ON COLUMN inscricao.par_tipo_pag IS 'Tipo do pagamento';
COMMENT ON COLUMN inscricao.par_vlr_ing IS 'Valor do ingresso';

CREATE TABLE local (
  loc_cod SERIAL NOT NULL, 
  loc_nom varchar(40), 
  cid_cod int4 NOT NULL, 
  PRIMARY KEY (loc_cod)
);

COMMENT ON TABLE local IS 'Tabela do local do evento';
COMMENT ON COLUMN local.loc_cod IS 'Código do local';
COMMENT ON COLUMN local.loc_nom IS 'Nome do local';

CREATE TABLE palestrante (
  pal_cod     SERIAL NOT NULL, 
  pal_cpf     varchar(14) NOT NULL UNIQUE, 
  pal_nome    varchar(40) NOT NULL, 
  pal_dt_nasc date NOT NULL, 
  pal_fone    varchar(14) NOT NULL, 
  pro_cod_atv int4 NOT NULL, 
  PRIMARY KEY (pal_cod)
);

COMMENT ON COLUMN palestrante.pal_cod IS 'Código do palestrante';
COMMENT ON COLUMN palestrante.pal_cpf IS 'CPF do palestrante';
COMMENT ON COLUMN palestrante.pal_nome IS 'Nome do palestrante';
COMMENT ON COLUMN palestrante.pal_dt_nasc IS 'Data de nascimento do palestrante';
COMMENT ON COLUMN palestrante.pal_fone IS 'Telefone do Palestrante';

CREATE TABLE pessoa (
  pes_cod    SERIAL NOT NULL, 
  pes_cpf    varchar(14) NOT NULL UNIQUE, 
  pes_nome   varchar(40) NOT NULL, 
  pes_dt_nas date NOT NULL, 
  pes_fone   varchar(14), 
  pes_sexo   varchar(1) NOT NULL CHECK(pes_sexo IN ('F', 'M')), 
  PRIMARY KEY (pes_cod)
);

COMMENT ON COLUMN pessoa.pes_cod IS 'Código da pessoa';
COMMENT ON COLUMN pessoa.pes_cpf IS 'CPF da pessoa';
COMMENT ON COLUMN pessoa.pes_nome IS 'Nome do Cliente';
COMMENT ON COLUMN pessoa.pes_dt_nas IS 'Data de nascimento';
COMMENT ON COLUMN pessoa.pes_fone IS 'Número de telefone';

CREATE TABLE programacao (
  pro_cod_atv  SERIAL NOT NULL, 
  pro_tipo_atv varchar(40) NOT NULL, 
  pro_dur      time NOT NULL, 
  eve_cod      int4 NOT NULL, 
  loc_cod      int4 NOT NULL, 
  PRIMARY KEY (pro_cod_atv)
);

COMMENT ON TABLE programacao IS 'Tabela da programacão do evento';
COMMENT ON COLUMN programacao.pro_cod_atv IS 'Código da atividade';
COMMENT ON COLUMN programacao.pro_tipo_atv IS 'Tipo ta ativadade';
COMMENT ON COLUMN programacao.pro_dur IS 'Duração da atividade';
COMMENT ON COLUMN programacao.eve_cod IS 'Código do evento';
COMMENT ON COLUMN programacao.loc_cod IS 'Código do local';

ALTER TABLE palestrante ADD CONSTRAINT palestrante_programacao_fk FOREIGN KEY (pro_cod_atv) REFERENCES programacao (pro_cod_atv);
ALTER TABLE local ADD CONSTRAINT local_cidade_fk FOREIGN KEY (cid_cod) REFERENCES cidade (cid_cod);
ALTER TABLE programacao ADD CONSTRAINT programacao_evento_fk FOREIGN KEY (eve_cod) REFERENCES evento (eve_cod);
ALTER TABLE programacao ADD CONSTRAINT programacao_local_fk FOREIGN KEY (loc_cod) REFERENCES local (loc_cod);
ALTER TABLE inscricao ADD CONSTRAINT inscricao_evento_fk FOREIGN KEY (eve_cod) REFERENCES evento (eve_cod);
ALTER TABLE inscricao ADD CONSTRAINT inscricao_pessoa_fk FOREIGN KEY (pes_cod) REFERENCES pessoa (pes_cod);
ALTER TABLE evento ADD CONSTRAINT evento_agencia_fk FOREIGN KEY (age_cod) REFERENCES agencia (age_cod);
