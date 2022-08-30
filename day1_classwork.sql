select * from actor;

select first_name, last_name from actor;

select first_name, last_name 
from actor where first_name = 'Nick';

select first_name, last_name 
from actor where first_name like 'Nick';

select first_name, actor_id from actor
where first_name like 'J%';

-- To get 2 letter using
select first_name, actor_id
from actor
where first_name like 'K__';

--using like and both wildcards
select first_name, last_name, actor_id
from actor
where first_name like 'K__%th';

select * from payment;

select customer_id, amount
from payment
where amount > 3.00;

--Acending order
select customer_id, amount
from payment
where amount >= 2.00
order by amount ASC;

--between clause
select customer_id, amount
from payment
where amount between 2.00 and 7.99;

--Sql aggregations 
select SUM(amount)
from payment
where amount > 5.99;

select AVG(amount)
from payment
where amount > 5.99;

select COUNT(amount)
from payment
where amount > 5.99;

--using distint
select COUNT(DISTINCT amount)
from payment
where amount > 5.99;

--using min
select MIN(amount) AS Min_Num_Payments
from payment
where amount > 7.99;

select MAX(amount) AS Max_Num_Payments
from payment
where amount > 7.99;


select amount
from payment
where amount = 7.99;

--using group by
select amount, COUNT(amount)
from payment
GROUP BY amount
ORDER BY amount;

--another example of group by
select customer_id, amount
from payment
group by amount, customer_id
order by customer_id DESC;

select * from customer;

--customer id that show more than 5 times
select Count(customer_id), email
from customer
where email LIKE 'j__.w%'
group by email
HAVING COUNT(customer_id) > 0;

