Practical List 4 (Applying Constraints)
Subject : DBMS LAB
1. Logon to Oracle using your User Name and check your user name.
  SQL> conn
Enter user-name: CSJ59
Enter password:
Connected.

2. See list of all tables.
  SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
DUPLICATE                      TABLE
EMP2                           TABLE
EMPLOYEE                       TABLE
NEWEMP                         TABLE
ORDERS                         TABLE
RECORDS                        TABLE
STUDENT                        TABLE
STUDENT2                       TABLE
STUDENT3                       TABLE
9 rows selected.

3. Create a table “Car” with following attributes :
(Assume Data Type and size of column of your own, they must be relevant)
ModelNo Primary Key
ModelName Unique
Company Not null
EngineCapacity > 1000
Color
Doors > 1
Weight > 1000
TopSpeed < 500
RPM >5000
CostPrice
SalePrice

  SQL> create table car(
  2  ModelNo varchar2(10) primary key,
  3  ModelName varchar2(10) unique,
  4  Company varchar2(17) not NULL,
  5  EngineCapacity varchar2(10) check(EngineCapacity >1000),
  6  color varchar2(10),
  7  doors number check(doors>1),
  8  weight number check(weight >1000),
  9  TopSpeed number check(TopSpeed <500),
 10  RPM number check(RPM > 5000),
 11  costprice number,
 12  saleprice number);

Table created.
  
4. Display the structure of table

  SQL> desc car;
 Name              Null?    Type
 ----------------- -------- ------------
 MODELNO           NOT NULL VARCHAR2(10)
 MODELNAME                  VARCHAR2(10)
 COMPANY           NOT NULL VARCHAR2(17)
 ENGINECAPACITY             VARCHAR2(10)
 COLOR                      VARCHAR2(10)
 DOORS                      NUMBER
 WEIGHT                     NUMBER
 TOPSPEED                   NUMBER
 RPM                        NUMBER
 COSTPRICE                  NUMBER
 SALEPRICE                  NUMBER
   
5. Populate the table with all the car models of “Maruti Suzuki’ , “Hundai” , “Honda” etc companies.
( Please Fill Proper and Relevant Values for Each Tuple)

   
6. Write queries for the following outputs.
➢ Show all records
➢ Show names of all the cars of Maruti.
➢ Show record of all Cars whose engine is more than 2000 CC.
➢ Show record of all cars of white color.
➢ Show records of all vehicles which are costing more than 4 Lacs.
➢ Show the costprice, saleprice and profit on all cars.
➢ Show the names of all cars alphabetically.
7. Now create another table named “vehicle” from “car” table created in Q No.3 without records,
however the columns should be in following order: ( Do not write the complete new create table
statement, rather create table from existing Car Table without records).
(Do not copy any records from Car Table , Copy only columns)
The Column should be in following order only:
TopSpeed
Doors
CostPrice
ModelName
Company
RPM
EngineCapacity
Color
ModelNo
Weight
SalePrice
8. Display the structure of new table
9. Now Populate the “Vehicle” table with all the records of “Car” table but the records should be
inserted in random order this time ( Not in same order as of “Car” Table).
(Like 11,4,5,1,7,3,2,9th record etc)
Do not write new Insert queries, rather copy records from “Car” table in
random order.
10. Re-Write queries given in Q6 on “Vehicle” table and notice the output (Is there any difference?)
➢ Show all records
➢ Show names of all the cars of Maruti.
➢ Show record of all Cars whose engine is more than 2000 CC.
➢ Show record of all cars whose color id white.
➢ Show records of all vehicles which are costing more than 4 Lacs.
➢ Show the costprice, saleprice and profit on all cars.
➢ Show the names of all cars alphabetically.
