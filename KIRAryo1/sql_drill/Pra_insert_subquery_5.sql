INSERT
INTO Sales
(
	SaleID,
	Quantity,
	CustomerID,
	EmployeeID,
	SaleDate
)
SELECT
	ProductID + 50000,
	30,
	15,
	2,
	'2007-09-10'
FROM
	Products
WHERE
	CategoryID = '5'
;
