DELETE 
FROM
	ALUNO AS a 
WHERE
	a.CODIGO NOT IN (
	SELECT
		em.CODALUNO 
	FROM
	EMPRESTIMO AS em 
	)