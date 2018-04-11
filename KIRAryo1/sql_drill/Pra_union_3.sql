SELECT
	ProductID
FROM
	Products AS p
UNION
SELECT
	ProductID
FROM
	Sales AS s
ORDER BY
	ProductID
;
