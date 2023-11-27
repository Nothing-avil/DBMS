Practical List 8
Joins, Subquery, Grouping etc
1. Ensure that your login has following tables with proper constraints and data:
“Student” Table
RollNo Name City
1 Amit Delhi
2 Sumit Goa
3 Shweta Gwaliar
4 Kumar Goa
5 Puneet Meerut
6 Bharat Gwaliar
“Course” Table
CourseId CourseName Coursefees Department
101 MCA 80000 MCA
102 MBA 60000 MBA
103 Btech 75000 Engg
104 BCA 30000 MCA
105 BSc(IT) 25000 MCA
106 MSc(IT) 35000 MCA
107 BBA 22000 MBA
“Register” Table
RollNo CourseId
2 101
4 103
5 101
3 105
1 103
2. See the contents of above table and commit data.
“Please verify your output each time with above tables.”
“Please verify your output each time with above tables.”
3. Write queries for following :-
(a) Show Details of all Students
  SQL> select * from students;

    ROLLNO NAME       CITY
---------- ---------- ----------
         1 Amit       Delhi
         2 Sumit      Goa
         3 Shweta     Gwaliar
         4 Kumar      Goa
         5 Puneet     Meerut
         6 Bharat     Gwaliar

6 rows selected.
      
(b) Show Details of students who are not registered in any course.
      SQL> select * from students where rollno not in(select rollno from register);

    ROLLNO NAME       CITY
---------- ---------- ----------
         6 Bharat     Gwaliar
      
(c) Show Details of students who are registered in any course:
1. Write Query Using Join
      SQL> select s.rollno, s.name, s.city from students s join register r on s.rollno = r.rollno;

    ROLLNO NAME       CITY
---------- ---------- ----------
         1 Amit       Delhi
         2 Sumit      Goa
         3 Shweta     Gwaliar
         4 Kumar      Goa
         5 Puneet     Meerut
      
2. Write Query Using Sub query
      SQL> select * from students where rollno in(select rollno from register);

    ROLLNO NAME       CITY
---------- ---------- ----------
         2 Sumit      Goa
         4 Kumar      Goa
         5 Puneet     Meerut
         3 Shweta     Gwaliar
         1 Amit       Delhi
      
(d) Details of students along with course code in which they are registered using simple join.
          SQL> select * from students s join register r on s.rollno = r.rollno;

    ROLLNO NAME       CITY           ROLLNO COURSECODE
---------- ---------- ---------- ---------- ----------
         1 Amit       Delhi               1        103
         2 Sumit      Goa                 2        101
         3 Shweta     Gwaliar             3        105
         4 Kumar      Goa                 4        103
         5 Puneet     Meerut              5        101
      
(e) Details of students along with course details in which they are registered using simple join.
      SQL> select s.rollno, s.name, s.city, c.coursecode, c.coursename, c.coursefees, c.department from students s
  2  join register r on r.rollno= s.rollno
  3  join course c on c.coursecode= r.coursecode;

    ROLLNO NAME       CITY       COURSECODE COURSENAME COURSEFEES DEPARTMENT
---------- ---------- ---------- ---------- ---------- ---------- ----------
         5 Puneet     Meerut            101 MCA             80000 MCA
         2 Sumit      Goa               101 MCA             80000 MCA
         4 Kumar      Goa               103 Btech           75000 Engg
         1 Amit       Delhi             103 Btech           75000 Engg
         3 Shweta     Gwaliar           105 BSc(IT)         25000 MCA
      
(f) Details of courses in which no student is registered.
      SQL> select * from course where coursecode not in(select coursecode from register);

COURSECODE COURSENAME COURSEFEES DEPARTMENT
---------- ---------- ---------- ----------
       104 BCA             30000 MCA
       106 MSc(IT)         35000 MCA
       102 MBA             60000 MBA
       107 BBA             22000 MBA

(g) Name of all students who are registered in “MCA” course:
1. Write Query Using Join
  SQL> select name from students s
  2  join register r on r.rollno= s.rollno
  3  join course c on c.coursecode= r.coursecode and c.coursename='MCA';
NAME
----------
Sumit
Puneet
  
2. Write Query Using Sub query
  SQL> select name from students where rollno in (select rollno from register where coursecode in (select coursecode from course where coursename = 'MCA'));

NAME
----------
Sumit
Puneet
  
(h) Details of students who are registered in most expensive course.
  SQL> select s.rollno, s.name, s.city from students s
  2  join register r on r.rollno= s.rollno
  3  join course c on c.coursecode= r.coursecode
  4  where c.coursefees =(select MAX(coursefees) from course);

    ROLLNO NAME       CITY
---------- ---------- ----------
         2 Sumit      Goa
         5 Puneet     Meerut
      
(i) Display Highest course fees.
      SQL> select * from course where coursefees =(select MAX(coursefees) from course);

COURSECODE COURSENAME COURSEFEES DEPARTMENT
---------- ---------- ---------- ----------
       101 MCA             80000 MCA
(j) Display Second highest coursefees.
  SQL> select max(coursefees) as second_highest from course where coursefees <(select MAX(coursefees) from course);

SECOND_HIGHEST
--------------
        75000
  
(k) Display total sum of all course fees.
  SQL> select sum(coursefees) as total from course;

     TOTAL
----------
    327000
  
