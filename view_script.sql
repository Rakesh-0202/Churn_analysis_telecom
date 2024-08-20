create view vw_churndata as 
select * from customer_churn where `Customer Status` in ('churned' , 'stayed');

create view vw_joindata as 
select * from customer_churn where `Customer Status` = 'Joined';