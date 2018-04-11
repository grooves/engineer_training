SELECT
	CustomerID AS 顧客ID
,	COUNT( * ) AS 件数
FROM
	Sales
GROUP BY
	CudtomerID
;
