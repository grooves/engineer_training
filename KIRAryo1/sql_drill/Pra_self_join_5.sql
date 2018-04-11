SELECT
	c1.CustomerName AS 商品名1,
	c2.CustomerName AS 商品名2
FROM
	Customers AS c1
		JOIN
	Customers AS c2
		ON c1.CustomerID < c2.CustomerID
		AND c1.PrefecturalID = c2.PrefecturalID
		AND c1.CustomerClassID = c2.CustomerClassID
WHERE
	c1.PrefecturalID <> 13
;
