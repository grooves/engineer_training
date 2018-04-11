SELECT
	p.ProductName
,	s.ProductID
,	SUM(s.Quantity) AS 数量合計
FROM
	Sales AS s
		JOIN
	Products AS p
		ON p.ProductID = s.ProductID
GROUP BY
	s.ProductID
,	p.ProductName
HAVING
	SUM(Quantity) >= 300
;
