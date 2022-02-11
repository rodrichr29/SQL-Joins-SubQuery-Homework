--Question 1
--List all customers who live in Texas
select address.address, address.district, address.address_id from address
join customer on address.address_id = customer.customer_id
where address.district = 'Texas'

select customer_id, first_name, last_name, address_id from customer
where address_id = 567

--Jenifer Davis, Kim Cruz, Richard Mccrary, Bryan Hardison, Lan Still

--Question 2
--Get all payments above $6.99 with the Customer's Full Name
select payment.amount, payment.first_name, payment.last_name from payment
join customer on payment.first_name = customer.first_name
and payment.last_name = customer.last_name;
where payment.amount > 6.99
--#Incomplete, new columns are not functional# *ERROR[read only, no corresponding table column]ERROR*

--Question 3
--Show all customers names who have made payments over $175(use subqueries)
select customer_id, amount from payment
where amount 
--#Incomplete, because I don't have any clue on how to solve this#

--Question 4
--List all customers that live in Nepal (use the city table)
select * from city
where country_id = 66

select customer_id, first_name, last_name, address_id from customer
where address_id = 367
--Nicholas Barfield

--Question 5
--Which staff member had the most transactions?
select staff_id from payment
where staff_id = 1
--7292 transactions

select staff_id from payment
where staff_id = 2
--7304 transactions
--Jon has more transactions than Mike

--Question 6
--How many movies of each rating are there?
select film_id, rating from film
where rating = 'G'
--178 movies in G rating

select film_id, rating from film
where rating = 'PG'
--194 movies in PG rating

select film_id, rating from film
where rating = 'PG-13'
--223 movies in PG-13 rating

select film_id, rating from film
where rating = 'R'
--195 movies in R rating

select film_id, rating from film
where rating = 'NC-17'
--210 movies in NC-17 rating
--In total 1000 movies

--Question 7
--Show all customers who have made a single payment above $6.99 (Use Subqueries)
select customer_id, amount from payment
where amount > 6.99
--customer_ids: 343, 348, 349, 
--#Incomplete#

--Question 8
--How many free rentals did our store give away?
select amount from payment
where amount = 0.00
--24 free rentals

