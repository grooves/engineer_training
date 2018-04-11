SELECT
	A.YM,
	SUM(A.SaleTotal) AS '販売合計金額'
FROM
	(
		SELECT
#			DATE_FORMAT(s.SaleDate, '%Y-%m') AS YM,
			SUBSTR( CAST( s.SaleDate AS CHAR), 1, 7) AS YM,
			s.Quantity * p.Price AS SaleTotal
		FROM
			Sales AS s
				JOIN
			Products AS p
				ON p.ProductID = s.ProductID
	) AS A
GROUP BY
	A.YM
ORDER BY
	A.YM
;
