SELECT
	A.ProductID,
	A.ProductName,
	A.YM,
	SUM(A.Amount) AS '販売合計金額'
FROM
	(
		SELECT
			p.ProductID,
			p.ProductName,
			SUBSTR( CAST( s.SaleDate AS CHAR), 1, 7) AS YM,
			( CASE
				WHEN s.Quantity IS NULL THEN 0
				ELSE s.Quantity * p.Price
			END ) AS Amount
		FROM
			Products AS p
				LEFT OUTER JOIN
			Sales AS s
				ON s.ProductID = p.ProductID
		WHERE
			p.CategoryID IN (1,3,9)
	) AS A
GROUP BY
	A.ProductID,
	A.ProductName,
	A.YM
HAVING
	SUM(A.Amount) > 5000
ORDER BY
	A.ProductID,
	A.ProductName,
	A.YM DESC
;
