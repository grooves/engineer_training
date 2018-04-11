SELECT
	s1.ProductID,
	p.ProductName
FROM
	(
		SELECT
			ProductID,
			AVG(Quantity) AS Average
		FROM
			Sales
		GROUP BY
			ProductID
	) AS s1
		JOIN
	(
		SELECT
			ProductID,
			MAX(Quantity) AS Maximum
		FROM
			Sales
		GROUP BY
			ProductID
	) AS s2
		ON s2.ProductID = s1.ProductID
		AND s2.Maximum / 10 > s1.Average
		JOIN
	Products AS p
		ON s1.ProductID = p.ProductID
ORDER BY
	s1.ProductID
;
