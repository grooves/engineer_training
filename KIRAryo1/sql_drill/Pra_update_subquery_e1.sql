UPDATE
	Customers
SET
	Address = CONCAT( (
		SELECT
			PrefecturalName
		FROM
			Prefecturals AS pf
		WHERE
			pf.PrefecturalID = Customers.PrefecturalID
		) , Address
	)
;
