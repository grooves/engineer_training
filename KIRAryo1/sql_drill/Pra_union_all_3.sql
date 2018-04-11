SELECT
	DepartmentID AS ID,
	DepartmentName AS 名前
FROM
	Departments
UNION ALL
SELECT
	CustomerClassID AS ID,
	CustomerClassName AS 名前
FROM
	CustomerClasses
UNION ALL
SELECT
	CategoryID AS ID,
	CategoryName AS 名前
FROM
	Categories
UNION ALL
SELECT
	PrefecturalID AS ID,
	PrefecturalName AS 名前
FROM
	Prefecturals
;
