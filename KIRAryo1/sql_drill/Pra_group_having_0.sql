SELECT
	PrefecturalID AS 都道府県
,	COUNT(*) AS 顧客数
FROM
	Customers
GROUP BY
	PrefecturalID
HAVING
	COUNT(*) >= 3
;
