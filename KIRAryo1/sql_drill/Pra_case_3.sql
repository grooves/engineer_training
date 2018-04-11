SELECT
	EmployeeName AS 社員名
,	CASE
		WHEN Weight < 60 THEN 'A'
		WHEN Weight < 70 THEN 'B'
		WHEN Weight < 80 THEN 'C'
		ELSE 'D'
	END AS ランク
FROM
	Employees
;
