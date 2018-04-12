SELECT
	sp.ProductID,
	sp.ProductName,
	June,
	July,
	( CASE WHEN July > June THEN '↑'
		 WHEN July < June THEN '↓'
		 ELSE '→'
	END ) AS '対6月増減',
	August,
	( CASE WHEN August > July THEN '↑'
		 WHEN August < July THEN '↓'
		 ELSE '→'
	END ) AS '対7月増減'
FROM
	(
		SELECT
			p.ProductID,
			p.ProductName,
			SUM( CASE WHEN SUBSTR( CAST( s.SaleDate AS CHAR), 1, 7) = '2007-06' THEN s.Quantity * p.Price
					  ELSE 0
				 END ) AS June,
			SUM( CASE WHEN SUBSTR( CAST( s.SaleDate AS CHAR), 1, 7) = '2007-07' THEN s.Quantity * p.Price
					  ELSE 0
				 END ) AS July,
			SUM( CASE WHEN SUBSTR( CAST( s.SaleDate AS CHAR), 1, 7) = '2007-08' THEN s.Quantity * p.Price
					  ELSE 0
				 END ) AS August
		FROM
			Products AS p
				LEFT OUTER JOIN
			Sales AS s
				ON s.ProductID = p.ProductID
		WHERE
			s.SaleDate BETWEEN '2007-06-01' AND '2007-08-31'
		GROUP BY
			p.ProductID,
			p.ProductName
	) AS sp
GROUP BY
	sp.productID,
	sp.ProductName
ORDER BY
	sp.productID,
	sp.ProductName
;
