-- Problem: Finding Updated Records
-- Question ID : 10299
-- Difficulty: Easy
-- Pattern: Sub Queries + WHEN clause
-- Source: StrataScratch
-- Companies: Microsoft

/*
PROBLEM STATEMENT
We have a table with employees and their salaries; however, some of the records are old and contain outdated salary information. Since there is no timestamp, assume salary is non-decreasing over time. You can consider the current salary for an employee is the largest salary value among their records. If multiple records share the same maximum salary, return any one of them. Output their id, first name, last name, department ID, and current salary. Order your list by employee ID in ascending order.
*/

/*
DATASET
TABLE : ms_employee_salary
COLUMNS : department_id,first_name,id,last_name,salary
*/

/*
-- Sample Data (Partial)
id | first_name | last_name | salary | department_id
1  | Todd       | Wilson    | 110000 | 1006
1  | Todd       | Wilson    | 106119 | 1006
2  | Justin     | Simon     | 128922 | 1005
2  | Justin     | Simon     | 130000 | 1005
9  | Christy    | Mitchell  | 150000 | 1001
...
*/

-- Solution

select id,first_name,last_name,salary,department_id
from ms_employee_salary e
where salary = (
    select max(salary)
    from ms_employee_salary
    where id=e.id
)

-- Output

/*
id | first_name | last_name | department_id | current_salary
------------------------------------------------------------
1  | Todd       | Wilson    | 1006          | 110000
2  | Justin     | Simon     | 1005          | 130000
3  | Kelly      | Rosario   | 1002          | 42689
...
*/
