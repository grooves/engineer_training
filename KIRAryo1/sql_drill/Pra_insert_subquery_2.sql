INSERT
INTO Customers
(
	CustomerCode,
	CustomerID,
	Address,
	PrefecturalID,
	CustomerClassID,
	CustomerName
)
SELECT
	EmployeeID + 10000,
	EmployeeID + 10000,
	'江戸川区西小岩',
	13,
	2,
	EmployeeName
FROM
	Employees
WHERE
	HireFiscalYear <= 1988
;
