SELECT wards.name
FROM wards
JOIN departments ON wards.department_id = departments.id
WHERE places > (
    SELECT AVG(wards.places) 
    FROM wards
    JOIN departments ON wards.department_id = departments.id
    WHERE departments.name = 'Neurology'
);




