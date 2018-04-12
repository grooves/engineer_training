SELECT
	ym,
	SUM(
		CASE WHEN sp.CategoryID = 1 THEN sp.Quantity * sp.Price
			 ELSE 0
		END ) AS CT1,
	SUM(
		CASE WHEN sp.CategoryID = 2 THEN sp.Quantity * sp.Price
			 ELSE 0
		END ) AS CT2,
	SUM(
		CASE WHEN sp.CategoryID = 3 THEN sp.Quantity * sp.Price
			 ELSE 0
		END ) AS CT3,
	SUM(
		CASE WHEN sp.CategoryID = 4 THEN sp.Quantity * sp.Price
			 ELSE 0
		END ) AS CT4,
	SUM(
		CASE WHEN sp.CategoryID = 5 THEN sp.Quantity * sp.Price
			 ELSE 0
		END ) AS CT5,
	SUM(
		CASE WHEN sp.CategoryID = 6 THEN sp.Quantity * sp.Price
			 ELSE 0
		END ) AS CT6,
	SUM(
		CASE WHEN sp.CategoryID = 7 THEN sp.Quantity * sp.Price
			 ELSE 0
		END ) AS CT7,
	SUM(
		CASE WHEN sp.CategoryID = 8 THEN sp.Quantity * sp.Price
			 ELSE 0
		END ) AS CT8,
	SUM(
		CASE WHEN sp.CategoryID = 9 THEN sp.Quantity * sp.Price
			 ELSE 0
		END ) AS CT9,
	SUM(
		CASE WHEN sp.CategoryID = 10 THEN sp.Quantity * sp.Price
			 ELSE 0
		END ) AS CT10
FROM
	(
		SELECT
			SUBSTR( CAST( s.SaleDate AS CHAR), 1, 7) AS ym,
			s.Quantity,
			s.ProductID,
			p.Price,
			p.CategoryID
		FROM
			Sales AS s
				JOIN
			Products AS p
				ON p.ProductID = s.ProductID
	) AS sp
GROUP BY
	ym
ORDER BY
	ym
;
