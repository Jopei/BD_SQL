SELECT
	a.NOMEAUT 
FROM
	AUTOR AS a
	INNER JOIN AUTORIA AS au ON au.CODAUTOR = a.CODIGO 
GROUP BY
	a.NOMEAUT 
HAVING
	count(*) > (
	SELECT
		COUNT( l.CODIGO ) 
	FROM
		LIVRO AS l
		INNER JOIN AUTORIA AS au ON au.CODLIVRO = l.CODIGO
		INNER JOIN AUTOR AS a ON a.CODIGO = au.CODAUTOR 
	WHERE
	a.NOMEAUT = "NAVATHE" 
	)