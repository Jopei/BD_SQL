SELECT
	a.NOME, AVG(ie.MULTA)
FROM
	ALUNO as a
	INNER JOIN EMPRESTIMO AS e ON e.CODALUNO = a.CODIGO
	INNER JOIN ITEMEMPREST AS ie ON ie.CODEMPREST = e.CODEMPREST
GROUP BY a.CODIGO
HAVING AVG(ie.MULTA) > (
	SELECT 
		AVG(ie.MULTA)
	FROM 
		ALUNO as a
		INNER JOIN EMPRESTIMO AS e ON e.CODALUNO = a.CODIGO
		INNER JOIN ITEMEMPREST AS ie ON ie.CODEMPREST = e.CODEMPREST
	WHERE
		a.CIDADE = "BELO HORIZONTE"
)