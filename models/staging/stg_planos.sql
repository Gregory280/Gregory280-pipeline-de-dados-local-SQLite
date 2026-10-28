DROP VIEW IF EXISTS stg_planos;

CREATE VIEW stg_planos AS

SELECT
  plano_id,
  nome_plano,
  tipo,
  duracao_meses,
  valor_mensal
FROM
  raw_planos;
