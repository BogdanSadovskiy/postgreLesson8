SELECT doctors.name
FROM doctors
join doctors_examinations as de
on de.doctor_id = doctors.id 
where  de.start_time = '12:00'  and de.end_time <= '15:00';
