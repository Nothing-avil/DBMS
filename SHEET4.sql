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
  2  ModelNo nnmber primary key,
  3  ModelName varchar2(10) unique,
  4  Company varchar2(17) not NULL,
  5  EngineCapacity number check(EngineCapacity >1000),
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
 MODELNO           NOT NULL NUMBER
 MODELNAME                  VARCHAR2(25)
 COMPANY           NOT NULL VARCHAR2(17)
 ENGINECAPACITY             NUMBER
 COLOR                      VARCHAR2(10)
 DOORS                      NUMBER
 WEIGHT                     NUMBER
 TOPSPEED                   NUMBER
 RPM                        NUMBER
 COSTPRICE                  NUMBER
 SALEPRICE                  NUMBER
   
5. Populate the table with all the car models of “Maruti Suzuki’ , “Hundai” , “Honda” etc companies.
( Please Fill Proper and Relevant Values for Each Tuple)

   SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (2, 'Maruti Suzuki Alto', 'Maruti Suzuki', 1100, 'Red', 4, 1100, 120, 5500, 500000, 600000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (3, 'Hyundai Sonata', 'Hyundai', 2000, 'Silver', 4, 1400, 180, 5800, 1800000, 2000000);
   
SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (4, 'Hyundai Elantra', 'Hyundai', 1800, 'White', 4, 1500, 170, 5900, 360000, 400000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (5, 'Honda Civic', 'Honda', 1600, 'Black', 4, 1400, 175, 6200, 370000, 410000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (6, 'Honda Accord', 'Honda', 2200, 'Gray', 4, 1600, 190, 6300, 2500000, 2800000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (7, 'Toyota Corolla', 'Toyota', 1700, 'Silver', 4, 1400, 165, 5800, 1800000, 2000000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (8, 'Toyota Camry', 'Toyota', 2500, 'Blue', 4, 1600, 200, 6500, 2060000, 2090000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (9, 'Nissan Altima', 'Nissan', 2000, 'Red', 4, 1500, 175, 6000, 2200000, 2400000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (10, 'Ford Focus', 'Ford', 1600, 'White', 4, 1400, 170, 5900, 1900000, 2100000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (11, 'Chevrolet Cruze', 'Chevrolet', 1800, 'Black', 4, 1500, 175, 6000, 2000000, 2200000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (12, 'Kia Forte', 'Kia', 1500, 'Gray', 4, 1300, 160, 5700, 1700000, 1900000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (13, 'Volkswagen Golf', 'Volkswagen', 1600, 'Blue', 4, 1400, 170, 5800, 2000000, 2200000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (14, 'Mazda 3', 'Mazda', 2000, 'Red', 4, 1500, 175, 6000, 2100000, 2300000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (15, 'Subaru Impreza', 'Subaru', 1600, 'Silver', 4, 1400, 165, 5800, 1900000, 2100000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (16, 'Mercedes-Benz C-Class', 'Mercedes-Benz', 2500, 'Black', 4, 1600, 200, 6500, 3000000, 3200000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (17, 'BMW 3 Series', 'BMW', 2000, 'White', 4, 1500, 180, 6200, 2800000, 3000000);

1 row created.

SQL> INSERT INTO Car (ModelNo, ModelName, Company, EngineCapacity, Color, Doors, Weight, TopSpeed, RPM, CostPrice, SalePrice)
  2  VALUES
  3  (18, 'Audi A4', 'Audi', 2200, 'Gray', 4, 1600, 185, 6300, 2700000, 2900000);

1 row created.
   
6. Write queries for the following outputs.
➢ Show all records
  SQL> select * from car;

   MODELNO MODELNAME                 COMPANY           ENGINECAPACITY COLOR           DOORS     WEIGHT   TOPSPEED        RPM  COSTPRICE  SALEPRICE
---------- ------------------------- ----------------- -------------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
         1 Maruti Suzuki Swift       Maruti Suzuki               1200 Blue                5       1100        160       6000     800000     950000
         2 Maruti Suzuki Alto        Maruti Suzuki               1100 Red                 4       1100        120       5500     500000     600000
         3 Hyundai Sonata            Hyundai                     2000 Silver              4       1400        180       5800    1800000    2000000
         4 Hyundai Elantra           Hyundai                     1800 White               4       1500        170       5900     360000     400000
         5 Honda Civic               Honda                       1600 Black               4       1400        175       6200     370000     410000
         6 Honda Accord              Honda                       2200 Gray                4       1600        190       6300    2500000    2800000
         7 Toyota Corolla            Toyota                      1700 Silver              4       1400        165       5800    1800000    2000000
         8 Toyota Camry              Toyota                      2500 Blue                4       1600        200       6500    2060000    2090000
         9 Nissan Altima             Nissan                      2000 Red                 4       1500        175       6000    2200000    2400000
        10 Ford Focus                Ford                        1600 White               4       1400        170       5900    1900000    2100000
        11 Chevrolet Cruze           Chevrolet                   1800 Black               4       1500        175       6000    2000000    2200000
        12 Kia Forte                 Kia                         1500 Gray                4       1300        160       5700    1700000    1900000
        13 Volkswagen Golf           Volkswagen                  1600 Blue                4       1400        170       5800    2000000    2200000
        14 Mazda 3                   Mazda                       2000 Red                 4       1500        175       6000    2100000    2300000
        15 Subaru Impreza            Subaru                      1600 Silver              4       1400        165       5800    1900000    2100000
        16 Mercedes-Benz C-Class     Mercedes-Benz               2500 Black               4       1600        200       6500    3000000    3200000
        17 BMW 3 Series              BMW                         2000 White               4       1500        180       6200    2800000    3000000
        18 Audi A4                   Audi                        2200 Gray                4       1600        185       6300    2700000    2900000

18 rows selected.
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
