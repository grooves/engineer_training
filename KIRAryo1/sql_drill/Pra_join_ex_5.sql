SELECT
	cc.CustomerClassID,
	cc.CustomerClassName AS 顧客クラス名,
	MAX(s.Quantity) AS 最大数量
FROM
	Sales AS s,
	Customers AS c,
	CustomerClasses AS cc
WHERE
	s.CustomerID = c.CustomerID
	AND
	cc.CustomerClassID = c.CustomerClassID
GROUP BY
	cc.CustomerClassID
;
