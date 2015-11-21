#Release 2
![one-to-one schema](/week-8/imgs/one-to-one.png "schema")

#Release 4
![many-to-many schema](/week-8/imgs/many-to-many.png "schema")

#Reflection
##What is a one-to-one database?
It is when every attribute is linked directly to one other attribute as a pair. All rows in table A will match exactly one value in table B, and vice versa, such as capital cities and countries, or such as people and their unique fingerprint.

##When would you use a one-to-one database? (Think generally, not in terms of the example you created).
You use one-to-one databases when you want to create separate tables for simplicity and scale. Generally there's nothing to prevent merging to tables that have a 1:1 relationship together into a bigger table, but big tables get messy.

##What is a many-to-many database?
It is when each row in table A can match to many rows in the connected table B, and vice versa each row in table B may match to many rows in table A.

##When would you use a many-to-many database? (Think generally, not in terms of the example you created).
Many-to-many databases are probably the most common. You'll need them whenever you have multiple users interacting with the same types of objects. For example in a forum, you would probably have a table for threads/conversations, a table for users, and a table for comments. Users can have many comments, and threads can have many users (and threads can also belong to parent threads or topics, which would may have its own table structure in your database).

##What is confusing about database schemas? What makes sense?
I would say what's confusing is that I know there isn't necessarily a perfect schema for any given scenario, and so the more practice I get building actually databases, the more I'll come to appreciate the tradeoffs between different choies in schema design.
