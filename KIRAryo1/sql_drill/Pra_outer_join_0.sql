SELECT
	p.ProductName,
	AVG( p.Price *
		CASE
			WHEN s.Quantity IS NULL THEN 0
			ELSE s.Quantity
		END
	) AS 平均販売価格
FROM
	Products AS p
		LEFT OUTER JOIN
	Sales AS s
		ON s.productID = p.ProductID
GROUP BY
	p.ProductName
;
