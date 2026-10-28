CREATE TABLE fato_presenca (
    presenca_id INTEGER NOT NULL PRIMARY KEY,
    aluno_id INTEGER NOT NULL,
    matricula_id INTEGER,
    data TEXT NOT NULL,
    hora_entrada TEXT,
    modalidade TEXT
);