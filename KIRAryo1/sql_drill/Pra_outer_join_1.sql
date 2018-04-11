SELECT
	c.CustomerName,
	SUM(
		CASE
			WHEN s.Quantity IS NULL THEN 0
			ELSE s.Quantity
		END
	) AS 販売数量合計
FROM
	Customers AS c
		LEFT OUTER JOIN
	Sales AS s
		ON s.CustomerID = c.CustomerID
GROUP BY
	c.CustomerID
;
