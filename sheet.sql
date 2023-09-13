1. Logon to Oracle using your User Name
  SQL> conn
Enter user-name: CSJ59
Enter password: 
Connected.

2. See list of tables.
  SQL> select * from tab;

TNAME			       TABTYPE	CLUSTERID
------------------------------ ------- ----------
DUPLICATE		       TABLE
EMP2			       TABLE
EMPLOYEE		       TABLE
NEWEMP			       TABLE

3. View the user name from dual.
  SQL> select user from dual;

USER
------------------------------
CSJ59


4. Create a table “Students” with following attributes :
Roll No Number 6
Name varchar 15
City varchar 12
Pincode varchar 8
Age Number 2

  SQL> create table student(
  2  RollNo number(6),      
  3  Name varchar(15),
  4  City varchar(12),
  5  Pincode varchar(8),
  6  Age number(2));

Table created.

5. Display the structure of table
  SQL> desc student;
 Name					   Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO 					    NUMBER(6)
 NAME						    VARCHAR2(15)
 CITY						    VARCHAR2(12)
 PINCODE					    VARCHAR2(8)
 AGE						    NUMBER(2)

  
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

SQL> INSERT INTO student (RollNo, Name, city, pincode, age)
2  VALUES (1, 'Amit', 'Dehli', '214213', 21);

1 row created.
SQL> INSERT INTO student VALUES (2, 'Kumar', 'Bombay', ' ', 25);

1 row created.

SQL> INSERT INTO student VALUES (3, 'Kshitij', 'Madras', '110101', 16);

1 row created.

SQL> INSERT INTO student VALUES (4, 'Puneet', 'Calcutta', ' ', 18);

1 row created.

SQL> INSERT INTO student VALUES(5, 'Rohit', 'Dehli', '502207', 19);                           

1 row created.

SQL> INSERT INTO student VALUES(6, 'Karnal', 'Dehradun', ' ', 28);

1 row created.

SQL> INSERT INTO student VALUES(7, 'Shweta', 'Dehradun', '98102', 23);

1 row created.

SQL> INSERT INTO student VALUES(8, 'Mohit', 'Bombay', '12434', 22);

1 row created.

SQL> INSERT INTO student VALUES(9, 'Pankaj', 'Bombay', ' ', 17);

1 row created.

SQL> INSERT INTO student VALUES(10, 'Parul', 'dELhi', '76312', 24);

1 row created.

SQL> INSERT INTO student VALUES(11, 'Rohit', 'Baroda', '12131', 29);

1 row created.

   
7. Write queries for the following outputs.
 Show all records
  SQL> select * from student;

    ROLLNO NAME 	   CITY 	PINCODE 	AGE
---------- --------------- ------------ -------- ----------
	 1 Amit 	   Dehli	214213		 21
	 2 Kumar	   Bombay			 25
	 3 Kshitij	   Madras	110101		 16
	 4 Puneet	   Calcutta			 18
	 5 Rohit	   Dehli	502207		 19
	 6 Karnal	   Dehradun			 28
	 7 Shweta	   Dehradun	98102		 23
	 8 Mohit	   Bombay	12434		 22
	 9 Pankaj	   Bombay			 17
	10 Parul	   dELhi	76312		 24
	11 Rohit	   Baroda	12131		 29

11 rows selected.

 Show names of all students living in Delhi.
      SQL> select Name from student where City= 'Dehli';

NAME
---------------
Amit
Rohit

 Show record of all student whose name starts with “A”.
  SQL> select * from student where Name like 'A%';

    ROLLNO NAME 	   CITY 	PINCODE 	AGE
---------- --------------- ------------ -------- ----------
	 1 Amit 	   Dehli	214213		 21


 Show record of all student whose second alphabet of name is “a”.
      SQL> select * from student where Name like '_a%';

    ROLLNO NAME 	   CITY 	PINCODE 	AGE
---------- --------------- ------------ -------- ----------
	 6 Karnal	   Dehradun			 28
	 9 Pankaj	   Bombay			 17
	10 Parul	   dELhi	76312		 24


 Show record of all student whose name ends with “it”.
      SQL> select * from student where Name like '%it';

    ROLLNO NAME 	   CITY 	PINCODE 	AGE
