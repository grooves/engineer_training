SELECT
	*
FROM
	Products
WHERE
	ProductID NOT IN
	(
		SELECT
			ProductID
		FROM
			Sales
	)
;
