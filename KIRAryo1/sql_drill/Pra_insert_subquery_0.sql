INSERT
INTO Salary
(
	SalaryID,
	EmployeeID,
	PayDate,
	Amount
)
SELECT
	s.EmployeeID + 100000,
	s.EmployeeID,
	'2008-02-14',
	SUM( s.Quantity * p.Price * 0.001)
FROM
	Sales AS s
		JOIN
	Products AS p
		ON s.ProductID = p.ProductID
GROUP BY
	s.EmployeeID + 100000,
	s.EmployeeID
;
