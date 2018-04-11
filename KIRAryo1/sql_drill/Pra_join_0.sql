SELECT
	Customers.PrefecturalID
,	Prefecturals.PrefecturalName AS 都道府県名
,	COUNT(*) AS 顧客数
FROM
	Customers
		JOIN
	Prefecturals
		ON Customers.PrefecturalID = Prefecturals.PrefecturalID
GROUP BY
	Customers.PrefecturalID
,	Prefecturals.PrefecturalName
;
