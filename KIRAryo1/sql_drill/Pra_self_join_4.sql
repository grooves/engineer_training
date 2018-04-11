SELECT
	c1.CategoryName AS カテゴリー1,
	c2.CategoryName AS カテゴリー2
FROM
	Categories AS c1
		JOIN
	Categories AS c2
		ON c1.CategoryID < c2.CategoryID
;
