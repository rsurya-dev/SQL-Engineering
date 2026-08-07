CREATE TABLE Customer
(
    CID INT,
    NAME VARCHAR(50),
    GENDER CHAR(1),
    AGE INT,
    CITY VARCHAR(50),
    DOR DATE
);

INSERT INTO Customer (CID, NAME, GENDER, AGE, CITY, DOR)
VALUES
(100, 'sachin', 'm', 40, 'hyd', '2026-06-26'),
(101, 'sindhu', 'f', 25, 'blr', '2026-06-26'),
(102, 'arvind', 'm', 35, 'mum', '2020-02-22'),
(103, 'manasa', 'f', 25, 'hyd', '2018-10-15'),
(104, 'david', 'm', NULL, 'hyd', NULL),
(105, 'sindhu', 'f', NULL, 'del', NULL),
(105, 'sindhu', 'f', NULL, 'del', NULL),
(105, 'sindhu', 'f', NULL, 'del', NULL);

SELECT *
FROM Customer;

/*
customers joined in 2020 ?
*/

Select * from Customer
where DOR>='2020-01-01' And dor<='2020-12-31'

/*
list of customers staying in hyd,mum and age> 30
*/

select* from customer where CITY='hyd'
                      or CITY='mum' and AGE>30
/* 
here 'AND' is executed first and next "OR" 
to prevent this use paranthsis
in above case 'and' is applied only to city=mum
*/

select* from customer where ( CITY='hyd'
                      or CITY='mum' )and AGE>30

select* from customer where cid=100 or cid=103 and cid=105

SELECT *
FROM Customer
WHERE CID = 100
   OR CID = 103
   OR CID = 105;

create table smark
(sno int,
sname varchar(10),
s1 tinyint,
s2 tinyint,
s3 tinyint)

insert into smark values
(1,'A',80,90,70),
(2,'B',30,60,50),
(3,'C',50,30,20),
(4,'D',10,20,30)

SELECT * FROM smark
/* STUDENTS WHO PASSED 
*/
SELECT * FROM SMARK WHERE
        S1>35 AND S2>35 AND S3>35

/* STUDENTS WHO FAILED 
*/
SELECT * FROM SMARK WHERE
        S1<35 OR S2<35 OR S3<35

/*
STUDENTS WHO FAILED EXACTLY ONE SUB
*/
SELECT * FROM SMARK WHERE
(S1<35 AND S2>=35 AND S3>=35) OR
(S1>=35 AND S2<35 AND S3>=35) OR
(S1>35 AND S2>35 AND S3<35)

/*
students failed exactly 2 sub
*/
SELECT * FROM SMARK WHERE
(s1>=35 and s2<35 and s3<35) or
(s1<35 and s2>=35 and s3<35) or
(s1<35 and s2<35 and s3>=35)

/*
students failed all 3 sub
*/

select * from smark where
s1<35 and s2<35 and s3<35

/*
IN operator - used for list comparison
use IN opertor for "=" comparison with multiple values
*/

select * from customer

select*
from customer
where cid IN (100,101,102,105)

select *
from customer 
where city IN ('hyd','mum','blr')

/*
Between operator
use between operator for range comparison
*/
select *
from customer 
where age BETWEEN 20 and 30

CREATE TABLE PRODUCTS
(PRODID TINYINT,
 PNAME  VARCHAR(20),
 PRICE  TINYINT,
 CATEGORY VARCHAR(20),
 BRAND   VARCHAR(20)) 

 INSERT INTO PRODUCTS VALUES
 (
 )



