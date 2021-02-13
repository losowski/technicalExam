{code:sql}
SELECT
	n.forename,
	c.colour,
	a.name
FROM
	demo_schema.colours c
	INNER JOIN demo_schema.animals a ON (c.animal_id = a.id)
	INNER JOIN demo_schema.names n ON (c.name_id = n.id)
WHERE
	c.id = 2
;
{code}