---------- --------------- ------------ -------- ----------
	 1 Amit 	   Dehli	214213		 21
	 5 Rohit	   Dehli	502207		 19
	 8 Mohit	   Bombay	12434		 22
	11 Rohit	   Baroda	12131		 29


 Show record of all student whose name contains “t”.
      SQL> select * from student where Name like '%t%';

    ROLLNO NAME 	   CITY 	PINCODE 	AGE
---------- --------------- ------------ -------- ----------
	 1 Amit 	   Dehli	214213		 21
	 3 Kshitij	   Madras	110101		 16
	 4 Puneet	   Calcutta			 18
	 5 Rohit	   Dehli	502207		 19
	 7 Shweta	   Dehradun	98102		 23
	 8 Mohit	   Bombay	12434		 22
	11 Rohit	   Baroda	12131		 29

7 rows selected.
      
 Show record of all student whose name contains “t” but not in end.
      SQL> select * from student where Name like '%t%_';

    ROLLNO NAME 	   CITY 	PINCODE 	AGE
---------- --------------- ------------ -------- ----------
	 3 Kshitij	   Madras	110101		 16
	 7 Shweta	   Dehradun	98102		 23


 Show records of all students having age greater than 25 & living in Dehradun.
      SQL> select * from student where Age>25 AND City='Dehradun';

    ROLLNO NAME 	   CITY 	PINCODE 	AGE
---------- --------------- ------------ -------- ----------
	 6 Karnal	   Dehradun			 28


 Show the list of all cities (names of cities should not be repeated)
      SQL> select distinct city from student;

CITY
------------
Dehradun
Bombay
Calcutta
dELhi
Baroda
Dehli
Madras

7 rows selected.

 Show the names students alphabetically in ascending order
  SQL> select Name from student order by name;

NAME
---------------
Amit
Karnal
Kshitij
Kumar
Mohit
Pankaj
Parul
Puneet
Rohit
Rohit
Shweta

11 rows selected.

 Show the records of those students which are either less than 20 year or they are living in
Bombay.
  SQL> select * from student where Age<20 or City= 'Bombay';

    ROLLNO NAME 	   CITY 	PINCODE 	AGE
---------- --------------- ------------ -------- ----------
	 2 Kumar	   Bombay			 25
	 3 Kshitij	   Madras	110101		 16
	 4 Puneet	   Calcutta			 18
	 5 Rohit	   Dehli	502207		 19
	 8 Mohit	   Bombay	12434		 22
	 9 Pankaj	   Bombay			 17

6 rows selected.

 Show records of all those student who are not living in Dehradun.
      SQL> select * from student where City != 'Dehradun';

    ROLLNO NAME 	   CITY 	PINCODE 	AGE
---------- --------------- ------------ -------- ----------
	 1 Amit 	   Dehli	214213		 21
	 2 Kumar	   Bombay			 25
	 3 Kshitij	   Madras	110101		 16
	 4 Puneet	   Calcutta			 18
	 5 Rohit	   Dehli	502207		 19
	 8 Mohit	   Bombay	12434		 22
	 9 Pankaj	   Bombay			 17
	10 Parul	   dELhi	76312		 24
	11 Rohit	   Baroda	12131		 29

9 rows selected.

 Display all names in uppercase.
      SQL> select upper(Name) from student;

UPPER(NAME)
---------------
AMIT
KUMAR
KSHITIJ
PUNEET
ROHIT
KARNAL
SHWETA
MOHIT
PANKAJ
PARUL
ROHIT

11 rows selected.


 Display all cities in lowercase.
  SQL> select lower(City) from student;

LOWER(CITY)
------------
dehli
bombay
madras
calcutta
dehli
dehradun
dehradun
bombay
bombay
delhi
baroda

11 rows selected.

 Display name in lowercase, cities in uppercase.
  SQL> select upper(Name),lower(City) from student;

UPPER(NAME)	LOWER(CITY)
--------------- ------------
AMIT		dehli
KUMAR		bombay
KSHITIJ 	madras
PUNEET		calcutta
ROHIT		dehli
KARNAL		dehradun
SHWETA		dehradun
MOHIT		bombay
PANKAJ		bombay
PARUL		delhi
ROHIT		baroda

11 rows selected.

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
