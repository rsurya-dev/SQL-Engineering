select * from emp123

SET IMPLICIT_TRANSACTIONS ON

SP_RENAME 'EMP123','EMP'

SELECT * FROM EMP

SELECT * FROM EMP
WHERE ENAME LIKE '_____' 

SELECT * FROM EMP
WHERE LEN(ENAME)=5

SELECT * FROM EMP
WHERE LEN(ENAME)=5 OR LEN(ENAME)>5

SELECT LEFT('HELLO WELCOME',3) AS LEFT1

SELECT * FROM EMP
WHERE LEFT(ENAME,1)=RIGHT(ENAME,1)

SELECT * FROM EMP
WHERE LEFT(ENAME,2) = 'AL'

SELECT SUBSTRING('HELLO', LEN('HELLO') - 1, 1);

select  EMPNO,ENAME,
lower(LEFT(ENAME,3)) + LEFT(empno,3)+
'@tcs.com' AS emailid FROM EMP


sp_help emp

SELECT
    EMPNO,
    ENAME,
    LEFT(ENAME, 3) + LEFT(CAST(EMPNO AS VARCHAR(10)), 3)
        + '@TCS.COM' AS EMAILID
FROM EMP;

alter table emp
add emailid varchar(20)

update emp set 
emailid =LOWER(LEFT(ENAME, 3)) + LEFT(CAST(EMPNO AS VARCHAR(10)), 3)
        + '@TCS.COM'

select * from emp

commit
SP_HELP EMP

update emp set 
emailid =LOWER(LEFT(ENAME, 3)) + LEFT(EMPNO,3)
        + '@TCS.COM'

SELECT * FROM EMP

SELECT CHARINDEX('O','HELLO')

SELECT CHARINDEX('O','HELLO WELCOME',6)

select * from customers
select  substring(cname,1,charindex('',cname)-1) from customers

select cid,
substring(cname,1,charindex(' ',cname)-1) as fname,
substring(cname,charindex(' ',cname)+1)  as lname 
from customers

SELECT * FROM PRODUCTS

SET IMPLICIT_TRANSACTIONS ON

SELECT * FROM CUSTOMERS
SELECT ENAME,REPLICATE('*',LEN(SAL)) AS SAL FROM EMP

SELECT REPLICATE(2,5)
