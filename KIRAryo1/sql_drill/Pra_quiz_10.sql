UPDATE
	Customers AS c
SET
	CustomerCode = CONCAT(
		CustomerClassID,
		( SELECT
			LPAD(PrefecturalID, 2, 0)
		FROM
			Prefecturals AS p
		WHERE
			p.PrefecturalID = c.PrefecturalID
		),
		LPAD(CustomerID, 4, 0)
	)
;
