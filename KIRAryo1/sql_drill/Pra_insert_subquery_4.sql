INSERT
INTO Sales
(
	SaleID,
	Quantity,
	EmployeeID,
	ProductID,
	SaleDate
)
SELECT
	CustomerID + 40000,
	20,
	5,
	21,
	'2007-09-05'
FROM
	Customers
WHERE
	PrefecturalID = 8
;
