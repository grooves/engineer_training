DELETE
FROM
	Customers
WHERE
	CustomerClassID = 2
	AND
	(PrefecturalID IN (3,5,7,13))
;
