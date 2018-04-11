SELECT
	e.EmployeeID,
	e.EmployeeName,
	A.YM,
	SUM(
		CASE
			WHEN A.SaleTotal IS NULL THEN 0
			ELSE A.SaleTotal
		END
	) AS '販売合計金額'
FROM
	Employees AS e
		LEFT OUTER JOIN
	(
		SELECT
			s.EmployeeID,
			SUBSTR( CAST( s.SaleDate AS CHAR), 1, 7) AS YM,
			s.Quantity * p.Price AS SaleTotal
		FROM
			Sales AS s
				JOIN
			Products AS p
				ON p.ProductID = s.ProductID
	) AS A
		ON A.EmployeeID = e.EmployeeID
GROUP BY
	e.EmployeeID,
	e.EmployeeName,
	A.YM
ORDER BY
	e.EmployeeID,
	A.YM
;
