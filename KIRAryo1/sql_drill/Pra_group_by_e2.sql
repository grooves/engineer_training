SELECT
	PrefectureID AS 都道府県
,	CustomerClassID AS 会員種別
,	COUNT( * ) AS 顧客数
,	SUM(
		CASE
			WHEN CustomerClassID = 1 THEN 1
			ELSE 0
		END
	) AS 会員種別1の顧客数
FROM
	Customers
GROUP BY
	PrefecturalID
,	CustomerID
;
