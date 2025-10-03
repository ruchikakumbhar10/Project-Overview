-- Big Table
select 
e.employee_id,
e.first_name,
e.last_name,
e.job_title,
e.salary,
d.department_name,
pa.project_id
from employees e
join departments d
on e.department_id = d.department_id
join project_assignments pa
on pa.employee_id = e.employee_id

-- Project Status

with project_status as (
select
project_id,
project_name,
project_budget,
'upcoming' as status
from upcoming_projects
union all
select 
project_id,
project_name,
project_budget,
'Completed' as status
from completed_projects)



