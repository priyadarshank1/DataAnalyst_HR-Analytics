-- Attrition rate Vs Monthly income stats

select * from hr_1;
select * from hr_n2;


create view AttritionRate_VS_MonthlyIncomeStats as
SELECT Department, ROUND(AVG(CASE WHEN Attrition = 'Yes' THEN MonthlyIncome End), 2)
	As Avg_Monthly_Income, 
    CONCAT(ROUND(COUNT(CASE WHEN Attrition = 'Yes' THEN 1 END) / COUNT(*)*100,2),'%')
    AS Attrition_Rate
FROM hr_1 
JOIN hr_n2 
ON hr_1 .EmployeeNumber = hr_n2 .Employee_ID
GROUP BY Department;


SELECT * FROM AttritionRate_VS_MonthlyIncomeStats;








