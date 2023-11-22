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
RollNo Name City
1 Amit Delhi
2 Sumit Goa
3 Shweta Gwaliar
4 Kumar Goa
5 Puneet Meerut
6 Bharat Gwaliar
Register “Commit Your Data”
RollNo CourseId
2 101
4 103
5 101
3 105
1 103
3. Write queries for following :-
(a) Details of students who are not registered in any course. (complete detail)
(b) Rollno of students not registered in any course. (only Rollno)
(c) Details of students who are registered in “MCA” course.
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
