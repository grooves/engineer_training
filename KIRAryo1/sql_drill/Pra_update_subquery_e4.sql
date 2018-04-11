UPDATE
	Products AS p
SET
	ProductName = CONCAT(p.ProductName, '(', (
		SELECT
			c.CategoryName
		FROM
			Categories AS c
		WHERE
			c.CategoryID = p.CategoryID
		), ')' )
WHERE
	EXISTS
	(
		SELECT
			'X'
		FROM
			Categories AS c
		WHERE
			c.CategoryID = p.CategoryID
	)
;
