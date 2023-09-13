1. Logon to Oracle using your User Name
2. See list of tables.
3. View the user name from dual.
4. Create a table “Students” with following attributes :
Roll No Number 6
Name varchar 15
City varchar 12
Pincode varchar 8
Age Number 2
5. Display the structure of table
6. Insert the following data into the “Students” table (Enter as it is, take care of Null)
|Roll No |Name |City |Pincode |Age|
|1| Amit| Delhi| 214213| 21|
|2|Kumar| Bombay| |25|
|3| Kshitij| Madras |110101| 16|
|4| Puneet |Calcutta| |18|
|5| Rohit| Delhi| 502207 |19|
|6| Karnal| Dehradunv 28|
|7| Shweta| Dehradun| 98102 |23|
|8| Mohit| Bombay |12434 |22|
|9| Pankaj| Bombay| | 17|
|10| Parul| dELhi| 76312| 24|
|11| Rohit| Baroda| 12131| 29|
7. Write queries for the following outputs.
 Show all records
 Show names of all students living in Delhi.
 Show record of all student whose name starts with “A”.
 Show record of all student whose second alphabet of name is “a”.
 Show record of all student whose name ends with “it”.
 Show record of all student whose name contains “t”.
 Show record of all student whose name contains “t” but not in end.
 Show records of all students having age greater than 25 & living in Dehradun.
 Show the list of all cities (names of cities should not be repeated)
 Show the names students alphabetically in ascending order
 Show the records of those students which are either less than 20 year or they are living in
Bombay.
 Show records of all those student who are not living in Dehradun.
 Display all names in uppercase.
 Display all cities in lowercase.
 Display name in lowercase, cities in uppercase.
 Show all records in uppercase
 Display those records which do not have pin code.
8. Insert the following data further into the same table.
Roll No Name City Pincode Age
12 Gaurav Rampur 312125
Manish 314136
14 Aviral 319143 29
15 Gwaliar 313149 25
9. Write queries for the following :-
(i) Assign Roll No. “13” to Manish.
(ii) Assign the name “Abhijeet” to Roll No. 15
(iii) Set the cities of Roll No. 13 & 14 to “Meerut”
(iv) Increase all age by 3 years.
(v) Set the age of all students living in Meerut to “25”.
10. Add a new column named “Balance”, type number to the Students table.
11. Set the balance of all students to Rs. 20,000/-. See All records. Commit.
12. Increase the balance by Rs. 500/- for all Bombay & Delhi students. See All records. Commit.
13. Show the total balance amount of all students.
14. Show the maximum balance.
15. Increase the size of “balance” column to 10.
16. Reduce the size of city to “10”
17. Create a new table “student2” as a copy of Students with all rows from Students table.
18. Show the records & structure of student2 table.
19. Delete the records of those students from “student2” table who are greater or equal to 25 years.
20. Show all records of student2 table.
21. Change the name of student2 to “Newstudent”
22. Delete all records from “Newstudent” using truncate. Do not use delete.
22(a) See the records of “Newstudent” .
22(b) Rollback and see records again.
23. Drop the “Newstudent” table.
24. Again create the “Newstudent” table similar to Students table but this time without any records,
copy only the structure. See the records and structure of “Newstudent” table.
25. Create a new table named “MCA” with only three columns RollNo, Name & balance from
“Students” table along with its data. See the records and structure of “MCA” table.
