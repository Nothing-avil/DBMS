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
2  VALUES (1, 'Amit', 'Delhi', '214213', 21);

1 row created.
SQL> INSERT INTO student VALUES (2, 'Kumar', 'Bombay', ' ', 25);

1 row created.

SQL> INSERT INTO student VALUES (3, 'Kshitij', 'Madras', '110101', 16);

1 row created.

SQL> INSERT INTO student VALUES (4, 'Puneet', 'Calcutta', ' ', 18);

1 row created.

SQL> INSERT INTO student VALUES(5, 'Rohit', 'Delhi', '502207', 19);                           

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
	 1 Amit 	   Delhi	214213		 21
	 2 Kumar	   Bombay			 25
	 3 Kshitij	   Madras	110101		 16
	 4 Puneet	   Calcutta			 18
	 5 Rohit	   Delhi	502207		 19
	 6 Karnal	   Dehradun			 28
	 7 Shweta	   Dehradun	98102		 23
	 8 Mohit	   Bombay	12434		 22
	 9 Pankaj	   Bombay			 17
	10 Parul	   dELhi	76312		 24
	11 Rohit	   Baroda	12131		 29

11 rows selected.

 Show names of all students living in Delhi.
      SQL> select Name from student where City= 'Delhi';

NAME
---------------
Amit
Rohit

 Show record of all student whose name starts with “A”.
  SQL> select * from student where Name like 'A%';

    ROLLNO NAME 	   CITY 	PINCODE 	AGE
---------- --------------- ------------ -------- ----------
	 1 Amit 	   Delhi	214213		 21


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
	 1 Amit 	   Delhi	214213		 21
	 5 Rohit	   Delhi	502207		 19
	 8 Mohit	   Bombay	12434		 22
	11 Rohit	   Baroda	12131		 29


 Show record of all student whose name contains “t”.
      SQL> select * from student where Name like '%t%';

    ROLLNO NAME 	   CITY 	PINCODE 	AGE
---------- --------------- ------------ -------- ----------
	 1 Amit 	   Delhi	214213		 21
	 3 Kshitij	   Madras	110101		 16
	 4 Puneet	   Calcutta			 18
	 5 Rohit	   Delhi	502207		 19
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
Delhi
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
	 5 Rohit	   Delhi	502207		 19
	 8 Mohit	   Bombay	12434		 22
	 9 Pankaj	   Bombay			 17

6 rows selected.

 Show records of all those student who are not living in Dehradun.
      SQL> select * from student where City != 'Dehradun';

    ROLLNO NAME 	   CITY 	PINCODE 	AGE
---------- --------------- ------------ -------- ----------
	 1 Amit 	   Delhi	214213		 21
	 2 Kumar	   Bombay			 25
	 3 Kshitij	   Madras	110101		 16
	 4 Puneet	   Calcutta			 18
	 5 Rohit	   Delhi	502207		 19
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
delhi
bombay
madras
calcutta
delhi
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
AMIT		delhi
KUMAR		bombay
KSHITIJ 	madras
PUNEET		calcutta
ROHIT		delhi
KARNAL		dehradun
SHWETA		dehradun
MOHIT		bombay
PANKAJ		bombay
PARUL		delhi
ROHIT		baroda

11 rows selected.

 Show all records in uppercase
	SQL> select RollNo, upper(Name), upper(City), pincode, age from student;

    ROLLNO UPPER(NAME)	   UPPER(CITY)	PINCODE 	AGE
---------- --------------- ------------ -------- ----------
	 1 AMIT 	   DELHI	214213		 21
	 2 KUMAR	   BOMBAY			 25
	 3 KSHITIJ	   MADRAS	110101		 16
	 4 PUNEET	   CALCUTTA			 18
	 5 ROHIT	   DELHI	502207		 19
	 6 KARNAL	   DEHRADUN			 28
	 7 SHWETA	   DEHRADUN	98102		 23
	 8 MOHIT	   BOMBAY	12434		 22
	 9 PANKAJ	   BOMBAY			 17
	10 PARUL	   DELHI	76312		 24
	11 ROHIT	   BARODA	12131		 29

11 rows selected.

	
 Display those records which do not have pin code.
	    SQL> select * from student where pincode=' '; 

    ROLLNO NAME 	   CITY 	PINCODE 	AGE
---------- --------------- ------------ -------- ----------
	 2 Kumar	   Bombay			 25
	 4 Puneet	   Calcutta			 18
	 6 Karnal	   Dehradun			 28
	 9 Pankaj	   Bombay			 17


	    
8. Insert the following data further into the same table.
Roll No Name City Pincode Age
12 Gaurav Rampur 312125
Manish 314136
14 Aviral 319143 29
15 Gwaliar 313149 25
	    
    SQL> INSERT INTO student VALUES(12, 'Gaurav', 'Rampur','312125', '');
	1 row created.
    SQL> INSERT INTO student VALUES(NULL, 'Manish','','314136',NULL);
	1 row created.
    SQL> INSERT INTO student VALUES(14, 'Aviral','','319143',29);
	1 row created.
    SQL> INSERT INTO student VALUES(15, '', 'Gwaliar' , '313149', 25);
	1 row created.
	    
