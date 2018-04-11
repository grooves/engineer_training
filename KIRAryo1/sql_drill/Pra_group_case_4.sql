SELECT
	PrefecturalID AS 県ID
,	SUM(
		CASE
			WHEN CustomerClassID = 1 THEN 1
			ELSE 0
		END
	) AS 法人
,	SUM(
		CASE
			WHEN CustomerClassID = 2 THEN 1
			ELSE 0
		END
	) AS 個人
FROM
	Customers
GROUP BY
	PrefecturalID
;
