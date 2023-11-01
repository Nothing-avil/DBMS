/*Please do the Sheet patiently as it will take some time.
DBMS LAB SHEET - 5
Platform : Oracle DB
Basic SQL Functions
PART – A ( First Do This Part)
- RUN THESE QUERIES IN YOUR SYSTEM. ( You can copy and Paste, But sometimes
copy paste gives error because of quotes issue)
- WRITE OUTPUT OF EACH QUERY ON A4 SHEET ALONG WITH QUESTION/QUERY
- IN CASE OF ANY ERROR, SEARCH THE SYNTAX and CORRECT THE QUERY.*/
SQL> select upper('gehu') from dual;

UPPE
----
GEHU


SQL> select lower('GEHU') from dual;

LOWE
----
gehu

SQL> select ‘hello world to all' from dual; Note the output and difference carefully.
  
SQL> select initcap(‘hello world to all') from dual;
SQL> select ' hai' from dual;
SQL> select ltrim(' hai') from dual; Note the output and difference carefully.
SQL> select rtrim('hai ') from dual;
SQL> select 'hai ' from dual; Note the output and difference carefully.
SQL> select rtrim(' hai ') from dual; Note the output and difference carefully.
SQL> select concat('GEHU',' university') from dual;
SQL> select length('GEHU') from dual;
SQL> select replace('GEHU university', 'GEHU','GEU') from dual;
SQL> select substr('UNIVERSITY', 4,6) from dual;
SQL> select rpad('GEHU',10,'*')from dual;
SQL> select lpad('GEHU',10,'*') from dual;
SQL> select Instr('COCOON',’O’) from dual;
SQL> select replace('Dany','y','ie') from dual;
SQL> select translate('cold','ld','ol') from dual;
SQL> select sysdate from dual;
SQL> select round(sysdate)from dual;
SQL> select add_months(sysdate,3)from dual;
SQL> select last_day(sysdate)from dual;
SQL> select sysdate+20 from dual;
SQL> select next_day(sysdate,'tuesday')from dual;
NUMERIC FUNCTIONS:
SQL> select round(15.6789)from dual;
SQL> select ceil(23.20)from dual;
SQL> select floor(34.56)from dual;
SQL> select trunc(15.56743)from dual;
SQL> select sign(-345)from dual;
SQL> select abs(-70)from dual;
MATH FUNCTIONS:
SQL> select abs(45) from dual;
SQL> select power(10,12) from dual;
SQL> select mod(11,5) from dual;
SQL> select exp(10) from dual;
SQL> select sqrt(225) from dual;
(PTO)
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
