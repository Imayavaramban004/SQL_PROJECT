show databases;
use covid;
select * from day_wise; 						/*Question 1*/
select sum(confirmed) from day_wise;			/*Question 2*/
select date as dates,deaths from day_wise		/*Question 3*/
group by Dates,deaths
order by deaths desc
limit 1;
select ceiling(avg(active)) as activecases_per_day from day_wise;		/*Question 4*/
select sum(case when month(date)=1 then recovered else 0 end) as recovered_jan,		/*Question 5*/
sum(case when month(date)=2 then recovered else 0 end) as recovered_feb,
sum(case when month(date)=3 then recovered else 0 end) as recovered_mar,
sum(case when month(date)=4 then recovered else 0 end) as recovered_apr,
sum(case when month(date)=5 then recovered else 0 end) as recovered_may,
sum(case when month(date)=6 then recovered else 0 end) as recovered_jun,
sum(case when month(date)=7 then recovered else 0 end) as recovered_jul from day_wise;
select sum(case when month(date)=1 then deaths else 0 end) as deaths_jan,		/*Question 6*/
sum(case when month(date)=2 then deaths else 0 end) as deaths_feb,
sum(case when month(date)=3 then deaths else 0 end) as deaths_mar,
sum(case when month(date)=4 then deaths else 0 end) as deaths_apr,
sum(case when month(date)=5 then deaths else 0 end) as deaths_may,
sum(case when month(date)=6 then deaths else 0 end) as deaths_jun,
sum(case when month(date)=7 then deaths else 0 end) as deaths_jul from day_wise;
select sum(case when month(date)=1 then New_cases else 0 end) as New_cases_jan,		/*Question 7*/
sum(case when month(date)=2 then New_cases else 0 end) as New_cases_feb,
sum(case when month(date)=3 then New_cases else 0 end) as New_cases_mar,
sum(case when month(date)=4 then New_cases else 0 end) as New_cases_apr,
sum(case when month(date)=5 then New_cases else 0 end) as New_cases_may,
sum(case when month(date)=6 then New_cases else 0 end) as New_cases_jun,
sum(case when month(date)=7 then New_cases else 0 end) as New_cases_jul from day_wise;
select (sum(recovered)/sum(confirmed))*100 from day_wise;			/*Question 8*/

SELECT 																/*Question 9*/
    MONTH(date) AS month,
    SUM(confirmed + active_cases) AS total_cases
FROM 
    day_wise
GROUP BY 
    MONTH(date)
ORDER BY 
    total_cases DESC
LIMIT 1;
select date as dates,new_cases from day_wise;				/*Question 10*/
select case when weekday(date) in (5,6) then "weekend " else "weekday" end as date_type,		/*Question 11*/
avg(new_cases) as avg_new_cases
from day_wise
group by date_type;
select date,recovered from day_wise					/*Question 12*/
order by recovered desc
limit 1;
select sum(deaths),month(date) as months from day_wise		/*Question 13*/
group by months;
select avg(deaths) from day_wise;							/*Question 14*/
select month(date) as months,(sum(recovered)/sum(confirmed)) as recovery_rate from day_wise		/*Question 15*/
group by months
order by recovery_rate desc
limit 1;


