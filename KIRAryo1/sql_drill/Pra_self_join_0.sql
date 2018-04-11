SELECT
	p1.ProductName AS 商品名1,
	p2.ProductName AS 商品名2,
	(p1.Price + p2.Price) AS セット価格
FROM
	Products AS p1
		JOIN
	Products AS p2
		ON p1.ProductID < p2.ProductID
		AND p1.CategoryID <> p2.CategoryID
WHERE
	( p1.Price + p2.Price ) > 2500
;
