INSERT
INTO Salary
(
	SalaryID,
	EmployeeID,
	PayDate,
	Amount
)
SELECT
	EmployeeID + 20000,
	EmployeeID,
	'2007-10-01',
	20000
FROM
	Employees
WHERE
	HireFiscalYear <= 1993
;
