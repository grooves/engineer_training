SELECT
	EmployeeID AS 社員ID
,	SUM(Amount) AS 給与合計
FROM
	Salary
WHERE
	Price <= 1000
GROUP BY
	EmployeeID
ORDER BY
	SUM(Amount)
;
