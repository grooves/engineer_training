UPDATE
	Products
SET
	Price =
	(
		CASE
			WHEN Price >= 2000 THEN Price * 0.8
			WHEN Price >= 1000 THEN Price * 0.9
			ELSE Price
		END
	)
WHERE
	CategoryID = 7
;
