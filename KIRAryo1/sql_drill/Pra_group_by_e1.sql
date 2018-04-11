SELECT
	PrefectureID AS 都道府県
,	CustomerClassID AS 会員種別
,	COUNT( * ) AS 顧客数
FROM
	Customers
GROUP BY
	PrefecturalID
,	CustomerID
;
