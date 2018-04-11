SELECT
	PrefecturalID
,	COUNT(*)
FROM
	Customers
WHERE
	CustomerClassID = 1
GROUP BY
	PrfecturalID
HAVING
	COUNT(*) > 5
ORDER BY
	COUNT(*) DESC
,	PrefecturalID ASC
;
