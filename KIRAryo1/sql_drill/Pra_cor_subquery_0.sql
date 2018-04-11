SELECT
	p.ProductName,
	s1.SaleDate
FROM
	Sales AS s1
		JOIN
	Products AS p
		ON s1.ProductID = p.ProductID
WHERE
	s1.Quantity > (
		SELECT
			AVG(Quantity)
		FROM
			Sales AS s2
		WHERE
			s1.ProductID = s2.ProductID
	)
ORDER BY
	p.ProductID ASC,
	s1.SaleDate DESC
;
