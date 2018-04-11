UPDATE
	Products AS p
SET
	Price = Price * 0.97
WHERE
	NOT EXISTS
	(
		SELECT
			'X'
		FROM
			Sales AS s
		WHERE
			s.ProductID = p.ProductID
		GROUP BY
			ProductID
	)
;
