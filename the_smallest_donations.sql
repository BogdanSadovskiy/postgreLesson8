SELECT departments.name, SUM(donations.amount) AS total_donation
FROM departments
JOIN donations ON departments.id = donations.department_id
GROUP BY departments.name
ORDER BY total_donation asc
limit 1;

