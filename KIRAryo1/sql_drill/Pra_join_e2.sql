SELECT
	Customers.PrefecturalID
,	Prefecturals.PrefecturalName AS 都道府県名
,	COUNT(*) AS 顧客数
FROM
	Customers
,	Prefecturals
WHERE
	Customers.PrefecturalID = Prefecturals.PrefecturalID
GROUP BY
	Customers.PrefecturalID
,	Prefecturals.PrefecturalName
;
