SELECT
	ProductID AS 商品ID
,	COUNT(*) AS 売上レコード数
FROM
	Sales
WHERE
	ProductID >= 20 AND ProductID <= 30
GROUP BY
	ProductID
HAVING
	COUNT(*) >= 30
;
