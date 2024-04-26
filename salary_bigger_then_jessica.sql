SELECT doctors.name from doctors
where salary > (select salary from doctors
where name = 'Jennifer'
) ;


