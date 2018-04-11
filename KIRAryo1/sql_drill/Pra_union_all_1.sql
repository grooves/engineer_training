SELECT
	DepartmentID AS ID,
	DepartmentName AS 名前
FROM
	Departments
UNION ALL
SELECT
	CategoryID AS ID,
	CategoryName AS 名前
FROM
	Categories
;
