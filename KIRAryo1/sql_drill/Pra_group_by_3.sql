SELECT
	CustomerID AS 顧客ID
,	ProductID  AS 商品ID
,	SUM(Quantity) AS 数量
FROM
	Sales
GROUP BY
	CustomerID
,	ProductID
;
