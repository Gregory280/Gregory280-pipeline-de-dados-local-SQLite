DROP VIEW IF EXISTS stg_alunos;

CREATE VIEW stg_alunos AS
SELECT
  aluno_id,
  TRIM(nome) AS nome,
  LOWER(TRIM(email)) AS email,
  REPLACE(REPLACE(REPLACE(REPLACE(telefone, '(', ''),')', ''),' ', ''),'-', '') AS telefone,
  sexo,
  DATE(JULIANDAY('1899-12-30') + data_nascimento) AS data_nascimento,
  cidade,
  estado,
  DATE(JULIANDAY('1899-12-30') + data_matricula) AS data_matricula,
  status
FROM 
  raw_alunos;