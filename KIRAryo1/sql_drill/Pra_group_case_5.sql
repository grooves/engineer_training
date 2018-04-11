SELECT
	HireFiscalYear AS 県ID
,	SUM(
		CASE
			WHEN Weight <= 50 THEN 1
			ELSE 0
		END
	) AS 50kg以下
,	SUM(
		CASE
			WHEN Weight <= 60 THEN 1
			ELSE 0
		END
	) AS 51〜60kg
,	SUM(
		CASE
			WHEN Weight <= 80 THEN 1
			ELSE 0
		END
	) AS 61〜80kg
,	SUM(
		CASE
			WHEN Weight > 80 THEN 1
			ELSE 0
		END
	) AS 80kg超
FROM
	Employees
GROUP BY
	HireFiscalYear
;
