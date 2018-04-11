UPDATE
	Products
SET
	ProductName = CONCAT( (
			SELECT
				SUM(s.Quantity)
			FROM
				Sales AS s
			WHERE
				Products.productID = s.ProductID
			GROUP BY
				s.ProductID
		), '個も売れてるヒット商品！', ProductName)
WHERE
	EXISTS
	(
		SELECT
			'X'
		FROM
			Sales AS s
		WHERE
			Products.productID = s.ProductID
		GROUP BY
			s.ProductID
		HAVING
			SUM(s.Quantity) >= 500
	)
;
