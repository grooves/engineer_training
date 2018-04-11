SELECT
	'部署名' AS テーブル名,
	DepartmentID AS ID,
	DepartmentName AS 名前
FROM
	Departments
UNION ALL
SELECT
	'カテゴリー名`' AS テーブル名,
	CategoryID AS ID,
	CategoryName AS 名前
FROM
	Categories
ORDER BY
	'テーブル名',
	ID
;
