DELETE FROM dim_plano;

INSERT INTO dim_plano (
  plano_id,
  nome_plano,
  tipo,
  duracao_meses,
  valor_mensal  
)

SELECT
  plano_id,
  nome_plano,
  tipo,
  duracao_meses,
  valor_mensal
FROM 
  stg_planos;