(l) Display department wise total fees of all courses. Show both department name & total fees.
       SQL> select department, sum(coursefees) as total from course group by department;

DEPARTMENT      TOTAL
---------- ----------
MBA             82000
Engg            75000
MCA            170000
  
(m) Display department wise total fees of all those departments whose total department fees is
greater than Rs. 80000/-. (How many rows are displayed? )
  SQL> select department, sum(coursefees) as total from course having sum(coursefees)>80000 group by department;

DEPARTMENT      TOTAL
---------- ----------
MBA             82000
MCA            170000
  2 rows are displayed.
(n) Display department wise total fees of only those courses having fees greater than Rs. 30000/-.
(How many rows are displayed? )
  SQL> select department, sum(coursefees) as total from course where coursefees>30000 group by department;

DEPARTMENT      TOTAL
---------- ----------
MBA             60000
Engg            75000
MCA            115000
  3 rows are displayed.
(o) Run Queries for All Types of Joins Like:
- Inner Join
SQL> SELECT s.RollNo, s.Name, s.City, r.Coursecode, c.CourseCode, c.CourseName, c.CourseFees, c.Department
  2  from students s
  3  JOIN register r ON s.RollNo = r.RollNo
  4  JOIN course c ON r.Coursecode = c.CourseCode;

    ROLLNO NAME       CITY       COURSECODE COURSECODE COURSENAME COURSEFEES DEPARTMENT
---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
         5 Puneet     Meerut            101        101 MCA             80000 MCA
         2 Sumit      Goa               101        101 MCA             80000 MCA
         4 Kumar      Goa               103        103 Btech           75000 Engg
         1 Amit       Delhi             103        103 Btech           75000 Engg
         3 Shweta     Gwaliar           105        105 BSc(IT)         25000 MCA
  
- Left Outer Join
      SQL> SELECT s.RollNo, s.Name, s.City, r.Coursecode, c.CourseCode, c.CourseName, c.CourseFees, c.Department
  2  from students s
  3  LEFT JOIN register r ON s.RollNo = r.RollNo
  4  LEFT JOIN course c ON r.Coursecode = c.CourseCode;

    ROLLNO NAME       CITY       COURSECODE COURSECODE COURSENAME COURSEFEES DEPARTMENT
---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
         5 Puneet     Meerut            101        101 MCA             80000 MCA
         2 Sumit      Goa               101        101 MCA             80000 MCA
         1 Amit       Delhi             103        103 Btech           75000 Engg
         4 Kumar      Goa               103        103 Btech           75000 Engg
         3 Shweta     Gwaliar           105        105 BSc(IT)         25000 MCA
         6 Bharat     Gwaliar

6 rows selected.
      
- Right Outer Join
      SQL> SELECT s.RollNo, s.Name, s.City, r.Coursecode, c.CourseCode, c.CourseName, c.CourseFees, c.Department
  2  from students s
  3  RIGHT JOIN register r ON s.RollNo = r.RollNo
  4  RIGHT JOIN course c ON r.Coursecode = c.CourseCode;

    ROLLNO NAME       CITY       COURSECODE COURSECODE COURSENAME COURSEFEES DEPARTMENT
---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
         1 Amit       Delhi             103        103 Btech           75000 Engg
         2 Sumit      Goa               101        101 MCA             80000 MCA
         3 Shweta     Gwaliar           105        105 BSc(IT)         25000 MCA
         4 Kumar      Goa               103        103 Btech           75000 Engg
         5 Puneet     Meerut            101        101 MCA             80000 MCA
                                                   104 BCA             30000 MCA
                                                   106 MSc(IT)         35000 MCA
                                                   102 MBA             60000 MBA
                                                   107 BBA             22000 MBA

9 rows selected.
      
- Full Outer Join
      SQL> SELECT s.RollNo, s.Name, s.City, r.Coursecode, c.CourseCode, c.CourseName, c.CourseFees, c.Department
  2  from students s
  3  FULL OUTER JOIN register r ON s.RollNo = r.RollNo
  4  FULL OUTER JOIN course c ON r.Coursecode = c.CourseCode;

    ROLLNO NAME       CITY       COURSECODE COURSECODE COURSENAME COURSEFEES DEPARTMENT
---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
         5 Puneet     Meerut            101        101 MCA             80000 MCA
         2 Sumit      Goa               101        101 MCA             80000 MCA
                                                   102 MBA             60000 MBA
         4 Kumar      Goa               103        103 Btech           75000 Engg
         1 Amit       Delhi             103        103 Btech           75000 Engg
                                                   104 BCA             30000 MCA
         3 Shweta     Gwaliar           105        105 BSc(IT)         25000 MCA
                                                   106 MSc(IT)         35000 MCA
                                                   107 BBA             22000 MBA
         6 Bharat     Gwaliar

10 rows selected.
      
- Self Join
      SQL> select s.rollno, s.name, s.city, d.rollno, d.name, d.city from students s
  2  join students d on s.city= d.city and s.rollno< d.rollno;

    ROLLNO NAME       CITY           ROLLNO NAME       CITY
---------- ---------- ---------- ---------- ---------- ----------
         2 Sumit      Goa                 4 Kumar      Goa
         3 Shweta     Gwaliar             6 Bharat     Gwaliar
      
(Think and Make Queries Yourself on above Tables)
