SELECT
	HireFiscalYear AS 入社年度
,	SUM(
		CASE
			WHEN Bloodtype = 'A' THEN 1
			ELSE 0
		END
	) AS A型
,	SUM(
		CASE
			WHEN Bloodtype = 'B' THEN 1
			ELSE 0
		END
	) AS B型
,	SUM(
		CASE
			WHEN Bloodtype = 'O' THEN 1
			ELSE 0
		END
	) AS O型
,	SUM(
		CASE
			WHEN Bloodtype = 'AB' THEN 1
			ELSE 0
		END
	) AS AB型
FROM
	Employees
GROUP BY
	HireFiscalYear
;
