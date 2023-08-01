SELECT
	a.Matricula,
	a.Nome,
	d.CodDisc,
	d.NomeDisc,
	d.Creditos,
	t.Semestre,
	t.Ano,
	h.Conceito 
FROM
	Disciplina AS d
	INNER JOIN Turma AS t ON t.CodDisc = d.CodDisc
	INNER JOIN Historico as h on h.CodTurma = t.CodTurma
	INNER JOIN Aluno as a on a.Matricula = h.Matricula
	