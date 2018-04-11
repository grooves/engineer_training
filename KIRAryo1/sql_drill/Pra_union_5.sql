SELECT
	s.ProductID
FROM
	Sales AS s
		JOIN
	Customers AS c
		ON
		c.CustomerID = s.CustomerID
WHERE
	c.CustomerClassID = 2
	AND
	Quantity >= 10
UNION
SELECT
	s.ProductID
FROM
	Sales AS s
		JOIN
	Customers AS c
		ON
		c.CustomerID = s.CustomerID
WHERE
	c.CustomerClassID = 1
	AND
	Quantity >= 100
ORDER BY
	ProductID
;
