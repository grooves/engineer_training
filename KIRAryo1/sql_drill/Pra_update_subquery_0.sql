UPDATE
	Products
SET
	Price = Price * 1.01
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
			SUM( Quantity ) > 100
	)
;
