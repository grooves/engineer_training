SELECT
	EmployeeName AS 社員名
,	CASE
		WHEN Height < 160 THEN 'A'
		WHEN Height < 170 THEN 'B'
		WHEN Height < 180 THEN 'C'
		ELSE 'D'
	END AS ランク
FROM
	Employees
;
