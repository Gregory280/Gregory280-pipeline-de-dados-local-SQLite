DELETE FROM dim_aluno;

INSERT INTO dim_aluno (
  aluno_id,
  nome,
  email,
  telefone,
  sexo,
  data_nascimento,
  cidade,
  estado,
  data_matricula,
  status,
  ultima_presenca,
  total_presencas,
  total_presenca_ultimos_30_dias
)

SELECT
  alu.aluno_id,
  alu.nome,
  alu.email,
  alu.telefone,
  alu.sexo,
  alu.data_nascimento,
  alu.cidade,
  alu.estado,
  alu.data_matricula,
  alu.status,
  iaf.ultima_presenca,
  COALESCE(iaf.total_presencas, 0),
  COALESCE(iaf.total_presenca_ultimos_30_dias, 0)
FROM
  stg_alunos AS alu
LEFT JOIN
  int_alunos_frequencia AS iaf ON alu.aluno_id = iaf.aluno_id;