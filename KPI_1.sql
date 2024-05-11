-- Attrition Rate 

create view Attrition_Rate as
select concat( round(sum(Attrition = "Yes")/count(EmployeeNumber) * 100,2),"%") as Attrition_Rate 
from hr_1;

select * from attrition_rate;


-- Department Wise attrition Rate

create view Dept_Wise_AR as   
select Department, concat( round(sum(Attrition = "Yes")/count(EmployeeNumber) * 100,2),"%") as Attrition_Rate from hr_1
group by Department;

select * from Dept_Wise_AR;


