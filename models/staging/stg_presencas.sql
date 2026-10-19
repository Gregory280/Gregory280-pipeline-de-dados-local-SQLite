SELECT
  presenca_id,
  aluno_id,
  matricula_id,
  DATE(JULIANDAY('1899-12-30') + data) AS data,
  STRFTIME('%H:%M', JULIANDAY('2000-01-01') + hora_entrada) AS hora_entrada,
  modalidade
FROM
  raw_presencas;
  