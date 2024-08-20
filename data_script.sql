select `Gender` , count(`Gender`) as totalcount,
count('Gender') * 100 / (select count(*) from customer_churn) as Percentage
from customer_churn
group by Gender;

select `Contract` , count(`Contract`) as totalcount,
count('Contract') * 100 / (select count(*) from customer_churn) as Percentage
from customer_churn
group by Contract;

select `Customer Status` , count(`Customer Status`) as totalcount,
count(`Customer Status`) * 100 / (select count(*) from customer_churn) as Percentage
from customer_churn
group by `Customer Status`;

select City , count(`City`) as totalcount,
count('City') * 100 / (select count(*) from customer_churn) as Percentage
from customer_churn
group by city
order by percentage desc;

select distinct `Internet Type`
from customer_churn;

select `Churn Reason`, count(`Churn Reason`)
from customer_churn
 where count(`Churn Reason`) is null;