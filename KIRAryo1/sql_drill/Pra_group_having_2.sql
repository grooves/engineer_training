SELECT
	PrefecturalID AS 県ID
,	COUNT(*) AS 顧客数
FROM
	Customers
GROUP BY
	PrefecturalID
HAVING
	COUNT(*) > 1
;
