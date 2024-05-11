-- Attrition rate Vs Year since last promotion relation

select * from hr_1;
select * from hr_n2;


select distinct YearsSinceLastPromotion from hr_n2
order by YearsSinceLastPromotion ;

create view AttritionRate_Vs_YearSinceLastPromotion as
select hr_1.Department,CONCAT(ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)*100,2),'%')
    AS Attrition_Rate,
count(case 
	  when (YearsSinceLastPromotion between 1 and 10) AND (Attrition = 'Yes') then  YearsSinceLastPromotion end) as  "1 to 10 Years",
count(case 
	  when (YearsSinceLastPromotion between 11 and 20) AND (Attrition = 'Yes') then YearsSinceLastPromotion end) as  "11 to 20 Years",
count(case 
	  when (YearsSinceLastPromotion between 21 and 30)  AND (Attrition = 'Yes') then YearsSinceLastPromotion end) as  "21 to 30 Years",
count(case 
	  when (YearsSinceLastPromotion between 31 and 40)  AND (Attrition = 'Yes') then YearsSinceLastPromotion end) as  "31 to 40 Years"
from hr_n2
join hr_1
on hr_n2.Employee_ID = hr_1.EmployeeNumber
group by hr_1.Department;


SELECT * FROM AttritionRate_Vs_YearSinceLastPromotion;









