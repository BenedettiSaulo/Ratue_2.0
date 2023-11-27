--1) Relação com nome e idade de
--participantes de eventos do sexo
--feminino. Ordenar o relatório do
--participante mais novo para o mais
--velho;

CREATE VIEW participantes_femininos AS
SELECT
  pes_nome,
  EXTRACT(YEAR FROM age(current_date, pes_dt_nas)) AS idade
FROM
  pessoa
WHERE
  pes_sexo = 'F'
 ORDER BY
  pes_dt_nas ASC;
 
 
--2) Relação de eventos(nome, local e
--data) que serão realizados em 2023.
--Ordenar o relatório pela data do evento
--de forma ascendente;

 
CREATE VIEW eventos_2023 AS
SELECT
  eve_nome,
  loc_nom,
  eve_data
FROM
  evento
JOIN
  local ON evento.eve_cod = local.loc_cod
WHERE
  EXTRACT(YEAR FROM eve_data) = 2023
ORDER BY
  eve_data ASC;
  
 
--3) Relação de eventos(nome) e total de
--inscritos para eventos de 2022. Ordene
--o relatório do evento com menos
--inscritos para com mais inscritos;
 
CREATE VIEW eventos_2023_inscritos AS
SELECT
  eve_nome,
  COUNT(inscricao.pes_cod) AS total_inscritos
FROM
  evento
LEFT JOIN
  inscricao ON evento.eve_cod = inscricao.eve_cod
WHERE
  EXTRACT(YEAR FROM eve_data) = 2023
GROUP BY
  evento.eve_nome
ORDER BY
  total_inscritos ASC;
 
 
--4) Relação de todos os eventos(nome
--e data) com total de inscritos e valor
--total de inscrição(R$). Relacionar
--somente eventos com valor total acima
--de R$ 5000. Ordene o relatório do
--evento com mais valor de inscrição
--para o evento com menor valor

CREATE VIEW eventos_valor_acima_50 AS
SELECT
  evento.eve_nome,
  evento.eve_data,
  COUNT(inscricao.pes_cod) AS total_inscritos,
  SUM(inscricao.par_vlr_ing) AS valor_total_inscricao
FROM
  evento
LEFT JOIN
  inscricao ON evento.eve_cod = inscricao.eve_cod
GROUP BY
  evento.eve_nome, evento.eve_data
HAVING
  SUM(inscricao.par_vlr_ing) > 50
ORDER BY
  valor_total_inscricao DESC;
 
 
 
 
 
 
select * from eventos_2023;
select * from participantes_femininos;
select * from eventos_2023_inscritos;
select * from eventos_valor_acima_50;
 
 
 
 
 
drop view eventos_valor_acima_50;
drop view eventos_2023;
drop view participantes_femininos;  
drop view eventos_2023_inscritos;

  
 
 
