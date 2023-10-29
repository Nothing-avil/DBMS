Practical List 6 –Date Time Etc
1. Logon to Oracle using your User Name
  SQL> conn
Enter user-name: CSJ59
Enter password: 
Connected.

2. See list of tables by using “Tab / cat” tables.
  SQL> select * from tab;

TNAME			       TABTYPE	CLUSTERID
------------------------------ ------- ----------
DEPARTMENT		       TABLE
DUPLICATE		       TABLE
EMP2			       TABLE
EMPLOYEE		       TABLE
EMPLOYEE2		       TABLE
NEWEMP			       TABLE
ORDERS			       TABLE
SAMPLE			       TABLE
STUDENT 		       TABLE

9 rows selected.

3. Create a table “Employee” with following attributes :
EmpCode Number
EmpName Varchar
EmpCity Varchar
DOB Date (date of Birth)
DOJ Date (date of Joining)
Salary Number

  SQL> create table EMPLOYEE(empcode number,
  2  empname varchar2(25),
  3  empcity varchar2(25),
  4  dob Date,
  5  DOJ Date,
  6  salary number);

Table created.


4. Display the structure of table
  SQL> desc employee;
 Name		   Null?    Type
 ----------------- -------- ------------
 EMPCODE		    NUMBER
 EMPNAME		    VARCHAR2(25)
 EMPCITY		    VARCHAR2(25)
 DOB			    DATE
 DOJ			    DATE
 SALARY 		    NUMBER

5. Insert the following data into the table (Convert Month No into Month Name like 3 = MAR)
EmpCode EmpName EmpCity DOB DOJ Salary
1 Yogesh Delhi 1/11/75 1/1/05 12000
2 Dinesh Delhi 22/5/78 Current Date 6000
3 Sheena Mumbai 16/6/89 1/6/99 50000
5 Sundar Delhi 17/8/82 Current Date 4400
   SQL> insert into employee values(1, 'Yogesh', 'Delhi', '1/Nov/75','1/Jan/05', 12000);

1 row created.

SQL> insert into employee values(2, 'Dinesh', 'Delhi', '22/May/78', sysdate, 6000);

1 row created.

SQL> insert into employee values(3, 'Sheena', 'Mumbai', '16/JUN/89', '1/JUN/99', 50000);

1 row created.

SQL> insert into employee values(5, 'Sundar', 'Delhi', '17/AUG/82', sysdate, 4400);

1 row created.

6. Execute the following queries and note the output:
a. Select Empname, DOB from employee.
  SQL> Select Empname, DOB from employee;

EMPNAME                   DOB
------------------------- ----------
Yogesh                    01 11 1975
Dinesh                    22 05 1978
Sheena                    16 06 1989
Sundar                    17 08 1982

b. Select Empname, DOB, sysdate from employee.
  SQL> Select Empname, DOB, sysdate from employee;

EMPNAME                   DOB        SYSDATE
------------------------- ---------- ----------
Yogesh                    01 11 1975 25 10 2023
Dinesh                    22 05 1978 25 10 2023
Sheena                    16 06 1989 25 10 2023
Sundar                    17 08 1982 25 10 2023

c. Select Empname, DOB , DOB + 15 from employees.
  SQL> Select Empname, DOB , DOB + 15 from employee;

EMPNAME                   DOB        DOB+15
------------------------- ---------- ----------
Yogesh                    01 11 1975 16 11 1975
Dinesh                    22 05 1978 06 06 1978
Sheena                    16 06 1989 01 07 1989
Sundar                    17 08 1982 01 09 1982

d. Select Empname, DOB , DOB - 3 from employees.
 SQL> Select Empname, DOB , DOB - 3 from employee;

EMPNAME                   DOB        DOB-3
------------------------- ---------- ----------
Yogesh                    01 11 1975 29 10 1975
Dinesh                    22 05 1978 19 05 1978
Sheena                    16 06 1989 13 06 1989
Sundar                    17 08 1982 14 08 1982

