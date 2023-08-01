SELECT
	a.nome 
FROM
	aluno AS a
	INNER JOIN emprestimo AS e ON e.codaluno = a.codigo
	INNER JOIN itememprest AS i ON i.codemprest = e.codemprest
	INNER JOIN exemplar AS ex ON ex.codexemplar = i.codexemplar
	INNER JOIN livro AS l ON l.codigo = ex.codlivro 
WHERE
	YEAR ( e.`data` ) = 2019 
GROUP BY
	l.codigo,
	a.codigo,
	a.nome 
HAVING
	count(*) >= 3 
ORDER BY
	a.nome