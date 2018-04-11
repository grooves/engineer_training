SELECT
	pf.PrefecturalID,
	pf.PrefecturalName,
	p.ProductName,
	SUM(s.Quantity * p.Price) AS '販売合計金額'
FROM
	Sales AS s
		JOIN
	Products AS p
		ON p.ProductID = s.ProductID
			JOIN
		Customers AS c
			ON c.CustomerID = s.CustomerID
				JOIN
			Prefecturals AS pf
				ON pf.PrefecturalID = c.PrefecturalID
GROUP BY
	pf.PrefecturalID,
	pf.PrefecturalName,
	p.ProductName
ORDER BY
	pf.PrefecturalID,
	pf.PrefecturalName,
	p.ProductName
;
