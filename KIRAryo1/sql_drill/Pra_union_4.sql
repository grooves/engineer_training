SELECT
	CustomerID,
	ProductID
FROM
	Sales
WHERE
	Quantity >= 10
	AND
	SaleDate BETWEEN '2006-10-01' AND '2006-12-31'
UNION
SELECT
	CustomerID,
	ProductID
FROM
	Sales
WHERE
	Quantity >= 10
	AND
	SaleDate BETWEEN '2007-01-01' AND '2007-03-31'
UNION
SELECT
	CustomerID,
	ProductID
FROM
	Sales
WHERE
	Quantity >= 10
	AND
	SaleDate BETWEEN '2007-04-01' AND '2007-06-30'
ORDER BY
	CustomerID,
	ProductID
;
