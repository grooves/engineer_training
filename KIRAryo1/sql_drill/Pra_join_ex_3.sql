SELECT
	cc.CustomerClassID,
	cc.CustomerClassName AS 顧客クラス名,
	MAX(s.Quantity) AS 最大数量
FROM
	Sales AS s
		JOIN
	Customers AS c
		ON s.CustomerID = c.CustomerID
			JOIN
		CustomerClasses AS cc
			ON cc.CustomerClassID = c.CustomerClassID
GROUP BY
	cc.CustomerClassID
;
