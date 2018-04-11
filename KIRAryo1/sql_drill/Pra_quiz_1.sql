SELECT
	CONCAT('INSERT INTO Pref_Back VALUES (' ,
			PrefecturalID,
			', ''',
			PrefecturalName,
			''');' )
FROM
	Prefecturals
;
