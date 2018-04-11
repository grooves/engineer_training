SELECT
	CategoryID
,	COUNT(*) AS 商品数
FROM
	Products
WHERE
	Price <= 1000
GROUP BY
	CategoryID
HAVING
	COUNT(*) < 5
ORDER BY
	CategoryID
;
