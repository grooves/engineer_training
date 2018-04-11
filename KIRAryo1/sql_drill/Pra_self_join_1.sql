SELECT
	p1.ProductName AS 商品名1,
	p2.ProductName AS 商品名2
FROM
	Products AS p1
		JOIN
	Products AS p2
		ON p1.ProductID < p2.ProductID
		AND p1.CategoryID = p2.CategoryID
;
