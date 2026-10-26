CREATE TABLE dim_aluno (
    aluno_id INTEGER NOT NULL PRIMARY KEY,
    nome TEXT,
    email TEXT,
    telefone TEXT,
    sexo TEXT,
    data_nascimento TEXT,
    cidade TEXT,
    estado TEXT,
    data_matricula TEXT,
    status TEXT,
    ultima_presenca TEXT,
    total_presencas INTEGER NOT NULL,
    total_presenca_ultimos_30_dias INTEGER NOT NULL
);