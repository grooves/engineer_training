SELECT
	'部署名' AS テーブル名,
	DepartmentID AS ID,
	DepartmentName AS 名前
FROM
	Departments
UNION ALL
SELECT
	'顧客クラス名' AS テーブル名,
	CustomerClassID AS ID,
	CustomerClassName AS 名前
FROM
	CustomerClasses
UNION ALL
SELECT
	'カテゴリー名' AS テーブル名,
	CategoryID AS ID,
	CategoryName AS 名前
FROM
	Categories
UNION ALL
SELECT
	'都道府県名' AS テーブル名,
	PrefecturalID AS ID,
	PrefecturalName AS 名前
FROM
	Prefecturals
ORDER BY
	'テーブル名',
	ID
;
