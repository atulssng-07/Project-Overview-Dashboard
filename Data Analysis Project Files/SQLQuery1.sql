--project status

WITH Project_status AS(
SELECT
project_id,
project_name,
project_budget,
'upcoming' AS Status
FROM upcoming_projects
UNION ALL
SELECT
project_id,
project_name,
project_budget,
'Completed' AS Status
FROM completed_projects)




--big data
SELECT
e.employee_id,
e.first_name,
e.last_name,
e.job_title,
e.salary,
d.Department_Name,
pa.project_id,
p.project_name,
p.Status
FROM employees e
JOIN departments d
ON e.department_id = d.Department_ID
JOIN project_assignments pa
ON pa.employee_id = e.employee_id
JOIN Project_status p
ON p.project_id = pa.project_id