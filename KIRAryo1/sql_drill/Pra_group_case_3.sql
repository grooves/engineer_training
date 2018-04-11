SELECT
	CustomerID AS 顧客ID
,	SUM(
		CASE
			WHEN MONTH(SalesDate) = 9 THEN 1
			ELSE 0
		END
	) AS "9月"
,	SUM(
		CASE
			WHEN MONTH(SalesDate) = 10 THEN 1
			ELSE 0
		END
	) AS "10月"
,	SUM(
		CASE
			WHEN MONTH(SalesDate) = 11 THEN 1
			ELSE 0
		END
	) AS "11月"
FROM
	Sales
WHERE
	YEAR(SalesDate) = 2006
GROUP BY
	CustomerID
;
