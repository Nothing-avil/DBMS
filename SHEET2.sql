1
SQL> connect
Enter user-name: CSJ59
Enter password: 
Connected.

2
SQL> select * from tab;

TNAME		    	   	   	   	     TABTYPE	CLUSTERID
------------------------------ ------- ----------
DUPLICATE		      	      	    TABLE

3
SQL> show user
USER is "CSJ59"

4
SQL> create table Employee(
  2  EmpCode Number,
  3  Name varchar2(6),
  4  Salary Number);

Table created.

5
SQL> desc Employee
 Name				 		 		 		 		 		 		 			   Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPCODE					    		 		 		 		 		 		 		 		 NUMBER
 NAME						   		 		 		 		 		 		 		 		     VARCHAR2(6)
 SALARY 	 		 		 		 		 		 		 	        				   NUMBER

6
SQL> select * from EMployee;

no rows selected

7
SQL> insert into employee values(&EmpCode, &Name, &Salary);
Enter value for empcode: 101
Enter value for name: 'Amit'
Enter value for salary: 30000
old   1: insert into employee values(&EmpCode, &Name, &Salary)
new   1: insert into employee values(101, 'Amit', 30000)

1 row created.

SQL> /
Enter value for empcode: 201
Enter value for name: 'Kapil'
Enter value for salary: 22000
old   1: insert into employee values(&EmpCode, &Name, &Salary)
new   1: insert into employee values(201, 'Kapil', 22000)

1 row created.

SQL> /
Enter value for empcode: 301
Enter value for name: 'Rohit'
Enter value for salary: 45000
old   1: insert into employee values(&EmpCode, &Name, &Salary)
new   1: insert into employee values(301, 'Rohit', 45000)

1 row created.

SQL> /
Enter value for empcode: 401
Enter value for name: Amit'
Enter value for salary: 27000
old   1: insert into employee values(&EmpCode, &Name, &Salary)
new   1: insert into employee values(401, Amit', 27000)
ERROR:
ORA-01756: quoted string not properly terminated


SQL> /
Enter value for empcode: 401
Enter value for name: 'Amit'
Enter value for salary: 27000 
old   1: insert into employee values(&EmpCode, &Name, &Salary)
new   1: insert into employee values(401, 'Amit', 27000)

1 row created.

8
SQL> select * from Employee;

   EMPCODE NAME       SALARY
---------- ------ ----------
       101 Amit        30000
       201 Kapil       22000
       301 Rohit       45000
       401 Amit        27000

9

SQL> insert into Employee values(
  2  1, 'Bhattacharya', 33000);
1, 'Bhattacharya', 33000)
   *
ERROR at line 2:
ORA-12899: value too large for column "CSJ59"."EMPLOYEE"."NAME" (actual: 12,
maximum: 6)

10
SQL> desc Employee
 Name				 		 		 		 		 		 		 			   Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPCODE					    		 		 		 		 		 		 		 		 NUMBER
 NAME						   		 		 		 		 		 		 		 		     VARCHAR2(6)
 SALARY 	 		 		 		 		 		 		 	        				   NUMBER

11
SQL> alter table Employee modify Name varchar2(25);

Table altered.

12
SQL> desc Employee
 Name				 		 		 		 		 		 		 			   Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPCODE					    		 		 		 		 		 		 		 		 NUMBER
 NAME						   		 		 		 		 		 		 		 		     VARCHAR2(25)
 SALARY 	 		 		 		 		 		 		 	        				   NUMBER

13
SQL> select * from Employee;

   EMPCODE NAME 			 		 		 		 		 SALARY
---------- ------------------------- ----------
       101 Amit 		 		 		 		 			  30000
       201 Kapil		 		 		 		 			  22000
       301 Rohit		 		 		 		 			  45000
       401 Amit 			 		 		 		 		  27000

14
SQL> insert into Employee values(
  2  901, 'Bhattacharya', 33000);

1 row created.

15
SQL> select * from Employee;

   EMPCODE NAME 		 		 		 			 		 SALARY
---------- ------------------------- ----------
       101 Amit 		 		 		 		 			  30000
       201 Kapil		 		 		 		 			  22000
       301 Rohit		 	 		 		 				  45000
       401 Amit 		 		 		 		 			  27000
       901 Bhattacharya 	 		 		 			33000

16
SQL> alter table Employee modify Name varchar2(5);
alter table Employee modify Name varchar2(5)
                            *
ERROR at line 1:
ORA-01441: cannot decrease column length because some value is too big

17
SQL> commit;

Commit complete.

SQL> select * from Employee;

   EMPCODE NAME 		 		 		 			 		 SALARY
---------- ------------------------- ----------
       101 Amit 		 		 		 		 			  30000
       201 Kapil		 		 		 		 			  22000
       301 Rohit		 	 		 		 				  45000
       401 Amit 		 		 		 		 			  27000
       901 Bhattacharya 	 		 		 			33000

18
a) 
SQL> select name from Employee;

NAME
-------------------------
Amit
Kapil
Rohit
Amit
Bhattacharya

b)
SQL> Select name, name, name, name from employee;

NAME			  NAME			    NAME
------------------------- ------------------------- -------------------------
NAME
-------------------------
Amit			  Amit			    Amit
Amit

Kapil			  Kapil 		    Kapil
Kapil

Rohit			  Rohit 		    Rohit
Rohit


NAME			  NAME			    NAME
------------------------- ------------------------- -------------------------
NAME
-------------------------
Amit			  Amit			    Amit
Amit

Bhattacharya		  Bhattacharya		    Bhattacharya
Bhattacharya

c)
SQL> Select name, empcode from employee order by salary;

NAME									     EMPCODE
------------------------- ----------
Kapil												 201
Amit												 401
Amit												 101
Bhattacharya								 901
Rohit												 301

