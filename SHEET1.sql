1
SQL> connect
Enter user-name: CSJ59
Enter password: 
Connected.

2
SQL> select * from tab;

no rows selected

3
SQL> show user;
USER is "CSJ59"

4
SQL> select SYSDATE from dual;

SYSDATE
--------
30-08-23

5
SQL> 

6
SQL> show all 
appinfo is OFF and set to "SQL*Plus"
arraysize 15
autocommit OFF
autoprint OFF
autorecovery OFF
autotrace OFF
blockterminator "." (hex 2e)
btitle OFF and is the first few characters of the next SELECT statement
cmdsep OFF
colsep " "
compatibility version NATIVE
concat "." (hex 2e)
copycommit 0
COPYTYPECHECK is ON
define "&" (hex 26)
describe DEPTH 1 LINENUM OFF INDENT ON
echo OFF
editfile "afiedt.buf"
embedded OFF
escape OFF
escchar OFF
exitcommit ON
FEEDBACK ON for 6 or more rows
flagger OFF
flush ON
heading ON
headsep "|" (hex 7c)
instance "local"
linesize 80
lno 5
loboffset 1
logsource ""
long 80
longchunksize 80
markup HTML OFF HEAD "<style type='text/css'> body {font:10pt Arial,Helvetica,sans-serif; color:black; background:White;} p {font:10pt Arial,Helvetica,sans-serif; color:black; background:White;} table,tr,td {font:10pt Arial,Helvetica,sans-serif; color:Black; background:#f7f7e7; padding:0px 0px 0px 0px; margin:0px 0px 0px 0px;} th {font:bold 10pt Arial,Helvetica,sans-serif; color:#336699; background:#cccc99; padding:0px 0px 0px 0px;} h1 {font:16pt Arial,Helvetica,Geneva,sans-serif; color:#336699; background-color:White; border-bottom:1px solid #cccc99; margin-top:0pt; margin-bottom:0pt; padding:0px 0px 0px 0px;-
} h2 {font:bold 10pt Arial,Helvetica,Geneva,sans-serif; color:#336699; background-color:White; margin-top:4pt; margin-bottom:0pt;} a {font:9pt Arial,Helvetica,sans-serif; color:#663300; background:#ffffff; margin-top:0pt; margin-bottom:0pt; vertical-align:top;}</style><title>SQL*Plus Report</title>" BODY "" TABLE "border='1' width='90%' align='center' summary='Script output'" SPOOL OFF ENTMAP ON PREFORMAT OFF
newpage 1
null ""
numformat ""
numwidth 10
pagesize 14
PAUSE is OFF
pno 1
recsep WRAP
recsepchar " " (hex 20)
release 1102000200
repfooter OFF and is NULL
repheader OFF and is NULL
securedcol is OFF
serveroutput OFF
shiftinout INVISIBLE
showmode OFF
spool OFF
sqlblanklines OFF
sqlcase MIXED
sqlcode 904
sqlcontinue "> "
sqlnumber ON
sqlpluscompatibility 11.2.0
sqlprefix "#" (hex 23)
sqlprompt "SQL> "
sqlterminator ";" (hex 3b)
suffix "sql"
tab ON
termout ON
timing OFF
trimout ON
trimspool OFF
ttitle OFF and is the first few characters of the next SELECT statement
underline "-" (hex 2d)
USER is "CSJ58"
verify ON
wrap : lines will be wrapped
xmloptimizationcheck OFF
errorlogging is OFF

7
SQL> select 200+300 from dual;

   200+300
----------
       500

SQL> select 23*56 from dual;

     23*56
----------
      1288

8
SQL> create table student(
  2  RollNO Number,
  3  Name varchar2(10),
  4  City varchar2(10));

Table created.

9
SQL> desc student;
 Name					   Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO 					    NUMBER
 NAME						    VARCHAR2(10)
 CITY						    VARCHAR2(10)

10
SQL> select * from student;

no rows selected

11
SQL> insert into student values(1, 'Amit', 'Dehradun');

1 row created.

SQL> insert into student values(2, 'Kapil', 'Meerut');

1 row created.

SQL> insert into student values(3, '', 'Dehradun');

1 row created.

SQL> insert into student values(4, 'Amit', '');

1 row created.

SQL> insert into student values(5, '', 'Delhi');

1 row created.

SQL> commit;

Commit complete.
  
12
SQL> select * from student;

    ROLLNO NAME       CITY
---------- ---------- ----------
	 1  Amit       Dehradun
	 2  Kapil      Meerut
	 3	       Dehradun
	 4  Amit
	 5	       Delhi

13
SQL> alter table student add(
  2  Email varchar2(10));

Table altered.

14
SQL> select * from student;

    ROLLNO NAME       CITY	 EMAIL
---------- ---------- ---------- ----------
	 1 Amit       Dehradun
	 2 Kapil      Meerut
	 3	      Dehradun
	 4 Amit
	 5	      Delhi

15
SQL> desc student;
 Name					   Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO 					    NUMBER
 NAME						    VARCHAR2(10)
 CITY						    VARCHAR2(10)
 EMAIL						    VARCHAR2(15)

16
SQL>  update student set Email= 'btech@gmail.com';

5 rows updated.

17
SQL> select * from student;

    ROLLNO NAME       CITY	 EMAIL
---------- ---------- ---------- ---------------
	 1 Amit       Dehradun	 btech@gmail.com
	 2 Kapil      Meerut	 btech@gmail.com
	 3	      Dehradun	 btech@gmail.com
	 4 Amit 		 btech@gmail.com
	 5	      Delhi	 btech@gmail.com

18
SQL> rollback;

Rollback complete.

19
SQL> select * from student;

    ROLLNO NAME       CITY	 EMAIL
---------- ---------- ---------- ---------------
	 1 Amit       Dehradun
	 2 Kapil      Meerut
	 3	      Dehradun
	 4 Amit
	 5	      Delhi

20
SQL> desc student;
 Name					   Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO 					    NUMBER
 NAME						    VARCHAR2(10)
 CITY						    VARCHAR2(10)
 EMAIL						    VARCHAR2(15)

21
SQL> UPDATE student SET Email= 'abc@xyz' WHERE Name= 'Amit';

2 rows updated.

22
SQL> select * from student;

    ROLLNO NAME       CITY	 EMAIL
---------- ---------- ---------- ---------------
	 1 Amit       Dehradun	 abc@xyz
	 2 Kapil      Meerut
	 3	      Dehradun
	 4 Amit 		 abc@xyz
	 5	      Delhi

23
