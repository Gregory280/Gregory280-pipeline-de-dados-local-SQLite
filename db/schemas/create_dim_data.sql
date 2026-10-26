CREATE TABLE dim_data (
    data TEXT NOT NULL PRIMARY KEY,
    ano INTEGER NOT NULL,
    trimestre INTEGER NOT NULL,
    mes INTEGER NOT NULL,
    dia INTEGER NOT NULL,
    dia_semana INTEGER NOT NULL,
    nome_dia_semana TEXT NOT NULL
);