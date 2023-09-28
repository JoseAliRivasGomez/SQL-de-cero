




SELECT
	a.name AS country,
	b.name AS continent
FROM
	country a
	INNER JOIN continent b ON a.continent = b.code
ORDER BY
	a.name ASC;





