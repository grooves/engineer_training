SELECT
	p.CategoryID,
	c.CategoryName AS カテゴリー名,
	SUM(s.Quantity) AS 数量
FROM
	Sales AS s
		JOIN
	Products AS p
		ON s.ProductID = p.ProductID
			JOIN
		Categories AS c
			ON p.CategoryID = c.CategoryID
GROUP BY
	c.CategoryID
;
