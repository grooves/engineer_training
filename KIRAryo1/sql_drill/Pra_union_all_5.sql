SELECT
	s.SaleID,
	s.ProductID,
	s.Quantity,
	c.CustomerClassID,
	c.CustomerName
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
UNION ALL
SELECT
	s.SaleID,
	s.ProductID,
	s.Quantity,
	c.CustomerClassID,
	c.CustomerName
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
	;
