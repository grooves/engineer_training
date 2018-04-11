UPDATE
	Products AS p
SET
	p.Price = (
		SELECT
			AVG( s.Quantity * p.Price )
		FROM
			Sales AS s
		WHERE
			s.ProductID = p.ProductID
	)
WHERE
	EXISTS
	(
		SELECT
			'X'
		FROM
			Sales AS s
		WHERE
			s.ProductID = p.ProductID
	)
;
