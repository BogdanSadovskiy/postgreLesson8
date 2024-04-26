


SELECT name from departments
where building = (select building from departments
where name = 'Cardiology'
)
and name <> 'Cardiology' ;