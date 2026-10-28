DELETE FROM fato_presenca;

INSERT INTO fato_presenca (
    presenca_id,
    aluno_id,
    matricula_id,
    data,
    hora_entrada,
    modalidade
)

SELECT
  presenca_id,
  aluno_id,
  matricula_id,
  data,
  hora_entrada,
  modalidade
FROM
  stg_presencas;