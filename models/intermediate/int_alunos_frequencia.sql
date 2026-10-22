WITH alunos_freq_30_dias AS (
SELECT
  aluno_id,
  MAX(data) AS ultima_presenca,
  COUNT(DISTINCT data) AS total_presencas,
  COUNT(DISTINCT
    CASE
      WHEN data BETWEEN DATE('now', 'localtime', '-29 days') AND
        DATE('now', 'localtime') THEN data
    END)
  AS total_presenca_ultimos_30_dias
FROM
  stg_presencas
GROUP BY
  aluno_id
 ORDER BY total_presenca_ultimos_30_dias DESC
)

SELECT
	alu.aluno_id,
	alu.nome,
	fre.ultima_presenca,
	fre.total_presencas,
	fre.total_presenca_ultimos_30_dias
	
FROM
	stg_alunos AS alu
LEFT JOIN
	alunos_freq_30_dias AS fre
		ON alu.aluno_id = fre.aluno_id;