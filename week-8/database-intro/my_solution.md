<!-- CREATE TABLE states(id smallint, state_name varchar(30), population_density float, population int, region_id smallint);
CREATE TABLE regions(id smallint, region_name varchar(255));
 -->

##Release 5: SELECTing data from a database


#### 1. Select all data for all states.
```
sqlite> SELECT * FROM states;
```
#### 2. Select all data for all regions.
```
sqlite> SELECT * FROM regions;
```
#### 3. Select the state_name and population for all states.
```
sqlite> SELECT state_name, population FROM states;
```
#### 4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.
```
sqlite> SELECT state_name, population FROM states ORDER BY population DESC;
```
#### 5. Select the state_name for the states in region 7.
```
sqlite> SELECT state_name FROM states WHERE region_id = 7;
```
#### 6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.
```
sqlite> SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;
```
#### 7. Select the state_name for states with a population between 1 million and 1.5 million people.
```
sqlite> SELECT state_name FROM states WHERE population BETWEEN 1000000 AND 1500000;
```
#### 8. Select the state_name and region_id for states ordered by region in ascending order.
```
sqlite> SELECT state_name, region_id FROM states ORDER BY region_id ASC;
```
#### 9. Select the region_name for the regions with "Central" in the name.
```
sqlite> SELECT region_name FROM regions WHERE region_name LIKE '%Central';
```
#### 10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).
```
sqlite> SELECT regions.region_name, states.state_name FROM states INNER JOIN regions ORDER BY region_id ASC;
```

![Schema two table screen shot](https://github.com/AndyVegas/phase-0/blob/master/week-8/database-intro/schema_design.png "Schema screen shot")


##Release 7: Reflect

**What are databases for?**

Databases are everywhere.  They drive the mobile applications and the websites we use everyday.  Amazon uses databases to store information or data on products they sell.  Amazon stores customer order information with details such as shipping and billing addresses and customer payment information.  Customers can also save wish list containing gift ideas for friends and relatives on a database.  Facebook stores information about user's friendships, likes, private messages, and wall posts all in a database.  FedEx has location data for every package they deliver.  They use tracking numbers to retrieve the current location from a database.  All of FedEx depots and locations are in the database too.  Sports leagues around the world, like the Premier League in the UK, use databases to keep track of teams, players, matches, and other statistics.


**What is a one-to-many relationship?**

In a relational database, a one-to-many relationship exists when one row in table A may be linked with many rows in table B, but one row in table B is linked to only one row in table A. A mother may have many children, but a child has only one mother.


**What is a primary key? What is a foreign key? How can you determine which is which?**

A primary key uniquely identifies a record in the table.  A foreign key is a field in the table that is primary key in another table.  We can have only one Primary key in a table.	We can have more than one foreign key in a table.


**How can you select information out of a SQL database? What are some general guidelines for that?**

Lines of SQL code unknown as a Statement or a Query.  A statement in SQL is like a sentence in English.  A query in SQL is like asking a question in English.  In general the syntax is much like English and best practices say you should put keywords, such as SELECT and FROM in all caps.  The asterisk, or the star character, means you want to bring all of the information in all of the tables, columns back.  AND and OR keywords can be used to chain conditions together.  !(Bang) also means "not" just like in Ruby and JS.   

