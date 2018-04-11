SELECT
	SaleID
,	Quantity
,	CustomerID
,	(
	SELECT
		CustomerName
	FROM
		Customers
	WHERE
		CustomerID = Sales.CustomerID
	) AS 顧客名
FROM
	Sales
WHERE
	Quantity >= 100
;
