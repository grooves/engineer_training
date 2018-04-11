SELECT
	SalesID AS 販売ID
,	CASE
		WHEN Quantity < 10 THEN 'B'
		ELSE 'D'
	END AS ランク
FROM
	Sales
;
