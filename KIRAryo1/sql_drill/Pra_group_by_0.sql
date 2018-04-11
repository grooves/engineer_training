SELECT
	PrefectureID AS 都道府県
,	COUNT( * ) AS 顧客数
FROM
	Customers
GROUP BY
	PrefectureID
;
