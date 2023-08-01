SELECT
	d.NomeDisc
FROM
	Turma as t join Disciplina as d on t.CodDisc = d.CodDisc
WHERE
	t.Ano BETWEEN 2018 
	AND 2019 
	AND t.Professor = 'Carlos';
	