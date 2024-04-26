SELECT departments.name
FROM departments
JOIN wards ON wards.department_id = departments.id
JOIN doctors_examinations ON doctors_examinations.ward_id = wards.id
JOIN doctors ON doctors.id = doctors_examinations.doctor_id
WHERE doctors.name = 'Jessica' AND doctors.surname = 'Thomas';



