CREATE TABLE dim_plano (
    plano_id INTEGER NOT NULL PRIMARY KEY,
    nome_plano TEXT,
    tipo TEXT,
    duracao_meses INTEGER,
    valor_mensal NUMERIC
);