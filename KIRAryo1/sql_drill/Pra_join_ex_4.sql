SELECT
	pf.PrefecturalID,
	pf.PrefecturalName AS 都道府県名,
	SUM(Quantity)
FROM
	Sales AS s,
	Customers AS c,
	Prefecturals AS pf
WHERE
	s.CustomerID = c.CustomerID
	AND
	pf.PrefecturalID = c.PrefecturalID
GROUP BY
	pf.PrefecturalID
;
