-- Average Hourly rate of Male Research Scientist

select * from hr_1;

Create view Avg_HourlyRate_MResearchScientist as
select round(avg(HourlyRate),2) as Average_HourlyRate_Male_RS
from hr_1
where Gender = "Male" and JobRole = "Research Scientist";

select * from Avg_HourlyRate_MResearchScientist;
