SELECT
	EmployeeName
,	Height
FROM
	Customers
WHERE
	EmployeeName LIKE '%リ%'
	AND
	Height <= 160
;
