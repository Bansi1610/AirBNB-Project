#Airbnb Project

#1 Import Data from both the .CSV files to create tables, Listings and Booking Details
select * from booking_details bd; 
select * from listings;

#2 Write a query to show names from Listings table
select name from listings;

#3	Write a query to fetch total listings from the listings table
select count(*) from listings;

#4	Write a query to fetch total listing_id from the booking_details table
select count(listing_id) from booking_details;

#5	Write a query to fetch host ids from listings table
select host_id from listings;

#6	Write a query to fetch all unique host name from listings table
select distinct host_name from listings;

#7	Write a query to show all unique neighbourhood_group from listings table
select distinct neighbourhood_group from listings;

#8 	Write a query to show all unique neighbourhood from listings table
select distinct neighbourhood from listings;

#9	Write a query to fetch unique room_type from listings tables
select distinct room_type from listings;

#10	Write a query to show all values of Brooklyn & Manhattan from listings tables
select l.id, l.neighbourhood_group from listings l join booking_details bd on l.id = bd.listing_id 
where neighbourhood_group in ("Brooklyn", "Manhattan");

#11	Write a query to show maximum price from booking_details table
select max(price) from booking_details bd;

#12	Write a query to show minimum price fron booking_details table
select min(price) from booking_details bd;

#13	Write a query to show average price from booking_details table
select avg(price) from booking_details bd;

#14	Write a query to show minimum value of minimum_nights from booking_details table
select min(minimum_nights) from booking_details bd;

#15	Write a query to show maximum value of minimum_nights from booking_details table
select max(minimum_nights) from booking_details bd;

#16	Write a query to show average availability_365 
select avg(availability_365) from booking_details bd;

#17	Write a query to show id , availability_365 and all availability_365 values greater than 300
select listing_id, availability_365 from booking_details bd where availability_365 >300;

#18	Write a query to show count of id where price is in between 300 to 400
select count(listing_id) from booking_details bd where price between 300 and 400;

#19	Write a query to show count of id where minimum_nights spend is less than 5
select count(listing_id) from booking_details bd where minimum_nights <5;

#20	Write a query to show count where minimum_nights spend is greater than 100
select count(minimum_nights) from booking_details bd where minimum_nights >100;

#21	Write a query to show all data of listings & booking_details
select bd.*, l.* from booking_details bd join listings l on bd.listing_id = l.id;

#22	Write a query to show host name and price 
select l.host_name, bd.price from listings l join booking_details bd on l.id=bd.listing_id;

#23	Write a query to show room_type and price
select l.room_type, bd.price from listings l join booking_details bd on l.id=bd.listing_id;

#24	Write a query to show neighbourhood_group & minimum_nights spend
select l.neighbourhood_group, bd.minimum_nights from listings l join booking_details bd on l.id=bd.listing_id;

#25	Write a query to show neighbourhood & availability_365
select l.neighbourhood, bd. availability_365 from listings l join booking_details bd on l.id=bd.listing_id;

#26	Write a query to show total price by neighbourhood_group
select sum(bd.price), l.neighbourhood_group from listings l join booking_details bd on l.id=bd.listing_id group by neighbourhood_group;

#27	Write a query to show maximum price by neighbourhood_group
select max(bd.price), l.neighbourhood_group from listings l join booking_details bd on l.id=bd.listing_id group by neighbourhood_group;

#28	Write a query to show maximum night spend by neighbourhood_group
select max(bd.minimum_nights), l.neighbourhood_group from listings l join booking_details bd on l.id=bd.listing_id group by neighbourhood_group;

#29 Write a query to show maximum reviews_per_month spend by neighbourhood
select max(bd.reviews_per_month), l.neighbourhood from listings l join booking_details bd on l.id=bd.listing_id group by neighbourhood;

#30 Write a query to show maximum price by room type
select max(bd.price), l.room_type from listings l join booking_details bd on l.id=bd.listing_id group by room_type; 

#31	Write a query to show average number_of_reviews by room_type
select avg(bd.number_of_reviews), l.room_type from listings l join booking_details bd on l.id=bd.listing_id group by room_type;

#32	Write a query to show average price by room type
select avg(bd.price), l.room_type from listings l join booking_details bd on l.id=bd.listing_id group by room_type;

