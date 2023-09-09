1
SQL> connect
Enter user-name: CSJ59
Enter password: 
Connected.

2
SQL> select * from tab;

TNAME			       TABTYPE	CLUSTERID
------------------------------ ------- ----------
DUPLICATE		       TABLE

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
SQL> desc employee
 Name					   Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPCODE					    NUMBER
 NAME						    VARCHAR2(6)
 SALARY 					    NUMBER

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
