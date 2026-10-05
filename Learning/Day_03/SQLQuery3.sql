/*
day3
*/
 use DBDS
 select name
 from sys.tables

 ALTER TABLE CUST
ADD CITY VARCHAR(20),
    DOR DATE;
select * from CUST

UPDATE CUST
SET CITY = 'hyd',
    DOR = '2026-06-26'
WHERE CID = 101;

UPDATE CUST
SET CITY = 'blr',
    DOR = '2026-06-26'
WHERE CID = 102;
INSERT INTO CUST (CID, S_NAME, GENDER, AGE, CITY, DOR)
VALUES
(100, 'sachin', 'm', 40, 'hyd', '2026-06-26'),
(103, 'manasa', 'f', 25, 'hyd', '2018-10-15'),
(104, 'david', 'm', NULL, 'hyd', NULL);

 select * from cust
 delete from cust where cid=100

 /*
 customer registered in october month
 */

select * from cust where dor like '____-10-__'

select * from cust where dor like '%10%'

select * from cust where DOR like '%-10-%'


select * from cust where DOR like '%-10-%'

select * from CUST where DOR like '2026%'

/*
IS OPERATOR - used for NULL comparison
*/


/*
code1
*/

CREATE TABLE EMP
(
EMPNO     SMALLINT ,
ENAME     VARCHAR(10),
JOB     VARCHAR(9),
MGR     NUMERIC(4),
HIREDATE DATE,
SAL     MONEY,
COMM     MONEY,
DEPTNO TINYINT
 )

INSERT INTO EMP VALUES
(7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20)

INSERT INTO EMP VALUES
(7499, 'ALLEN', 'SALESMAN', 7698, '20-FEB-1981', 1600, 300, 30)

INSERT INTO EMP VALUES
(7521, 'WARD', 'SALESMAN', 7698, '22-FEB-1981', 1250, 500, 30)

INSERT INTO EMP VALUES
(7566, 'JONES', 'MANAGER', 7839, '2-APR-1981', 2975, NULL, 20)

INSERT INTO EMP VALUES
(7654, 'MARTIN', 'SALESMAN', 7698, '28-SEP-1981', 1250, 1400, 30)

INSERT INTO EMP VALUES
(7698, 'BLAKE', 'MANAGER', 7839, '1-MAY-1981', 2850, NULL, 30)

INSERT INTO EMP VALUES
(7782, 'CLARK', 'MANAGER', 7839, '9-JUN-1981', 2450, NULL, 10)

INSERT INTO EMP VALUES
(7788, 'SCOTT', 'ANALYST', 7566, '09-DEC-1982', 3000, NULL, 20)

INSERT INTO EMP VALUES
(7839, 'KING', 'PRESIDENT', NULL, '17-NOV-1981', 5000, NULL, 10)

INSERT INTO EMP VALUES
(7844, 'TURNER', 'SALESMAN', 7698, '8-SEP-1981', 1500, 0, 30)

INSERT INTO EMP VALUES
(7876, 'ADAMS', 'CLERK', 7788, '12-JAN-1983', 1100, NULL, 20)

INSERT INTO EMP VALUES
(7900, 'JAMES', 'CLERK', 7698, '3-DEC-1981', 950, NULL, 30)

INSERT INTO EMP VALUES
(7902, 'FORD', 'ANALYST', 7566, '3-DEC-1981', 3000, NULL, 20)

INSERT INTO EMP VALUES
(7934, 'MILLER', 'CLERK', 7782, '23-JAN-1982', 1300, NULL, 10)

use dbds
select name 
from sys.tables
select * from EMP

select Ename,SAL*12 AS ANNSAL FROM EMP

 select datediff (yy,'2025-07-01',getdate()) 

 select ename,Datediff(yy,hiredate,getdate()) as experience From emp












