SELECT
	COUNT( * ) AS 顧客数
FROM
	Customers
WHERE
	CustomerName NOT LIKE '%株式会社%'
;
