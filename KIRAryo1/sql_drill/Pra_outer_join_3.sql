SELECT
	pf.PrefecturalName,
	SUM(
		CASE
			WHEN c.PrefecturalID IS NULL THEN 0
			ELSE 1
		END
	) AS 顧客数
FROM
	Prefecturals AS pf
		LEFT OUTER JOIN
	Customers AS c
		ON c.PrefecturalID = pf.PrefecturalID
GROUP BY
	pf.PrefecturalID
;
