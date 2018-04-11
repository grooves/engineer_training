SELECT
	ProductID AS 商品ID
,	SUM(Quantity) AS 数量合計
FROM
	Sales
WHERE
	SaleDate >= 2007-06-01
GROUP BY
	ProductID
HAVING
	SUM(Quantity) >= 200
;
