/*Please do the Sheet patiently as it will take some time.
DBMS LAB SHEET - 5
Platform : Oracle DB
Basic SQL Functions
PART – A ( First Do This Part)
- RUN THESE QUERIES IN YOUR SYSTEM. ( You can copy and Paste, But sometimes
copy paste gives error because of quotes issue)
- WRITE OUTPUT OF EACH QUERY ON A4 SHEET ALONG WITH QUESTION/QUERY
- IN CASE OF ANY ERROR, SEARCH THE SYNTAX and CORRECT THE QUERY.*/
1. select upper('gehu') from dual.

SQL> select upper('gehu') from dual;

UPPE
----
GEHU


2. select lower('GEHU') from dual.

SQL> select lower('GEHU') from dual;

LOWE
----
Gehu


3. select ‘hello world to all' from dual.

SQL> select 'hello world to all' from dual;

'HELLOWORLDTOALL'
------------------
hello world to all


4. select initcap(‘hello world to all') from dual.

SQL> select initcap('hello world to all')from dual;

INITCAP('HELLOWORL
------------------
Hello World To All


5. select ' hai' from dual.

SQL> select ' hai' from dual;

'HAI
----
 hai



6. select ltrim(' hai') from dual.

SQL> select ltrim(' hai') from dual;

LTR
---
hai


7. select rtrim('hai ') from dual.

SQL> select rtrim(' hai ') from dual;

RTRI
----
 hai

8. select concat('GEHU',' university') from dual.

SQL> select concat('GEHU',' university') from dual;

CONCAT('GEHU','
---------------
GEHU university

9. select length('GEHU’) from dual.

SQL> select length('GEHU’) from dual;

LENGTH('GEHU')
--------------
             4

10. select replace('GEHU university', 'GEHU','GEU') from dual.

SQL> select replace('GEHU university', 'GEHU','GEU') from dual;

REPLACE('GEHUU
--------------
GEU university

11. select substr('UNIVERSITY', 4,6) from dual.

SQL> select substr('UNIVERSITY', 4,6) from dual;

SUBSTR
------
VERSIT

12. select rpad('GEHU',10,'*')from dual.

SQL> select rpad('GEHU',10,'*')from dual;

RPAD('GEHU
----------
GEHU******

13. select lpad('GEHU',10,'*') from dual.

SQL> select lpad('GEHU',10,'*') from dual;

LPAD('GEHU
----------
******GEHU

14. select Instr('COCOON',’O’) from dual.

SQL> select Instr('COCOON',’O’) from dual;

INSTR('COCOON','O')
-------------------
                  2

15. select replace('Dany','y','ie') from dual.

SQL> select replace('Dany','y','ie') from dual;

REPLA
-----
Danie

16. select translate('cold','ld','ol') from dual.

SQL> select translate('cold','ld','ol') from dual;

TRAN
----
cool

17. select sysdate from dual.

SQL> select sysdate from dual;

SYSDATE
---------
27-SEP-23

18. select round(sysdate)from dual.

SQL> select round(sysdate)from dual;

ROUND(SYS
---------
27-SEP-23

19. select add_months(sysdate,3)from dual.

SQL> select add_months(sysdate,3)from dual;

ADD_MONTH
---------
27-DEC-23
20. select last_day(sysdate)from dual.

SQL> select last_day(sysdate)from dual;

LAST_DAY(
---------
30-SEP-23

21. select sysdate+20 from dual.

SQL> select sysdate+20 from dual;

SYSDATE+2
---------
17-OCT-23

22. select next_day(sysdate,'tuesday')from dual.

SQL> select next_day(sysdate,'tuesday')from dual;

NEXT_DAY(
---------
03-OCT-23


NUMERIC FUNCTIONS:


23. select round(15.6789)from dual.

SQL> select round(15.6789)from dual;

ROUND(15.6789)
--------------
            16


24. select ceil(23.20)from dual.

SQL> select ceil(23.20)from dual;

CEIL(23.20)
-----------
         24

25. select floor(34.56)from dual.

SQL> select floor(34.56)from dual;

FLOOR(34.56)
------------
          34

26. select trunc(15.56743)from dual.

SQL> select trunc(15.56743)from dual;

TRUNC(15.56743)
---------------
             15

27. select sign(-345)from dual.

SQL> select sign(-345)from dual;

SIGN(-345)
----------
        -1

28. select abs(-70)from dual.

SQL> select abs(-70)from dual;

  ABS(-70)
----------
        70


MATH FUNCTIONS:

29. select abs(45) from dual.

SQL> select abs(45) from dual;

   ABS(45)
----------
        45

30. select power(10,12) from dual.

SQL> select power(10,12) from dual;

POWER(10,12)
------------
  1.0000E+12

31. select mod(11,5) from dual.

SQL> select mod(11,5) from dual;

 MOD(11,5)
----------
         1

32. select exp(10) from dual.

SQL>  select exp(10) from dual;

   EXP(10)
----------
22026.4658

33. select sqrt(225) from dual.

SQL> select sqrt(225) from dual;

 SQRT(225)
----------
        15
   
LAB Sheet – 5 : PART – B
AFTER RUNNING ABOVE QUERIES NOW ANSWER THESE QUESTIONS ON A4 SHEETS:
Q1. What are Single Row and Multiple Row Functions in Oracle SQL. Explain in detail.
Q2. Prepare a detailed list and notes on Following Type of Functions:
- Various types of Character Functions
- Various types of Number Functions
- Various types of Date Functions
- Various types of Conversions Functions
- Various types of General Functions
- NVL With example
- NVL2 With example
- CASE With example - Important
- DECODE With example - Important
After Explaining each Type of function, write your own SQL example along with output which
you have executed in your System/Laptop etc.
