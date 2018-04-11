SELECT
	CategoryID AS 商品カテゴリID
,	SUM(
		CASE
			WHEN Price < 100 THEN 1
			ELSE 0
		END
	) AS 100円未満
,	SUM(
		CASE
			WHEN Price < 400 THEN 1
			ELSE 0
		END
	) AS 400円未満
,	SUM(
		CASE
			WHEN Price < 1000 THEN 1
			ELSE 0
		END
	) AS 1000円未満
,	SUM(
		CASE
			WHEN Price >= 1000 THEN 1
			ELSE 0
		END
	) AS 1000円以上
FROM
	Products
GROUP BY
	CategoryID
;
