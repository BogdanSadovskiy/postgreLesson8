SELECT name, surname 
FROM doctors
where (salary + premium) - (
	select sum(salary + premium)
	FROM doctors
	where name = 'Jane' and surname = 'Smith'
	) >100;




