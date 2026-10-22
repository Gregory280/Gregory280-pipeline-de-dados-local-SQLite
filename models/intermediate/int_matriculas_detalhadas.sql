-- int_matriculas_detalhadas
SELECT
	mat.matricula_id,
	mat.aluno_id,
	mat.plano_id,
	alu.nome AS nome_aluno,
	alu.status AS status_aluno,
	pla.nome_plano,
	pla.duracao_meses,
	mat.data_inicio,
	mat.data_fim,
	mat.data_fim_prevista,
	mat.status AS status_matricula,
	mat.motivo_cancelamento
FROM
	stg_matriculas AS mat
JOIN
	stg_alunos AS alu 
		ON mat.aluno_id = alu.aluno_id
JOIN
	stg_planos AS pla
		ON pla.plano_id = mat.plano_id
