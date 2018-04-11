DELETE
FROM
	Products
WHERE
	ProductID NOT IN
	(
		SELECT
			ProductID
		FROM
			Sales
		GROUP BY
			ProductID
		HAVING
			SUM(Quantity) >= 20
	)
;
