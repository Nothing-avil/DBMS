Practical List 7 - Oracle
Subject : SUBQUERY DBMS No of Labs : 01
1. Create the following tables:
Course Table
CourseCode Numeric Primary key
CourseName Varchar 10 Null not allowed
CourseFees Numeric Not less than 20000
Department Varchar 10
Student Table
RollNo Numeric Primary key
Name Varchar 10 Unique
City Varchar 10 Not Null
Register Table
RollNo Foreign key for student table, Prime
CourseCode Foreign key for course table, Prime

  SQL> create table course(
  2  COURSECODE number Primary key,
  3  COURSENAME varchar2(10) NOT NULL,
  4  COURSEFEES number check(COURSEFEES>20000),
  5  DEPARTMENT varchar2(10));

Table created.
SQL> create table STUDENTS(
  2  ROLLNO number primary key,
  3  NAME varchar2(10) unique,
  4  CITY varchar2(10) not null);

Table created.
SQL> create table REGISTER(
  2  ROLLNO number,
  3  COURSECODE number,
  4  foreign key (rollno) references students(ROLLNO),
  5  Foreign key (COURSECODE) references COURSE(COURSECODE));

Table created.
  
2. Enter the following data into table:
Course 
CourseId CourseName Coursefees Department
101 MCA 80000 MCA
102 MBA 60000 MBA
103 Btech 75000 Engg
104 BCA 30000 MCA
105 BSc(IT) 25000 MCA
106 MSc(IT) 35000 MCA
107 BBA 22000 MBA
Student 
|RollNo | Name | City|
|1 | Amit | Delhi|
|2 | Sumit | Goa|
|3 | Shweta | Gwaliar|
|4 | Kumar | Goa|
|5 | Puneet | Meerut|
|6 | Bharat | Gwaliar|
Register “Commit Your Data”
RollNo CourseId
2 101
4 103
5 101
3 105
1 103
  SQL> insert into course values(&COURSECODE, &COURSENAME, &COURSEFEES, &DEPARTMENT);
Enter value for coursecode: 101          
Enter value for coursename: 'MCA'
Enter value for coursefees: 80000
Enter value for department: 'MCA'
old   1: insert into course values(&COURSECODE, &COURSENAME, &COURSEFEES, &DEPARTMENT)
new   1: insert into course values(101, 'MCA', 80000, 'MCA')

1 row created.
SQL> /
Enter value for coursecode: 102
Enter value for coursename: 'MBA'
Enter value for coursefees: 60000
Enter value for department: 'MBA'
old   1: insert into course values(&COURSECODE, &COURSENAME, &COURSEFEES, &DEPARTMENT)
new   1: insert into course values(102, 'MBA', 60000, 'MBA')

1 row created.

SQL> /
Enter value for coursecode: 103
Enter value for coursename: 'Btech'
Enter value for coursefees: 75000
Enter value for department: 'Engg'
old   1: insert into course values(&COURSECODE, &COURSENAME, &COURSEFEES, &DEPARTMENT)
new   1: insert into course values(103, 'Btech', 75000, 'Engg')

1 row created.
SQL> /
Enter value for coursecode: 104
Enter value for coursename: 'BCA'
Enter value for coursefees: 30000 
Enter value for department: 'MCA'
old   1: insert into course values(&COURSECODE, &COURSENAME, &COURSEFEES, &DEPARTMENT)
new   1: insert into course values(104, 'BCA', 30000 , 'MCA')

1 row created.

SQL> /
Enter value for coursecode: 105
Enter value for coursename: 'BSc(IT)'
Enter value for coursefees: 25000
Enter value for department: 'MCA'
old   1: insert into course values(&COURSECODE, &COURSENAME, &COURSEFEES, &DEPARTMENT)
new   1: insert into course values(105, 'BSc(IT)', 25000, 'MCA')

1 row created.

SQL> /
Enter value for coursecode: 106
Enter value for coursename: 'MSc(IT)'
Enter value for coursefees: 35000
Enter value for department: 'MCA'
old   1: insert into course values(&COURSECODE, &COURSENAME, &COURSEFEES, &DEPARTMENT)
new   1: insert into course values(106, 'MSc(IT)', 35000, 'MCA')

1 row created.

SQL> /
Enter value for coursecode: 107
Enter value for coursename: 'BBA'
Enter value for coursefees: 22000
Enter value for department: 'MBA'
old   1: insert into course values(&COURSECODE, &COURSENAME, &COURSEFEES, &DEPARTMENT)
new   1: insert into course values(107, 'BBA', 22000, 'MBA')

