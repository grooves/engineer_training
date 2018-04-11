UPDATE
	Customers
SET
	CustomerName =
	( CASE
		WHEN CustomerClassID = 1 THEN CONCAT(CustomerName, '御中')
		ELSE CONCAT(CustomerName, '様')
	END )
;
