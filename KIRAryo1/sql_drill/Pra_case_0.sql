SELECT
	ProductName AS 商品名
,	CASE
		WHEN Price < 1000 THEN 'C'
		WHEN Price < 2000 THEN 'B'
		ELSE 'A'
	END AS ランク
FROM
	Products
;
