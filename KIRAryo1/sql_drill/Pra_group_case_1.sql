SELECT
	HireFiscalYear AS 入社年度
,	SUM(
		CASE
			WHEN Height <= 160 THEN 1
			ELSE 0
		END
	) AS 160cm以下
,	SUM(
		CASE
			WHEN Height <= 170 THEN 1
			ELSE 0
		END
	) AS 170cm以下
,	SUM(
		CASE
			WHEN Height <= 180 THEN 1
			ELSE 0
		END
	) AS 180cm以下
,	SUM(
		CASE
			WHEN Height > 180 THEN 1
			ELSE 0
		END
	) AS 180cm超
FROM
	Employees
GROUP BY
	HireFiscalYear
;