#33	Write a query to show average night spend by room type
select avg(bd.minimum_nights), l.room_type from listings l join booking_details bd on l.id=bd.listing_id group by room_type;

#34	Write a query to show average price by room type but average price is less than 100
select avg(bd.price), l.room_type from listings l join booking_details bd on l.id=bd.listing_id where bd.price < 100 group by room_type;

#35	Write a query to show average night by neighbourhood and average_nights is greater than 5
select avg(bd.minimum_nights), l.neighbourhood from listings l join booking_details bd on l.id=bd.listing_id 
where bd.minimum_nights > 5 group by neighbourhood;

#36	Write a query to show all data from listings where price is greater than 200 using sub-query
select l.*, bd.price from listings l join booking_details bd on l.id=bd.listing_id where bd.price > 200;

#37	Write a query to show all values from booking_details table where host id is 314941 using sub-query
select bd.*, l.host_id from listings l join booking_details bd on l.id=bd.listing_id where l.host_id = 314941;

#38	Find all pairs of id having the same host id, each pair coming once only
select bd.listing_id, l.host_id from listings l join booking_details bd on l.id=bd.listing_id 
where bd.listing_id = l.host_id;

select * from listings l;
select * from booking_details bd;

#39	Write an sql query to show fetch all records that have the term cozy in name
select l.*, bd.* from listings l join booking_details bd on l.id=bd.listing_id 
where l.name = "cozy";

#40	Write an sql query to show price, host id, neighbourhood_group of manhattan neighbourhood_group
select bd.price, l.host_id, l.neighbourhood_group from listings l join booking_details bd on l.id=bd.listing_id 
where l.neighbourhood_group = "manhattan";

#41 Write a query to show id , host name, neighbourhood and price but only for Upper West Side & Williamsburg neighbourhood, also make sure price is greater than 100
select l.id, l.host_name, l.neighbourhood, bd.price from listings l join booking_details bd on l.id=bd.listing_id  
where l.neighbourhood in("upper West Side", "Williamsburg") and bd.price > 100;

#42	Write a query to show id , host name, neighbourhood and price for host name Elise and neighbourhood is Bedford-Stuyvesant
select l.id, l.host_name, l.neighbourhood, bd.price from listings l join booking_details bd on l.id=bd.listing_id
where l.host_name = "Elise" and l.neighbourhood = "Bedford-Stuyvesant";

#43	Write a query to show host_name, availability_365,minimum_nights only for 100+ availability_365 and minimum_nights
select l.host_name, bd.availability_365, bd.minimum_nights from listings l join booking_details bd on l.id=bd.listing_id
where bd.availability_365 >100 and bd.minimum_nights >100;

#44	Write a query to show to fetch id , host_name , number_of_reviews, and reviews_per_month but 
#show only that records where number of reviews are 500+ and review per month is 5+
select l.id, l.host_name, bd.number_of_reviews, bd.reviews_per_month from listings l join booking_details bd on l.id=bd.listing_id
where bd.number_of_reviews >500 and bd.reviews_per_month >5;

#45	Write a query to show neighbourhood_group which have most total number of review 
select l.neighbourhood_group, sum(bd.number_of_reviews) from listings l join booking_details bd on l.id=bd.listing_id
where bd.number_of_reviews = (select max(number_of_reviews) from booking_details bd)  group by l.neighbourhood_group;

#46	Write a query to show host name which have most cheaper total price 
select l.host_name, sum(bd.price) from listings l join booking_details bd on l.id=bd.listing_id
where bd.price = (select min(price) from booking_details bd) group by l.host_name;

#47	Write a query to show host name which have most costly total price 
select l.host_name, sum(bd.price) from listings l join booking_details bd on l.id=bd.listing_id
where bd.price = (select max(price) from booking_details bd) group by l.host_name;

#48	Write a query to show host name which have max price using sub-query
select l.host_name, bd.price from listings l join booking_details bd on l.id=bd.listing_id
where bd.price =(select max(price) from booking_details);

#49	Write a query to show neighbourhood_group where price is less than 100
select l.neighbourhood_group, bd.price from listings l join booking_details bd on l.id=bd.listing_id
where bd.price <100;

#50	Write a query to find max price, average availability_365 for each room type and order in ascending by maximum price.
select max(bd.price), avg(bd.availability_365), l.room_type from listings l join booking_details bd on l.id=bd.listing_id
group by l.room_type order by max(bd.price);