SELECT
	DepartmentID AS 部署ID
,	COUNT(*) AS 社員数
FROM
	BelongTo
WHERE
	EndDate IS NULL
GROUP BY
	DepartmentID
ORDER BY
	社員数 DESC
;
