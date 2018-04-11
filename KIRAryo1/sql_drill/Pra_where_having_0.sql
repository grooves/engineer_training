SELECT
	PrefecturalID AS 都道府県
,	COUNT(*) AS 顧客数
FROM
	Customers
WHERE
	CustomerClassID = 1
GROUP BY
	PrefecturalID
HAVING
	COUNT(*) >= 2
;
