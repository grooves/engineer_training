SELECT
	EmployeeID AS 社員ID
,	SUM(AMOUNT) AS 合計
FROM
	Salary
GROUP BY
	EmployeeID
;
