-- Average working years for each Department

select * from hr_n2;

create View Dept_Avg_working_years as
select  Department, Round(avg(TotalWorkingYears),2) as Average_of_TotalWorkingYears
from hr_1
join hr_n2
on hr_1.EmployeeNumber = hr_n2.Employee_ID
group by Department
order by Average_of_TotalWorkingYears ;

select * from Dept_Avg_working_years;