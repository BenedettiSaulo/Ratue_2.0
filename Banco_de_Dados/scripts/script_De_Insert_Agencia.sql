insert into  agencia (age_nome, age_fone, age_ende, age_cnpj , age_dt_cria )
values ('Prime events', '3564-8000', 'Rua das acacias 6 centro', '22.430.370/0001-00','06/02/1998'),
('MiaKhalifaEvents', '3664-8000', 'Rua das Palmeiras 667 centro', '54.184.382/0001-80','07/02/1999'),
('Zenets combia', '3884-8580', 'Rua de Setembro 78 centro', '12.652.241/0001-02','28/05/1988'),
('Almeida', '3664-8080', 'Rua das figueiras 88 centro', '74.209.653/0001-11','25/05/1996'),
('Mania de vencer', '3644-8000', 'Rua das Cerejeiras 957 centro', '12.735.974/0001-00','15/09/1994'),
('Game Over', '3655-8550', 'Rua da Planice 557 centro', '88.574.058/0001-90','18/07/1989'),
('PalmerOlive', '3210-1234', 'Avenida Principal 123', '11.222.333/0001-00', '01/01/2000'),
('Grilo de Trilha', '9876-5432', 'Rua dos Sonhos 456', '44.555.666/0001-11', '02/02/2002'),
('Padeiro Entreteriment', '5678-9012', 'Praça Central 789', '77.888.999/0001-22', '03/03/2004'),
('Royal ERror', '2345-6789', 'Avenida do Progresso 987', '88.999.000/0001-33', '04/04/2006');


insert into  cidade (cid_cep , cid_nome , cid_uf)
values ('01153-000', 'São Paulo', 'SP'),
	('65047‑040', 'São Luís', 'MA'),
	('89900-000', 'São Miguel Do Oeste', 'SC'),
	('55590-000', 'Porto de Galinhas', 'PE'),
	('78780-000', 'Alto Araguaia', 'MT'),
	('7072-2500', 'Asa NorteBrasília', 'DF'),
	('70000-000', 'Brasília', 'DF'),
	('80000-000', 'Curitiba', 'PR'),
	('90000-000', 'Porto Alegre', 'RS'),
	('10000-000', 'Rio de Janeiro', 'RJ');	

insert into evento (eve_nome,eve_tema,eve_data,eve_hora,age_cod,eve_resumo,eve_vlr)
values ('Festa na Árvore', 'CarFest', '10/07/2023', '20:00', 1, 'Festa da comunidade','6000.00'),
  ('Conferência de Tecnologia', 'TechConf', '15/08/2023', '09:30', 2,  'Palestras sobre as últimas tendências tecnológicas','7000.00'),
  ('Exposição de Arte', 'ArtExpo', '20/09/2023', '14:00', 3,'Mostra de obras de arte de artistas locais','4000.00'),
  ('Seminário de Saúde', 'HealthSem', '05/10/2023', '10:00', 4, 'Debate sobre cuidados com a saúde','8500.00'),
  ('Workshop de Negócios', 'BizWork', '12/11/2023', '16:30',  5,'Aprenda estratégias de negócios com especialistas','5000.00'),
  ('Concerto Clássico', 'ClassConcert', '25/12/2023', '19:00', 6, 'Apresentação de música clássica pela orquestra local','3000.00'),
  ('Feira de Alimentos', 'FoodFair', '08/01/2024', '11:00',  7, 'Exposição e venda de produtos alimentícios','7800.00'),
  ('Congresso Educacional', 'EduCong', '14/02/2024', '08:30', 8,'Palestras e debates sobre educação','9000.00'),
  ('Encontro Esportivo', 'SportsMeet', '20/03/2024', '15:00',9, 'Competições e demonstrações esportivas','25000.00'),
  ('Show de Comédia', 'ComedyShow', '05/04/2024', '21:00',10, 'Noite de risadas com diversos comediantes','15000.00');


