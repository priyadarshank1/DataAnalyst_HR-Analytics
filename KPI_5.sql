-- Job Role Vs Work life balance

select * from hr_1;
select * from hr_n2;

Create view JobRole_Vs_Worklifebalance as
select JobRole,
count(case 
	 when WorkLifeBalance = 1 then WorkLifeBalance end) as "Poor",
count(case 
	 when WorkLifeBalance = 2 then WorkLifeBalance end) as "Average",
count(case 
	 when WorkLifeBalance = 3 then WorkLifeBalance end) as "Good",
count(case 
	 when WorkLifeBalance = 4 then WorkLifeBalance end) as "Excellent"
from hr_n2 
join hr_1
on hr_n2.Employee_ID = hr_1.EmployeeNumber
group by JobRole
order by JobRole;

select * from JobRole_Vs_Worklifebalance;