9. Write queries for the following :-
(i) Assign Roll No. “13” to Manish.
	SQL> update student set Rollno=13 where Name='Manish';
	1 row updated.

(ii) Assign the name “Abhijeet” to Roll No. 15
	SQL> update student set Name='Abhijeet' where RollNo=15;
	1 row updated.
		
(iii) Set the cities of Roll No. 13 & 14 to “Meerut”
	SQL> update student set City='Meerut' where Rollno=13 or RollNO=14;
	2 rows updated.

(iv) Increase all age by 3 years.
	SQL> update student set Age= Age+3;
	15 rows updated.

(v) Set the age of all students living in Meerut to “25”.
	SQL> update student set Age=25 where City='Meerut';
	2 rows updated.
10. Add a new column named “Balance”, type number to the Students table.
	SQL> alter table student add(
	  2  Balance number);
	Table altered.
	
	SQL> desc student;
	 Name					   Null?    Type
	 ----------------------------------------- -------- ----------------------------
	 ROLLNO 					    NUMBER(6)
	 NAME						    VARCHAR2(15)
	 CITY						    VARCHAR2(12)
	 PINCODE					    VARCHAR2(8)
	 AGE						    NUMBER(2)
	 BALANCE					    NUMBER

11. Set the balance of all students to Rs. 20,000/-. See All records. Commit.
	SQL> update student set Balance=20000;
	15 rows updated.
	
	SQL> select * from student;
	
	    ROLLNO NAME 	   CITY 	PINCODE 	AGE    BALANCE
	---------- --------------- ------------ -------- ---------- ----------
		 1 Amit 	   Delhi	214213		 24	 20000
		 2 Kumar	   Bombay			 28	 20000
		 3 Kshitij	   Madras	110101		 19	 20000
		 4 Puneet	   Calcutta			 21	 20000
		 5 Rohit	   Delhi	502207		 22	 20000
		 6 Karnal	   Dehradun			 31	 20000
		 7 Shweta	   Dehradun	98102		 26	 20000
		 8 Mohit	   Bombay	12434		 25	 20000
		 9 Pankaj	   Bombay			 20	 20000
		10 Parul	   dELhi	76312		 27	 20000
		11 Rohit	   Baroda	12131		 32	 20000
	
	    ROLLNO NAME 	   CITY 	PINCODE 	AGE    BALANCE
	---------- --------------- ------------ -------- ---------- ----------
		12 Gaurav	   Rampur	312125			 20000
		13 Manish	   Meerut	314136		 25	 20000
		14 Aviral	   Meerut	319143		 25	 20000
		15 Abhijeet	   Gwaliar	313149		 28	 20000
	
	15 rows selected.
	
	SQL> commit;
	
	Commit complete.

12. Increase the balance by Rs. 500/- for all Bombay & Delhi students. See All records. Commit.
	SQL> update student set Balance= Balance+500 where City='Bombay' or City='Delhi';
	5 rows updated.
	
	SQL> select * from student;
	
	    ROLLNO NAME 	   CITY 	PINCODE 	AGE    BALANCE
	---------- --------------- ------------ -------- ---------- ----------
		 1 Amit 	   Delhi	214213		 24	 20500
		 2 Kumar	   Bombay			 28	 20500
		 3 Kshitij	   Madras	110101		 19	 20000
		 4 Puneet	   Calcutta			 21	 20000
		 5 Rohit	   Delhi	502207		 22	 20500
		 6 Karnal	   Dehradun			 31	 20000
		 7 Shweta	   Dehradun	98102		 26	 20000
		 8 Mohit	   Bombay	12434		 25	 20500
		 9 Pankaj	   Bombay			 20	 20500
		10 Parul	   dELhi	76312		 27	 20000
		11 Rohit	   Baroda	12131		 32	 20000
	
	    ROLLNO NAME 	   CITY 	PINCODE 	AGE    BALANCE
	---------- --------------- ------------ -------- ---------- ----------
		12 Gaurav	   Rampur	312125			 20000
		13 Manish	   Meerut	314136		 25	 20000
		14 Aviral	   Meerut	319143		 25	 20000
		15 Abhijeet	   Gwaliar	313149		 28	 20000
	
	15 rows selected.
	
	SQL> commit;
	Commit complete.
		
13. Show the total balance amount of all students.
	SQL> select sum(Balance) from student;
	SUM(BALANCE)
	------------
	      302500
		
14. Show the maximum balance.
	SQL> select max(Balance) from student;
	MAX(BALANCE)
	------------
	       20500
		
15. Increase the size of “balance” column to 10.
	SQL> alter table Student modify Balance number(10);
	alter table Student modify Balance number(10)
	                           *
	ERROR at line 1:
	ORA-01440: column to be modified must be empty to decrease precision or scale
	