insert into pessoa (pes_cpf,pes_nome,pes_dt_nas,pes_fone,pes_sexo)
values ('106.700.449.25', 'Benedio Ratute', '25/11/1996', '049 991525344','M'),
	('112.222.333-44', 'Maria Silva', '10/05/1985', '047 988765432','F'),
	('545.666.777-88', 'João Oliveira', '15/08/1990', '048 977654321','M'),
	('989.888.777-66', 'Ana Santos', '02/02/1982', '046 966543210','F'),
	('494.555.666-77', 'Pedro Souza', '20/07/1992', '049 955432109','M'),
	('767.888.999-00', 'Carla Mendes', '12/11/1988', '047 944321098','F'),
	('122.333.444-55', 'Mariana Costa', '05/04/1995', '048 933210987','F'),
	('656.777.888-99', 'Rafaela Pereira', '30/09/1987', '046 922109876','F'),
	('898.999.000-11', 'Lucas Santos', '18/03/1991', '049 911098765','M'),
	('353.444.555-66', 'Bruna Ferreira', '25/06/1993', '047 900987654','F'),
	('123.436.789-00', 'Fernanda Costa', '15/09/1997', '048 988877766','F'),
  	('987.654.321-00', 'Gabriel Pereira', '02/04/1994', '047 977766655','M'),
  	('555.454.333-22', 'Juliana Oliveira', '20/12/1989', '049 966655544','F'),
  	('222.131.000-99', 'Rodrigo Santos', '10/08/1983', '046 955544433','M'),
  	('777.888.999-11', 'Camila Silva', '05/06/1990', '048 944433322','F'),
  	('999.898.777-11', 'Pedro Oliveira', '25/01/1995', '047 933322211','M'),
  	('444.545.666-11', 'Carolina Mendes', '12/07/1987', '046 922211100','F'),
  	('666.595.444-11', 'Rafael Costa', '30/03/1992', '049 911100099','M'),
  	('888.919.000-11', 'Mariana Santos', '18/06/1996', '047 900099988','F'),
  	('333.292.111-12', 'Lucas Ferreira', '25/09/1998', '048 899988877','M'),
 	('555.444.333-45', 'Larissa Oliveira', '10/09/1993', '048 888877766','F'),
  	('111.222.333-46', 'Gustavo Pereira', '02/04/1992', '047 777766655','M'),
  	('777.666.555-27', 'Amanda Costa', '20/12/1987', '049 666655544','F'),
  	('222.111.000-98', 'Ricardo Santos', '10/08/1985', '046 555544433','M'),
  	('999.888.777-19', 'Carla Oliveira', '05/06/1990', '048 444433322','F'),
  	('444.555.666-10', 'Diego Mendes', '25/01/1995', '047 333322211','M'),
  	('666.555.444-11', 'Patricia Costa', '12/07/1989', '046 222211100','F'),
  	('888.999.000-12', 'Fernando Santos', '30/03/1994', '049 111100099','M'),
  	('333.222.111-13', 'Vanessa Ferreira', '18/06/1996', '047 000099988','F'),
  	('111.222.333-45', 'Eduardo Silva', '25/09/1998', '048 899988877','M'),
  	('111.222.333-77', 'Mariana Oliveira', '15/09/1997', '048 988877766','F'),
  	('222.333.444-88', 'Rafael Pereira', '02/04/1994', '047 977766655','M'),
  	('444.555.666-99', 'Luana Oliveira', '20/12/1989', '049 966655544','F'),
  	('555.666.777-11', 'Gustavo Santos', '10/08/1983', '046 955544433','M'),
  	('666.777.888-22', 'Carolina Silva', '05/06/1990', '048 944433322','F'),
  	('777.888.999-33', 'Fernando Oliveira', '25/01/1995', '047 933322211','M'),
  	('888.999.000-44', 'Laura Mendes', '12/07/1987', '046 922211100','F'),
  	('999.888.777-55', 'Matheus Costa', '30/03/1992', '049 911100099','M'),
  	('444.333.222-66', 'Patricia Santos', '18/06/1996', '047 900099988','F'),
  	('333.222.111-77', 'Renato Ferreira', '25/09/1998', '048 899988877','M'),
  	('111.222.333-66', 'Fernanda Oliveira', '15/09/1997', '048 988877766','F'),
  	('222.333.444-55', 'Gustavo Pereira', '02/04/1994', '047 977766655','M'),
  	('333.444.555-44', 'Juliana Oliveira', '20/12/1989', '049 966655544','F'),
  	('444.555.666-33', 'Ricardo Santos', '10/08/1983', '046 955544433','M'),
  	('555.666.777-22', 'Carolina Silva', '05/06/1990', '048 944433322','F'),
  	('666.777.888-11', 'Fernando Oliveira', '25/01/1995', '047 933322211','M'),
  	('777.888.999-00', 'Laura Mendes', '12/07/1987', '046 922211100','F'),
  	('888.999.000-99', 'Matheus Costa', '30/03/1992', '049 911100099','M'),
  	('999.888.777-88', 'Patricia Santos', '18/06/1996', '047 900099988','F'),
  	('123.456.789-00', 'Renato Ferreira', '25/09/1998', '048 899988877','M'),
  	('777.888.999-10', 'Marcelo Oliveira', '15/09/1997', '048 988877766','M'),
  	('888.999.000-21', 'Vanessa Pereira', '02/04/1994', '047 977766655','F'),
  	('999.000.111-32', 'Rafaela Oliveira', '20/12/1989', '049 966655544','F'),
  	('000.111.222-43', 'Rodrigo Santos', '10/08/1983', '046 955544433','M'),
  	('111.222.333-54', 'Carolina Silva', '05/06/1990', '048 944433322','F'),
  	('222.333.444-65', 'Fernando Oliveira', '25/01/1995', '047 933322211','M'),
  	('333.444.555-76', 'Laura de Menta', '12/07/1987', '046 922211100','F'),
  	('444.555.666-87', 'Matheus Costa', '30/03/1992', '049 911100099','M'),
  	('555.666.777-98', 'Patricia Cantos', '18/06/1996', '047 900099988','F'),
  	('666.777.888-09', 'Renato Ferreira', '25/09/1998', '048 899988877','M');

