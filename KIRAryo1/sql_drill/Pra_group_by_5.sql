SELECT
	EmployeeID AS 社員ID
,	COUNT(*) AS 支給回数
,	AVG(Amount) AS 平均支給額
FROM
	Salary
GROUP BY
	EmployeeID
;
