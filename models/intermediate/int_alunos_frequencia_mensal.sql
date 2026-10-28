DROP VIEW IF EXISTS int_alunos_frequencia_mensal;

CREATE VIEW int_alunos_frequencia_mensal AS

WITH alunos_freq_2_anos AS (
SELECT
	DISTINCT aluno_id
FROM
	stg_presencas
WHERE
	data BETWEEN DATE('now', 'localtime', '-2 years') AND DATE('now', 'localtime')
)

SELECT
	pre.aluno_id,
	STRFTIME('%Y-%m', pre.data) AS data_referencia,
	CAST(STRFTIME('%Y', pre.data) AS INTEGER) AS ano,
	CAST(STRFTIME('%m', pre.data) AS INTEGER) AS mes,
	COUNT(DISTINCT pre.data) AS dias_frequentados
FROM
	stg_presencas AS pre
JOIN
	alunos_freq_2_anos AS af2
		ON pre.aluno_id = af2.aluno_id
WHERE
	pre.data <= DATE('now', 'localtime')
GROUP BY
	pre.aluno_id,
	STRFTIME('%Y-%m', pre.data);
