SELECT DISTINCT sponsors.name
FROM sponsors
JOIN donations ON donations.sponsor_id = sponsors.id
JOIN departments ON departments.id = donations.department_id
WHERE departments.name not IN ('Neurology', 'Oncology')
and sponsor_id not in (SELECT sponsor_id
	FROM sponsors
	JOIN donations ON donations.sponsor_id = sponsors.id
	JOIN departments ON departments.id = donations.department_id
	WHERE departments.name  IN ('Neurology', 'Oncology')
	);