1 row created.

SQL> insert into STUDENTS values(&ROLLNO, &NAME, &CITY);
Enter value for rollno: 1      
Enter value for name: 'Amit'
Enter value for city: 'Delhi'
old   1: insert into STUDENTS values(&ROLLNO, &NAME, &CITY)
new   1: insert into STUDENTS values(1, 'Amit', 'Delhi')

1 row created.

SQL> /
Enter value for rollno: 2
Enter value for name: 'Sumit'
Enter value for city: 'Goa'
old   1: insert into STUDENTS values(&ROLLNO, &NAME, &CITY)
new   1: insert into STUDENTS values(2, 'Sumit', 'Goa')

1 row created.

SQL> /
Enter value for rollno: 3
Enter value for name: 'Shweta'
Enter value for city: 'Gwaliar'
old   1: insert into STUDENTS values(&ROLLNO, &NAME, &CITY)
new   1: insert into STUDENTS values(3, 'Shweta', 'Gwaliar')

1 row created.

SQL> /
Enter value for rollno: 4
Enter value for name: 'Kumar'
Enter value for city: 'Goa'
old   1: insert into STUDENTS values(&ROLLNO, &NAME, &CITY)
new   1: insert into STUDENTS values(4, 'Kumar', 'Goa')

1 row created.

SQL> /
Enter value for rollno: 5
Enter value for name: 'Puneet'
Enter value for city: 'Meerut'
old   1: insert into STUDENTS values(&ROLLNO, &NAME, &CITY)
new   1: insert into STUDENTS values(5, 'Puneet', 'Meerut')

1 row created.

SQL> /
Enter value for rollno: 6
Enter value for name: 'Bharat'
Enter value for city: 'Gwaliar'
old   1: insert into STUDENTS values(&ROLLNO, &NAME, &CITY)
new   1: insert into STUDENTS values(6, 'Bharat', 'Gwaliar')

1 row created.

  QL> insert into register values(&ROLLNO, &COURSECODE);
Enter value for rollno: 2
Enter value for coursecode: 101
old   1: insert into register values(&ROLLNO, &COURSECODE)
new   1: insert into register values(2, 101)

1 row created.

SQL> /
Enter value for rollno: 4
Enter value for coursecode: 103
old   1: insert into register values(&ROLLNO, &COURSECODE)
new   1: insert into register values(4, 103)

1 row created.

SQL> /
Enter value for rollno: 5
Enter value for coursecode: 101
old   1: insert into register values(&ROLLNO, &COURSECODE)
new   1: insert into register values(5, 101)

1 row created.

SQL> /
Enter value for rollno: 3
Enter value for coursecode: 105
old   1: insert into register values(&ROLLNO, &COURSECODE)
new   1: insert into register values(3, 105)

1 row created.

SQL> /
Enter value for rollno: 1
Enter value for coursecode: 103
old   1: insert into register values(&ROLLNO, &COURSECODE)
new   1: insert into register values(1, 103)

1 row created.

3. Write queries for following :-
(a) Details of students who are not registered in any course. (complete detail)
  SQL> select * from students where rollno not in (select rollno from register);

    ROLLNO NAME       CITY
---------- ---------- ----------
	 6 Bharat     Gwaliar

(b) Rollno of students not registered in any course. (only Rollno)
      SQL> select rollno from students where rollno not in (select rollno from register);

    ROLLNO
----------
	 6
      
(c) Details of students who are registered in “MCA” course.
      SQL> select * from students where rollno in(select rollno from register where coursecode in(select coursecode from course where coursename='MCA'));

    ROLLNO NAME       CITY
---------- ---------- ----------
	 2 Sumit      Goa
	 5 Puneet     Meerut

(d) List of courses in which no students are registered.
(e) List of courses in which at least one student is registered.
(f) List of courses having fees greater than “BCA” course.
(g) Total fees of all courses and also show average fees.
(h) Department wise total fees of all courses.
(i) Maximum course fee of each department.
(j) Details of courses which are having fees greater than average fees.
(k) Details of those courses in which students of “Goa” are registered.
(l) Increase the fees of all courses by 10% and commit.
(m) View all records of course table.
(n) Display highest, lowest and average fees.
(o) Names of students who are registered in a course having fees less than 30000.
(p) Display coursecodes along with total number of registrations in those courses.
(q) Display total number of students from goa.
(r) Display highest fees.
(s) Display 4th highest fees.
