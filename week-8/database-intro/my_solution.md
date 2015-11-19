#1. Select all data for all states.
Select * from states;

#2. Select all data for all regions.
Select * from regions;

#3. Select the state_name and population for all states.
select state_name, population from states;

#4. Select the state_name and population for all states ordered by population. The most populous state should be at the top.
select state_name, population from states order by population desc;

#5. Select the state_name for the states in region 7.
SELECT
  state_name
FROM states
JOIN regions
  ON states.region_id = regions.id
WHERE regions.id = 7;

#6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.
SELECT
  state_name,
  population_density
FROM states
JOIN regions
  ON states.region_id = regions.id
WHERE population_density > 50
ORDER BY population_density asc

#7. Select the state_name for states with a population between 1 million and 1.5 million people.
SELECT
state_name
FROM states
WHERE population BETWEEN 1000000 AND 1500000;

#8. Select the state_name and region_id for states ordered by region in ascending order.
SELECT
  state_name, region_id
FROM states
ORDER BY region_id ASC;

#9. Select the region_name for the regions with "Central" in the name.
SELECT
region_name
FROM regions
WHERE region_name LIKE '%Central%';

#10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).

SELECT
  region_name,
  state_name
FROM states
JOIN regions
  ON states.region_id = regions.id
ORDER BY region_id;

#Release 6 -- Schema
![clueless schema](/week-8/database-intro/schema-chal8.4.png "schema")

#Reflection
#What are databases for?
Databases are for storing large amounts of data in a scalable manner.
#What is a one-to-many relationship?
A 1:many relationship is when a given child attribute B belongs to a parent attribute A, where every instance of B has just one exact parent attribute A, while A's may have more than one matching attribute B. The example we used in this challenge was states and regions, where every state belongs to one region, and every region contains multiple states.
#How can you select information out of a SQL database? What are some general guidelines for that?
Your select statement always starts with 'select', and then you simply list the fields you want returned, followed by any conditionals in the 'where' clause, as well as any ordering or grouping of aggregations. Joining is much more complicated, but incredibly powerful.