insert into inscricao (pes_cod,eve_cod,par_sts_pag,par_tipo_pag,par_vlr_ing)
values (1,1,'pago','cartao de credito','50.00'),
	  (2, 1, 'pendente', 'boleto','50.00'),
	  (3, 2, 'pago', 'cartao de credito','50.00'),
	  (4, 3, 'pendente', 'transferencia','50.00'),
	  (5, 2, 'pago', 'cartao de debito','50.00'),
	  (6, 4, 'pendente', 'cartao de credito','50.00'),
	  (7, 3, 'pago', 'dinheiro','50.00'),
	  (8, 5, 'pendente', 'cartao de debito','50.00'),
	  (9, 4, 'pago', 'cartao de credito','50.00'),
	  (10, 6, 'pendente', 'boleto','50.00'),
	  (11, 5, 'pago', 'cartao de credito','50.00'),
	  (12, 7, 'pendente', 'transferencia','50.00'),
	  (13, 6, 'pago', 'cartao de debito','50.00'),
	  (14, 8, 'pendente', 'dinheiro','50.00'),
	  (15, 7, 'pago', 'cartao de credito','50.00'),
	  (16, 9, 'pendente', 'cartao de debito','50.00'),
	  (17, 8, 'pago', 'cartao de credito','50.00'),
	  (18, 10, 'pendente', 'boleto','50.00'),
	  (19, 9, 'pago', 'cartao de credito','50.00'),
	  (20, 1, 'pendente', 'transferencia','50.00'),
	  (21, 10, 'pago', 'cartao de debito','50.00'),
	  (22, 2, 'pendente', 'boleto','50.00'),
	  (23, 1, 'pago', 'cartao de credito','50.00'),
	  (24, 3, 'pendente', 'transferencia','50.00'),
	  (25, 4, 'pago', 'cartao de debito','50.00'),
	  (26, 5, 'pendente', 'cartao de credito','50.00'),
	  (27, 6, 'pago', 'dinheiro','50.00'),
	  (28, 5, 'pendente', 'cartao de debito','50.00'),
	  (29, 7, 'pago', 'cartao de credito','50.00'),
	  (30, 8, 'pendente', 'boleto','50.00'),
	  (31, 9, 'pago', 'cartao de credito','50.00'),
	  (32, 10, 'pendente', 'transferencia','50.00'),
	  (33, 1, 'pago', 'cartao de debito','50.00'),
	  (34, 2, 'pendente', 'dinheiro','50.00'),
	  (35, 1, 'pago', 'cartao de credito','50.00'),
	  (36, 3, 'pendente', 'cartao de debito','50.00'),
	  (37, 4, 'pago', 'cartao de credito','50.00'),
	  (38, 5, 'pendente', 'boleto','50.00'),
	  (39, 6, 'pago', 'cartao de credito','50.00'),
	  (40, 7, 'pendente', 'transferencia','50.00'),
	  (41, 8, 'pago', 'cartao de debito','50.00'),
	  (42, 9, 'pendente', 'boleto','50.00'),
	  (43, 10, 'pago', 'cartao de credito','50.00'),
	  (44, 1, 'pendente', 'transferencia','50.00'),
	  (45, 2, 'pago', 'cartao de debito','50.00'),
	  (46, 3, 'pendente', 'cartao de credito','50.00'),
	  (47, 4, 'pago', 'dinheiro','50.00'),
	  (48, 5, 'pendente', 'cartao de debito','50.00'),
	  (49, 6, 'pago', 'cartao de credito','50.00'),
	  (50, 7, 'pendente', 'boleto','50.00'),
	  (51, 8, 'pago', 'cartao de credito','50.00'),
	  (52, 9, 'pendente', 'transferencia','50.00'),
	  (53, 10, 'pago', 'cartao de debito','50.00'),
	  (54, 1, 'pendente', 'dinheiro','50.00'),
	  (55, 2, 'pago', 'cartao de credito','50.00'),
	  (56, 3, 'pendente', 'cartao de debito','50.00'),
	  (57, 4, 'pago', 'cartao de credito','50.00'),
	  (58, 5, 'pendente', 'boleto','50.00'),
	  (59, 6, 'pago', 'cartao de credito','50.00'),
	  (60, 7, 'pendente', 'transferencia','50.00');

