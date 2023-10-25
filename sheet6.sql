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

EMPNAME 		  DOB
------------------------- ----------
Yogesh			  01 11 0075
Dinesh			  22 05 0078
Sheena			  16 06 0089
Sundar			  17 08 0082

b. Select Empname, DOB, sysdate from employee.
  SQL> Select Empname, DOB, sysdate from employee;

EMPNAME 		  DOB	     SYSDATE
------------------------- ---------- ----------
Yogesh			  01 11 0075 25 10 2023
Dinesh			  22 05 0078 25 10 2023
Sheena			  16 06 0089 25 10 2023
Sundar			  17 08 0082 25 10 2023

c. Select Empname, DOB , DOB + 15 from employees.
  SQL> Select Empname, DOB , DOB + 15 from employee; 

EMPNAME 		  DOB	     DOB+15
------------------------- ---------- ----------
Yogesh			  01 11 0075 16 11 0075
Dinesh			  22 05 0078 06 06 0078
Sheena			  16 06 0089 01 07 0089
Sundar			  17 08 0082 01 09 0082

d. Select Empname, DOB , DOB - 3 from employees.
  SQL> Select Empname, DOB , DOB - 3 from employee; 

EMPNAME 		  DOB	     DOB-3
------------------------- ---------- ----------
Yogesh			  01 11 0075 29 10 0075
Dinesh			  22 05 0078 19 05 0078
Sheena			  16 06 0089 13 06 0089
Sundar			  17 08 0082 14 08 0082

e. Select Empname, DOB, TO_CHAR(dob,'DD MM YYYY') from employee.
  
f. Select Empname, DOB, TO_CHAR(dob,'Day MONTH Year') from employee.
g. Select Empname, DOB, TO_CHAR(dob,'Day MON Year DD MM YY') from employee
h. Select Empname, DOB, TO_CHAR(dob,'DD DD MM MM YY YYYY YYYY') from
employee.
i. Select Empname, DOB, TO_CHAR(dob,'DDsp MMsp YYYYsp') from employee.
j. Select Empname, DOB, TO_CHAR(dob,'DDspth MMspth YYYYspth') from employee.
k. Select Empname, DOB, TO_CHAR(dob,'DDsp MMsp YYYYsp') from employee.
l. Select Empname, DOB, TO_CHAR(dob,'DD MM YYYY HH MI SS') from employee.
m. Select Empname, DOB, TO_CHAR(dob,’HH MI SS’) from employee.
n. Insert into employee values (4,’Amit’,’Meeurt’, ‘1-Jan-67’, ’21-Sep-04’,15000).
o. Select Empname, DOB, TO_CHAR(DOB,’DD MM YYYY’), TO_CHAR(DOJ,’DD MM
YYYY’) from employee where Empcode=4. In this query what is the full year for DOB and
DOJ? (Is it 1967 or 2067 , 2004 or 1904)
p. Insert a record with DOB = 1674 , and DOJ = 1734.
q. Display this record with full year in DOB and DOJ (as in query “O”)
7. Write queries for the following:
a. Show all records
b. Show names and Salary of all employees
c. Display the highest salary
d. Display the lowest salary
e. Show the total number of records
f. Display the emp name, actual salary and salary with 15% increment
g. Display all records in following format:
o The Salary of Yogesh is 12000 and he belongs to Delhi
o The Salary of Dinesh is 6000 and he belongs to Delhi.
 -------------- So on for all records --------------------
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
