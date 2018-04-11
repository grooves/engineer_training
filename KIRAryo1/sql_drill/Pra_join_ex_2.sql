SELECT
	pf.PrefecturalID,
	pf.PrefecturalName AS 都道府県名,
	SUM(Quantity)
FROM
	Sales AS s
		JOIN
	Customers AS c
		ON s.CustomerID = c.CustomerID
			JOIN
		Prefecturals AS pf
			ON pf.PrefecturalID = c.PrefecturalID
GROUP BY
	pf.PrefecturalID
;
