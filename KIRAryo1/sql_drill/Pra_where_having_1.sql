SELECT
	PrefecturalID AS 県ID
,	COUNT(*) AS 顧客数
FROM
	Customers
WHERE
	PrefecturalID >= 10
GROUP BY
	PrefecturalID
HAVING
	COUNT(*) >= 2
;
