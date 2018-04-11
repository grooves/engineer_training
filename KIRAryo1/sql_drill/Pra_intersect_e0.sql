SELECT
	EmployeeID AS name
FROM
	Sales
INTERSECT
SELECT
	EmployeeID AS name
FROM
	Salary
;