insert into local (loc_nom,cid_cod)
values('ceu',1),
('Ginasio',2),
('Praça',3),
('Casa Central',4),
('Quadra',5),
('Padaria-Terraco',6),
('Auditorio-Casa',7),
('Praça',8),
('Quadrinha',9),
('Igrejinha',10);


insert into programacao (pro_tipo_atv,pro_dur,eve_cod,loc_cod)
values ('Galinha Pintadinha','2:00',1,1),
('Concerto de Piano', '1:30', 2, 2),
('Exposição de Arte', '3:00', 3, 3),
('Aula de Dança', '1:00', 4, 4),
('Palestra sobre Sustentabilidade', '2:30', 5, 5),
('Exibição de Filme', '2:00', 6, 6),
('Oficina de Culinária', '2:30', 7, 7),
('Apresentação de Teatro', '1:30', 8, 8),
('Workshop de Fotografia', '3:00', 9, 9),
('Show de Rock', '2:00', 10, 10);


insert into palestrante (pal_cpf,pal_nome,pal_dt_nasc,pal_fone,pro_cod_atv)
values ('825.986.076-78','Erick Lufecer','01/03/1999','(83) 3531-9547',1),
	('036.939.240-07','Saleiro Benedeti','11/07/1998','(61) 3846-7231',2),
	('252.450.110-85','Gustavo Perigo','05/06/1995','(61) 2289-7685',3),
	('236.814.305-00','Roberto Cabruncio','07/10/1988','(35) 2163-1321',4),
	('771.453.758-26','Junior João','25/02/1992','(84) 2057-5519',5),
	('785.501.265-60','Simplicio Da Pira','16/07/2001','(83) 2168-5359',6),
	('451.689.327-14', 'Marina Silva', '12/04/1985', '(11) 9876-5432',7),
	('921.563.840-22', 'Ricardo Mendes', '30/09/1990', '(21) 1234-5678',8),
	('764.398.219-57', 'Luisa Ferreira', '25/06/1993', '(48) 5555-1234',9),
	('623.198.475-90', 'Gabriel Oliveira', '03/12/1987', '(31) 2468-1357',10);
