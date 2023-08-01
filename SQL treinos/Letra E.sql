SELECT DISTINCT
	a.Nome,
	d.NomeDepto
FROM
	Aluno AS a
	INNER JOIN Historico AS h ON a.Matricula = h.Matricula 
	INNER JOIN Departamento as d on d.CodDepto = a.CodDepto
WHERE
	a.Matricula NOT IN (
	SELECT
		a.Matricula 
	FROM
		Aluno AS a
		INNER JOIN Historico AS h ON a.Matricula = h.Matricula 
	WHERE
		h.Conceito != 'A' 
	)