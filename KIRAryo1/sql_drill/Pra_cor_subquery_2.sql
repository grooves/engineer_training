SELECT
	p.ProductID,
	p.ProductName
FROM
	Products AS p
WHERE
	EXISTS
	(
		SELECT
			*
		FROM
			Sales AS s
		WHERE
			s.ProductID = p.ProductID
	)
;
