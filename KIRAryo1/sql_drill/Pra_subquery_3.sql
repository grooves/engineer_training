SELECT
	ProductID
,	ProductName
FROM
	Products
WHERE
	ProductID IN
	(
		SELECT
			ProductID
		FROM
			Sales
		GROUP BY
			ProductID
		HAVING
			SUM(Quantity) >= 100
	)
;
