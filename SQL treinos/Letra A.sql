SELECT
	a.Nome
FROM
	Aluno AS a
	JOIN Departamento AS d ON a.CodDepto = d.CodDepto 
WHERE
	d.CodDepto = 1;
	