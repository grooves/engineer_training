SELECT
	SalaryID AS 給与ID
,	CASE
		WHEN Amount < 150000 THEN 'D'
		WHEN Amount < 300000 THEN 'C'
		WHEN Amount < 500000 THEN 'B'
		ELSE 'A'
	END AS ランク
FROM
	Salary
;