e. Select Empname, DOB, TO_CHAR(dob,'DD MM YYYY') from employee.
  SQL> Select Empname, DOB, TO_CHAR(dob,'DD MM YYYY') from employee;

EMPNAME                   DOB       TO_CHAR(DO
------------------------- --------- ----------
Yogesh                    01-NOV-75 01 11 1975
Dinesh                    22-MAY-78 22 05 1978
Sheena                    16-JUN-89 16 06 1989
Sundar                    17-AUG-82 17 08 1982
  
f. Select Empname, DOB, TO_CHAR(dob,'Day MONTH Year') from employee.
  EMPNAME                   DOB       TO_CHAR(DOB,'DAYMONTHYEAR')
------------------------- --------- --------------------------------------------------------------------------------------------------------------------
Yogesh                    01-NOV-75 Saturday  NOVEMBER  Nineteen Seventy-Five
Dinesh                    22-MAY-78 Monday    MAY       Nineteen Seventy-Eight
Sheena                    16-JUN-89 Friday    JUNE      Nineteen Eighty-Nine
Sundar                    17-AUG-82 Tuesday   AUGUST    Nineteen Eighty-Two
  
g. Select Empname, DOB, TO_CHAR(dob,'Day MON Year DD MM YY') from employee
  
SQL> Select Empname, DOB, TO_CHAR(dob,'Day MON Year DD MM YY') from employee;

EMPNAME                   DOB       TO_CHAR(DOB,'DAYMONYEARDDMMYY')
------------------------- --------- -----------------------------------------------------------------------------------------------------
Yogesh                    01-NOV-75 Saturday  NOV Nineteen Seventy-Five 01 11 75
Dinesh                    22-MAY-78 Monday    MAY Nineteen Seventy-Eight 22 05 78
Sheena                    16-JUN-89 Friday    JUN Nineteen Eighty-Nine 16 06 89
Sundar                    17-AUG-82 Tuesday   AUG Nineteen Eighty-Two 17 08 82
  
h. Select Empname, DOB, TO_CHAR(dob,'DD DD MM MM YY YYYY YYYY') from employee.
  SQL> Select Empname, DOB, TO_CHAR(dob,'DD DD MM MM YY YYYY YYYY') from employee;

EMPNAME                   DOB       TO_CHAR(DOB,'DDDDMMMMYYY'
------------------------- --------- ------------------------
Yogesh                    01-NOV-75 01 01 11 11 75 1975 1975
Dinesh                    22-MAY-78 22 22 05 05 78 1978 1978
Sheena                    16-JUN-89 16 16 06 06 89 1989 1989
Sundar                    17-AUG-82 17 17 08 08 82 1982 1982
  
i. Select Empname, DOB, TO_CHAR(dob,'DDsp MMsp YYYYsp') from employee.
  SQL> Select Empname, DOB, TO_CHAR(dob,'DDsp MMsp YYYYsp') from employee;

EMPNAME                   DOB       TO_CHAR(DOB,'DDSPMMSPYYYYSP')
------------------------- --------- --------------------------------------------------------------
Yogesh                    01-NOV-75 ONE ELEVEN ONE THOUSAND NINE HUNDRED SEVENTY-FIVE
Dinesh                    22-MAY-78 TWENTY-TWO FIVE ONE THOUSAND NINE HUNDRED SEVENTY-EIGHT
Sheena                    16-JUN-89 SIXTEEN SIX ONE THOUSAND NINE HUNDRED EIGHTY-NINE
Sundar                    17-AUG-82 SEVENTEEN EIGHT ONE THOUSAND NINE HUNDRED EIGHTY-TWO
  
j. Select Empname, DOB, TO_CHAR(dob,'DDspth MMspth YYYYspth') from employee.
  SQL> Select Empname, DOB, TO_CHAR(dob,'DDspth MMspth YYYYspth') from employee;

EMPNAME                   DOB       TO_CHAR(DOB,'DDSPTHMMSPTHYYYYSPTH')
------------------------- --------- --------------------------------------------------------------------
Yogesh                    01-NOV-75 FIRST ELEVENTH ONE THOUSAND NINE HUNDRED SEVENTY-FIFTH
Dinesh                    22-MAY-78 TWENTY-SECOND FIFTH ONE THOUSAND NINE HUNDRED SEVENTY-EIGHTH
Sheena                    16-JUN-89 SIXTEENTH SIXTH ONE THOUSAND NINE HUNDRED EIGHTY-NINTH
Sundar                    17-AUG-82 SEVENTEENTH EIGHTH ONE THOUSAND NINE HUNDRED EIGHTY-SECOND
  
k. Select Empname, DOB, TO_CHAR(dob,'DDsp MMsp YYYYsp') from employee.
  SQL>  Select Empname, DOB, TO_CHAR(dob,'DDsp MMsp YYYYsp') from employee;

EMPNAME                   DOB       TO_CHAR(DOB,'DDSPMMSPYYYYSP')
------------------------- --------- --------------------------------------------------------------
Yogesh                    01-NOV-75 ONE ELEVEN ONE THOUSAND NINE HUNDRED SEVENTY-FIVE
Dinesh                    22-MAY-78 TWENTY-TWO FIVE ONE THOUSAND NINE HUNDRED SEVENTY-EIGHT
Sheena                    16-JUN-89 SIXTEEN SIX ONE THOUSAND NINE HUNDRED EIGHTY-NINE
Sundar                    17-AUG-82 SEVENTEEN EIGHT ONE THOUSAND NINE HUNDRED EIGHTY-TWO
  
l. Select Empname, DOB, TO_CHAR(dob,'DD MM YYYY HH MI SS') from employee.
  SQL> Select Empname, DOB, TO_CHAR(dob,'DD MM YYYY HH MI SS') from employee;

EMPNAME                   DOB       TO_CHAR(DOB,'DDMMYY'
------------------------- --------- -------------------
Yogesh                    01-NOV-75 01 11 1975 12 00 00
Dinesh                    22-MAY-78 22 05 1978 12 00 00
Sheena                    16-JUN-89 16 06 1989 12 00 00
Sundar                    17-AUG-82 17 08 1982 12 00 00
  
m. Select Empname, DOB, TO_CHAR(dob,’HH MI SS’) from employee.
  SQL> Select Empname, DOB, TO_CHAR(dob,’HH MI SS’) from employee;

EMPNAME                   DOB       TO_CHAR(
------------------------- --------- --------
Yogesh                    01-NOV-75 12 00 00
Dinesh                    22-MAY-78 12 00 00
Sheena                    16-JUN-89 12 00 00
Sundar                    17-AUG-82 12 00 00
  
n. Insert into employee values (4,’Amit’,’Meeurt’, ‘1-Jan-67’, ’21-Sep-04’,15000).
  SQL> Insert into employee values (4,'Amit','Meeurt', '1-Jan-67', '21-Sep-04',15000);

1 row created.
  
o. Select Empname, DOB, TO_CHAR(DOB,’DD MM YYYY’), TO_CHAR(DOJ,’DD MM YYYY’) from employee where Empcode=4.
  SQL>  Select Empname, DOB, TO_CHAR(DOB,’DD MM YYYY’), TO_CHAR(DOJ,’DD MM YYYY’) from employee where Empcode=4;

EMPNAME                   DOB       TO_CHAR(DO TO_CHAR(DO
------------------------- --------- ---------- ----------
Amit                      01-JAN-67 01 01 1967 21 09 2004
  
  In this query what is the full year for DOB and DOJ? (Is it 1967 or 2067 , 2004 or 1904)
  DOB = 1967
  DOJ = 2004
  
p. Insert a record with DOB = 1674 , and DOJ = 1734.
  SQL> Insert into employee values (6,'Sohel','Meeurt', '1-Jan-1674', '21-Sep-1734',17000);

1 row created.
  
q. Display this record with full year in DOB and DOJ (as in query “O”)
  SQL> Select Empname, DOB, TO_CHAR(DOB,’DD MM YYYY’), TO_CHAR(DOJ,’DD MM YYYY’) from employee where Empcode=6;

EMPNAME                   DOB       TO_CHAR(DO TO_CHAR(DO
------------------------- --------- ---------- ----------
Sohel                     01-JAN-74 01 01 1674 21 09 1734
  
7. Write queries for the following:
a. Show all records
  SQL> select * from employee;

   EMPCODE EMPNAME                   EMPCITY                   DOB       DOJ           SALARY
---------- ------------------------- ------------------------- --------- --------- ----------
         1 Yogesh                    Delhi                     01-NOV-75 01-JAN-05      12000
         2 Dinesh                    Delhi                     22-MAY-78 29-OCT-23       6000
         3 Sheena                    Mumbai                    16-JUN-89 01-JUN-99      50000
         5 Sundar                    Delhi                     17-AUG-82 29-OCT-23       4400
         4 Amit                      Meeurt                    01-JAN-67 21-SEP-04      15000
         6 Sohel                     Meeurt                    01-JAN-74 21-SEP-34      17000

6 rows selected.
  
b. Show names and Salary of all employees.
  SQL> select empname, salary from employee;

EMPNAME                       SALARY
------------------------- ----------
Yogesh                         12000
Dinesh                          6000
Sheena                         50000
Sundar                          4400
Amit                           15000
Sohel                          17000

6 rows selected.
  
c. Display the highest salary
  SQL> select max(salary) from employee;

MAX(SALARY)
-----------
      50000
  
d. Display the lowest salary
  SQL> select min(salary) from employee;

MIN(SALARY)
-----------
       4400
  
e. Show the total number of records
  SQL> select count(*) from employee;

  COUNT(*)
----------
         6

  
f. Display the emp name, actual salary and salary with 15% increment
  SQL> select empname, salary, (salary+0.15*salary) as Increased from employee;

EMPNAME                       SALARY  INCREASED
------------------------- ---------- ----------
Yogesh                         12000      13800
Dinesh                          6000       6900
Sheena                         50000      57500
Sundar                          4400       5060
Amit                           15000      17250
Sohel                          17000      19550

6 rows selected.
  
g. Display all records in following format:
o The Salary of Yogesh is 12000 and he belongs to Delhi
o The Salary of Dinesh is 6000 and he belongs to Delhi.
 -------------- So on for all records --------------------
  SQL> select ('The Salary of ' || empname || ' is ' || salary || ' and he belongs to ' || empcity) as statement from employee;

STATEMENT
-------------------------------------------------------------------------------------------------------------------------------
The Salary of Yogesh is 12000 and he belongs to Delhi
The Salary of Dinesh is 6000 and he belongs to Delhi
The Salary of Sheena is 50000 and he belongs to Mumbai
The Salary of Sundar is 4400 and he belongs to Delhi
The Salary of Amit is 15000 and he belongs to Meeurt
The Salary of Sohel is 17000 and he belongs to Meeurt

6 rows selected.
  
h. Display the total number of characters in all employee names
i. Display all employee names in Capital letters
j. Display all employee city in Small letters
k. Display all employee names in Initial capital letters
l. Display only the current date
m. Display only the current time
n. Display the current date and time
o. Display only the current year
p. Display only the current Month
q. Display all records in following format:
o The date of birth of Yogesh is 1 November Ninenteen Seventy Five
r. Display the total number of months an employee is working
s. Display the name and age of each employee (Do not show DOB)
t. Display the total experience of all employees in years.
u. Display the full 4 digit birth year of all employee.
v. Enter a record with your detail in the table with your actual DOB.
w. Display on which day (Mon Tue Wed Etc) you were born.
x. Display list of all employees who were born after your DOB.
y. Delete your record.
z. Again enter your detail record and this time store your Birth time also.
aa. Display names, DOB , Time of Birth , age of all records.
