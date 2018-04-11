SELECT
	*
FROM
	Customers
WHERE
	CustomerName NOT LIKE '%株式会社%'
	AND
	Address LIKE '%江戸川区%'
;