d)
SQL> select name, Salary, salary + 500 , salary-50000 from employee;

NAME			                  SALARY   SALARY+500   SALARY-50000
------------------------- ---------- ----------  ------------
Amit			                   30000	   30500       -20000
Kapil			                   22000	   22500       -28000
Rohit			                   45000	   45500        -5000
Amit			                   27000	   27500       -23000
Bhattacharya	       	       33000	   33500       -17000

e)
SQL>  Select sum(salary) from employee;

SUM(SALARY)
-----------
     157000

f)
SQL> Select min(salary) from employee;

MIN(SALARY)
-----------
      22000
  
g)
SQL> Select max(salary) from employee;

MAX(SALARY)
-----------
      45000

19
SQL> select Name, Salary, (Salary+0.5*Salary) as Increased_Salary from Employee;

NAME			  	  	  	      SALARY   INCREASED_SALARY
------------------------- ---------- ----------------
Amit				  	  	         30000		45000
Kapil				  	  	         22000		33000
Rohit		 	    	  	         45000		67500
Amit			  	  	  	       27000		40500
Bhattacharya		   	  	     33000		49500


20
SQL> create table NewEmp as select * from Employee;

Table created.

21
SQL> select * from NewEMp;

   EMPCODE NAME 		 		 		 			 		 SALARY
---------- ------------------------- ----------
       101 Amit 		 		 		 		 			  30000
       201 Kapil		 		 		 		 			  22000
       301 Rohit		 	 		 		 				  45000
       401 Amit 		 		 		 		 			  27000
       901 Bhattacharya 	 		 		 			33000

22
SQL> create table Emp2 as select * from Employee where 0>1;

Table created.

23
SQL> select * from Employee;

    EMPCODE NAME 		 		 		 			 		 SALARY
---------- ------------------------- ----------
       101 Amit 		 		 		 		 			  30000
       201 Kapil		 		 		 		 			  22000
       301 Rohit		 	 		 		 				  45000
       401 Amit 		 		 		 		 			  27000
       901 Bhattacharya 	 		 		 			33000
     
SQL> select * from NewEmp;

   EMPCODE NAME 			 SALARY
---------- ------------------------- ----------
       101 Amit 			  30000
       201 Kapil			  22000
       301 Rohit			  45000
       401 Amit 			  27000
       901 Bhattacharya 		  33000

SQL> select * from Emp2;

no rows selected

24
SQL> desc employee;
 Name				 		 		 		 		 		 		 			   Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPCODE					    		 		 		 		 		 		 		 		 NUMBER
 NAME						   		 		 		 		 		 		 		 		     VARCHAR2(25)
 SALARY 	 		 		 		 		 		 		 	        				   NUMBER


SQL> desc NewEmp;
  Name				 		 		 		 		 		 		 			   Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPCODE					    		 		 		 		 		 		 		 		 NUMBER
 NAME						   		 		 		 		 		 		 		 		     VARCHAR2(25)
 SALARY 	 		 		 		 		 		 		 	        				   NUMBER


SQL> desc Emp2;
  Name				 		 		 		 		 		 		 			   Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPCODE					    		 		 		 		 		 		 		 		 NUMBER
 NAME						   		 		 		 		 		 		 		 		     VARCHAR2(25)
 SALARY 	 		 		 		 		 		 		 	        				   NUMBER

25
SQL> create table MyTable as select Name, Salary from Employee;

Table created.

26
SQL> select * from EMployee;

   EMPCODE NAME 		 		 		 			 		 SALARY
---------- ------------------------- ----------
       101 Amit 		 		 		 		 			  30000
       201 Kapil		 		 		 		 			  22000
       301 Rohit		 	 		 		 				  45000
       401 Amit 		 		 		 		 			  27000
       901 Bhattacharya 	 		 		 			33000
     
SQL> select * from MyTable;

NAME			  		  		      SALARY
------------------------- ----------
Amit					  		         30000
Kapil					  		         22000
Rohit					  		         45000
Amit			 	     		         27000
Bhattacharya				         33000

27
SQL> select * from Tab;

TNAME			                     TABTYPE	CLUSTERID
------------------------------ ------- ----------
DUPLICATE		                   TABLE
EMP2			                     TABLE
EMPLOYEE		                   TABLE
MYTABLE 		                   TABLE
NEWEMP			                   TABLE

28
SQL> commit;

Commit complete.

29
SQL> alter table NewEmp drop (Name, EmpCode);

Table altered.

30
SQL> select * from NewEmp;

    SALARY
----------
     30000
     22000
     45000
     27000
     33000

31
SQL> truncate table MyTable;

Table truncated.

32
SQL> select * from MyTable;

no rows selected

33
SQL> rollback;

Rollback complete.
  
34
SQL> select * from MyTable;

no rows selected

35
SQL> drop table MyTable;

Table dropped.

36
SQL> select * from MyTable;
select * from MyTable
              *
ERROR at line 1:
ORA-00942: table or view does not exist

37
SQL> Rollback;

Rollback complete.

38
SQL> select *  from MyTable;
select *  from MyTable
               *
ERROR at line 1:
ORA-00942: table or view does not exist

39
SQL> select * from tab;

TNAME			                     TABTYPE	CLUSTERID
------------------------------ ------- ----------
DUPLICATE		                   TABLE
EMP2			                     TABLE
EMPLOYEE		                   TABLE
NEWEMP			                   TABLE

40
SQL> commit;

SQL> select * from student;

    ROLLNO NAME       CITY
---------- ---------- ----------
	 1 Amit       Dehradun
	 2 Kapil      Meerut
	 3	      Dehradun
	 4 Amit
	 5	      Delhi



Commit complete.
