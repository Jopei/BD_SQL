SELECT
	d.NomeDisc,
	t.CodTurma,
	t.Semestre,
	t.Ano,
	count(*) AS Alunos_Matriculados 
FROM
	Turma AS t
	JOIN Disciplina AS d ON t.CodDisc = d.CodDisc 
WHERE
	t.Professor = 'Carlos' 
GROUP BY
	t.Professor,
	d.CodDisc,
	d.NomeDisc,
	t.CodTurma,
	t.Semestre,
	t.Ano;
	
/*
	NomeDisc - Disciplina
	CodTurma - Turma
	Semetre - Turma
	Ano - Turma
	Alunos_Matriculados - Qtd registros da tabela Turma
*/