16. Reduce the size of city to “10”
	SQL> alter table Student modify City varchar(10);
	Table altered.

17. Create a new table “student2” as a copy of Students with all rows from Students table.
	SQL> create table student2 as select * from student;
	Table created.

18. Show the records & structure of student2 table.
	SQL> select * from student2;
	
	    ROLLNO NAME 	   CITY       PINCODE	      AGE    BALANCE
	---------- --------------- ---------- -------- ---------- ----------
		 1 Amit 	   Delhi      214213	       24      20500
		 2 Kumar	   Bombay		       28      20500
		 3 Kshitij	   Madras     110101	       19      20000
		 4 Puneet	   Calcutta		       21      20000
		 5 Rohit	   Delhi      502207	       22      20500
		 6 Karnal	   Dehradun		       31      20000
		 7 Shweta	   Dehradun   98102	       26      20000
		 8 Mohit	   Bombay     12434	       25      20500
		 9 Pankaj	   Bombay		       20      20500
		10 Parul	   dELhi      76312	       27      20000
		11 Rohit	   Baroda     12131	       32      20000
	
	    ROLLNO NAME 	   CITY       PINCODE	      AGE    BALANCE
	---------- --------------- ---------- -------- ---------- ----------
		12 Gaurav	   Rampur     312125		       20000
		13 Manish	   Meerut     314136	       25      20000
		14 Aviral	   Meerut     319143	       25      20000
		15 Abhijeet	   Gwaliar    313149	       28      20000
	
	15 rows selected.
	
	SQL> desc student2;
	 Name					   Null?    Type
	 ----------------------------------------- -------- ----------------------------
	 ROLLNO 					    NUMBER(6)
	 NAME						    VARCHAR2(15)
	 CITY						    VARCHAR2(10)
	 PINCODE					    VARCHAR2(8)
	 AGE						    NUMBER(2)
	 BALANCE					    NUMBER

19. Delete the records of those students from “student2” table who are greater or equal to 25 years.
	SQL> delete from student2 where Age>=25;
	9 rows deleted.

20. Show all records of student2 table.
	SQL> select * from student2;

    ROLLNO NAME 	   CITY       PINCODE	      AGE    BALANCE
---------- --------------- ---------- -------- ---------- ----------
	 1 Amit 	   Delhi      214213	       24      20500
	 3 Kshitij	   Madras     110101	       19      20000
	 4 Puneet	   Calcutta		       21      20000
	 5 Rohit	   Delhi      502207	       22      20500
	 9 Pankaj	   Bombay		       20      20500
	12 Gaurav	   Rampur     312125		       20000

6 rows selected.

21. Change the name of student2 to “Newstudent”
	SQL> alter table student2 rename to Newstudent;
	Table altered.

22. Delete all records from “Newstudent” using truncate. Do not use delete.
22(a) See the records of “Newstudent” .
	SQL> truncate table Newstudent;
	Table truncated.
	
	SQL> select * from Newstudent;
	no rows selected

22(b) Rollback and see records again.
	SQL> rollback;
	Rollback complete.
	
	SQL> select * from Newstudent;
	no rows selected

23. Drop the “Newstudent” table.
	SQL> drop table Newstudent;
	Table dropped.

24. Again create the “Newstudent” table similar to Students table but this time without any records,
copy only the structure. See the records and structure of “Newstudent” table.
	SQL> create table Newstudent as select * from student where 0>1;
	Table created.
	
	SQL> select * from Newstudent;
	
	no rows selected
	
	SQL> desc Newstudent;
	 Name					   Null?    Type
	 ----------------------------------------- -------- ----------------------------
	 ROLLNO 					    NUMBER(6)
	 NAME						    VARCHAR2(15)
	 CITY						    VARCHAR2(10)
	 PINCODE					    VARCHAR2(8)
	 AGE						    NUMBER(2)
	 BALANCE					    NUMBER
		
25. Create a new table named “MCA” with only three columns RollNo, Name & balance from
“Students” table along with its data. See the records and structure of “MCA” table.

	SQL> create table BCA as select ROLLNO, NAME, BALANCE FROM student;
	Table created.
	
	SQL> select * from BCA;
	
	    ROLLNO NAME 	      BALANCE
	---------- --------------- ----------
		 1 Amit 		20500
		 2 Kumar		20500
		 3 Kshitij		20000
		 4 Puneet		20000
		 5 Rohit		20500
		 6 Karnal		20000
		 7 Shweta		20000
		 8 Mohit		20500
		 9 Pankaj		20500
		10 Parul		20000
		11 Rohit		20000
	
	    ROLLNO NAME 	      BALANCE
	---------- --------------- ----------
		12 Gaurav		20000
		13 Manish		20000
		14 Aviral		20000
		15 Abhijeet		20000
	
	15 rows selected.
	
	SQL> desc BCA;
	 Name					   Null?    Type
	 ----------------------------------------- -------- ----------------------------
	 ROLLNO 					    NUMBER(6)
	 NAME						    VARCHAR2(15)
	 BALANCE					    NUMBER
