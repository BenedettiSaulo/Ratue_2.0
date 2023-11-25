--Gatilho 1 - Antes da Inserção de Pessoa:
--Este gatilho irá definir automaticamente o sexo (pes_sexo) para maiúsculas antes de inserir uma nova pessoa.

CREATE OR REPLACE FUNCTION before_insert_pessoa_trigger()
RETURNS TRIGGER AS $$
BEGIN
  NEW.pes_sexo = UPPER(NEW.pes_sexo);
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER before_insert_pessoa
BEFORE INSERT ON pessoa
FOR EACH ROW
EXECUTE FUNCTION before_insert_pessoa_trigger();

--Gatilho 2 - Após a Exclusão de Evento:
--Este gatilho registra informações sobre a exclusão de eventos em uma tabela de log chamada log_eventos_deletados.

CREATE OR REPLACE FUNCTION after_delete_evento_trigger()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO log_eventos_deletados (evento_id, data_hora)
  VALUES (OLD.eve_cod, NOW());
  RETURN OLD;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER after_delete_evento
AFTER DELETE ON evento
FOR EACH ROW
EXECUTE FUNCTION after_delete_evento_trigger();

--Procedimento Armazenado 1 - Atualizar Palestrante:
--Este procedimento armazenado atualiza as informações do palestrante com base no código do palestrante.

CREATE OR REPLACE FUNCTION atualizar_palestrante(p_palestrante_id INT, p_novo_nome VARCHAR(40), p_novo_fone VARCHAR(14))
RETURNS VOID AS $$
BEGIN
  UPDATE palestrante
  SET pal_nome = p_novo_nome, pal_fone = p_novo_fone
  WHERE pal_cod = p_palestrante_id;
END;
$$ LANGUAGE plpgsql;

--Procedimento Armazenado 2 - Calcular Valor Total de Inscrição:
--Este procedimento armazenado calcula o valor total pago por uma pessoa em todas as suas inscrições.

CREATE OR REPLACE FUNCTION calcular_valor_total_inscricao(p_pessoa_id INT)
RETURNS NUMERIC AS $$
DECLARE
  total_valor NUMERIC := 0;
BEGIN
  SELECT SUM(par_vlr_ing)
  INTO total_valor
  FROM inscricao
  WHERE pes_cod = p_pessoa_id;

  RETURN total_valor;
END;
$$ LANGUAGE plpgsql;

--3. Política:
--Vamos criar uma política para a tabela evento que permitirá apenas atualizações de eventos feitas por uma agência específica.


ALTER TABLE evento ENABLE ROW LEVEL SECURITY;

CREATE POLICY update_evento_policy
  FOR UPDATE
  USING (age_cod = current_setting('dbver.current_agencia_id')::INT 
  OR current_user = 'admin'); 
 select * from evento e 
  
 --4. Configuração de Backup e Restore:
--Configurar Backup:
--Para realizar backups regulares do seu banco de dados, você pode usar a ferramenta pg_dump. Aqui está um exemplo básico:
 
--pg_dump -h localhost -U seu_usuario -d seu_banco_de_dados -F c -f /caminho/do/backup/dump.backup
 
--Configurar Restore:
--Para restaurar um backup, você pode usar a ferramenta pg_restore. Aqui está um exemplo básico:
--pg_restore -h localhost -U seu_usuario -d seu_banco_de_dados -F c -c /caminho/do/backup/dump.backup