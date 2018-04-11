SELECT
	c.CustomerName,
	pf.PrefecturalName,
	cc.CustomerClassName
FROM
	Customers AS c
,	Prefecturals AS pf
,	CustomerClasses AS cc
WHERE
	pf.PrefecturalID = c.PrefecturalID
AND	cc.CustomerClassID = c.CustomerClassID
ORDER BY
	c.PrefecturalID ASC
;
