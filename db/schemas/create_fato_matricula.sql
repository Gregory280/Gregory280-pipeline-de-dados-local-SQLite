CREATE TABLE fato_matricula (
    matricula_id INTEGER NOT NULL PRIMARY KEY,
    aluno_id INTEGER NOT NULL,
    plano_id INTEGER NOT NULL,
    data_inicio TEXT,
    data_fim TEXT,
    data_fim_prevista TEXT,
    status_matricula TEXT,
    motivo_cancelamento TEXT
);