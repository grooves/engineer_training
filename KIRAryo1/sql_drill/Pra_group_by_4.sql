SELECT
	Bloodtype AS 血液型
,	AVG(Height) AS 平均身長
,	AVG(Weight) AS 平均体重
FROM
	Employees
GROUP BY
	BloodType
;
