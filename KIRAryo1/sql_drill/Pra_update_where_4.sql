UPDATE
	Sales
SET
	Quantity = Quantity + 10
WHERE
	CustomerID = 10
	AND
	ProductID = 5
	AND
	SaleDate >= '2007-05-31'
;
