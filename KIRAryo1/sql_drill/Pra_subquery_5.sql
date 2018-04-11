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
,	(
	SELECT
		ProductName
	FROM
		Products
	WHERE
		ProductID = Sales.ProductID
	) AS 商品名
FROM
	Sales
WHERE
	Quantity >= 100
;
