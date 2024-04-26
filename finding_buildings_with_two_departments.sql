SELECT name from departments
where building = (select building from departments
where name = 'Gastroenterology'
)
and name <> 'Gastroenterology'
 or building = (select building from departments
where name = 'Oncology'
)
and name <> 'Oncology';