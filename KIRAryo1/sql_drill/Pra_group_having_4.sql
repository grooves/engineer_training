SELECT
	BloodType AS 血液型
,	COUNT(*) AS データ件数
FROM
	Employees
GROUP BY
	BloodType
HAVING
	COUNT(*) >= 10 
;
