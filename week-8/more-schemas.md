#Assignment 8.5 More Schemas 


##Release 2: Create a One-to-one Schema

####Consider a situation in which you would use a one-to-one relationship. Then, create your own one-to-one schema using Schema Designer.  Each table should have at least four fields. 

![one-to-one relationship](https://github.com/AndyVegas/phase-0/blob/master/week-8/imgs/release-2.png "one-to-one relationship schema")

####Explain why this relationship is a one-to-one to the best of your ability:
>I have chosen a jail situation for my database/tables here, and assuming every cell houses only one prisoner would make this a one-to-one relationship.  The cell ID will only correspond to one prisoner ID, until that prisoner ID moves to a new cell ID.


##Release 3: Many to Many Relationships

####Many-to-many relationships are common and relatively easy to understand in principle although they are more difficult to implement in practice.

####For example, consider students and challenges. A challenge is solved by many students, and students have many challenges. (Other examples of this are instructors and courses - instructors teach many courses and courses are taught by various instructors).

####To model a many-to-many relationship, two distinct tables are connected by a join table. A join table connects the two independent tables by keeping track of the two ids (foreign keys).

![many-to-many relationship](https://github.com/AndyVegas/phase-0/blob/master/week-8/imgs/release-3.png "many-to-many relationship schema")


##Release 4: Refactor

####Consider a grocery list. If you think about it, a grocery list has many items. Items can belong to many different grocery lists.

####Model the relationship between grocery_lists and items using Schema Designer.  Each table should have at least four fields in each. You should also model the join table. 

![grocery list](https://github.com/AndyVegas/phase-0/blob/master/week-8/imgs/release-4.png "grocery_lists and items schema")


##Release 6: Reflect

**What is a one-to-one database?  When would you use a one-to-one database? (Think generally, not in terms of the example you created).**

>In a relational database, a one-to-one relationship exists when one row in a table may be linked with only one row in another table and vice versa. In simple business terms, imagine that every department has one manager, and, conversely, each manager is assigned to one department.  This would not necessarily hold true if each department had several managers.  Perhaps a better example would be: A country has only one capital city, and a capital city is the capital of only one country.

**What is a many-to-many database?  When would you use a many-to-many database? (Think generally, not in terms of the example you created).**

>A many-to-many database is more common and useful in the programming world. Some real world examples: 
* An author can write several books, and a book can be written by several authors
* Students are enrolled in many courses; each course has many students.
* Doctors have many patients; patients have many doctors.
* Customers have many bank accounts; bank accounts might belong to more than one customer.

**What is confusing about database schemas? What makes sense?**
>So far not much is confusing.  The SQL language seems even more straightforward than Ruby.  The relationships above were difficult to conceptualize at first, but with so many real world examples, I think I'm catching on.  Now to analytically tie this into programming...