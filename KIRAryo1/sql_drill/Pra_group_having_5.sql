SELECT
	ProductID AS 商品ID
,	SUM(Quantity) AS 数量合計
FROM
	Sales
GROUP BY
	ProductID
HAVING
	SUM(Quantity) >= 100 AND SUM(Quantity) <= 200
;
