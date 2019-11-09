-- Update some rows 

update Zomato
set Numbart_of_time_orders = 8
where Zomato_Users_Names = 'Liam'
and
Resturants_name = 'House'

update Zomato
set Zomato_Users_Names = 'Elon'
where Numbart_of_time_orders = 8


update Zomato
set Zomato_Users_Names = 'Mask'
where Zomato_Users_Names = 'Liam'

update Zomato
set Delivery_Boy_Names = 'Senorita'
where Zomato_Users_Names = 'Mask'

update Zomato
set Month_names = 'Aug'
where Zomato_Users_Names = 'Mask'





-- Q1: Write a SQL query to find the number of Zomato users

/*
I create this dataset in this dataset all the users are Zomato users 
so using  this ( select * from Zomato ) we can easly see the list of all the zomato users.
*/
select * from Zomato


-- Q2: Write a SQL query to find details of Zomato delivery Boy

/*
In this table Delivey boy details are only in 2 columns and these columns are Delivery_Boy_Names and Delivery_Boy_Ratings
*/

select Delivery_Boy_Names, Delivery_Boy_Ratings from Zomato


-- Q3: Write a SQL query to find  the list of Zomato users who made more than 10 orders in a particular month

/*
In Zomato database 17 users are avaliable who order food or anything more than 10 times in particular month.
*/

select Zomato_Users_Names, Month_names, Numbart_of_time_orders from Zomato
where Numbart_of_time_orders >10


-- Q4: Write a SQL query to find top 10 Zomato delivery Boy on basis of customer rating and time to deliver the item

/*
In our Zomato dataset Delivery Boys ratings are three types which is Positive, Neutral and Negative so 16 Delivery Boys are got Positive 
Ratings from the Zomato users and 7 Delivery Boys are got Negative ratings from the Zomato users and 7 Delivery Boys got Neutral ratings 
from the Zomato users.

Positive: 16
Negative: 7
Neutral:  7

So top 10 Delivery Boys names are                        Emma, Senorita, Senorita, Olivia, Amelia, Elizabeth, Camila, Sid, Elicson, Riley
*/

select top 10 Delivery_Boy_Names, Month_names, Delivery_Boy_Ratings from Zomato
where Delivery_Boy_Ratings = 'Positive'

select Delivery_Boy_Names, Month_names, Delivery_Boy_Ratings from Zomato
where Delivery_Boy_Ratings = 'Positive'

select Delivery_Boy_Names, Month_names, Delivery_Boy_Ratings from Zomato
where Delivery_Boy_Ratings = 'Negative'

select Delivery_Boy_Names, Month_names, Delivery_Boy_Ratings from Zomato
where Delivery_Boy_Ratings = 'Neutral'


-- Q5: Write a SQL query to find the list of Zomato users who order food from the same restaurants more than 3 times in a week


SELECT Resturants_name, COUNT(Resturants_name)
FROM Zomato
GROUP BY Resturants_name
HAVING COUNT(Resturants_name) > 1;


select Zomato_Users_Names from Zomato
where Resturants_name = '1770 House'
and
Number_of_times_order_in_a_week >3



select * from Zomato







