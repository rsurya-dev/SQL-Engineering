use dbds 
select * from Emp

SET IMPLICIT_TRANSACTIONS ON

update EMP
SET COMM=500

UPDATE EMP
SET SAL=SAL+(SAL*0.2),COMM=COMM+(COMM+0.1)
WHERE JOB IN ('CLERK','MANAGER')
		  AND
		  DEPTNO IN (10,20)

DELETE FROM EMP WHERE JOB = 'CLERK' OR JOB LIKE '%MAN%'

ROLLBACK

UPDATE EMP
SET SAL=NULL WHERE SAL =1600

SELECT * FROM EMP

UPDATE EMP
SET JOB='PEON'
WHERE JOB='CLERK'

==========================================================

DDL COMMANDS ( DATA DEFINITION LANGUAGE )

SP_HELP EMP 

select 14*46

14*46

SELECT SUM(max_length) AS Total_Length_Bytes
FROM sys.columns
WHERE object_id = OBJECT_ID('EMP');


SELECT *
FROM sys.columns;

ALTER  table EMP
ADD gender CHAR(1)

select * from EMP

update emp
set gender='M'
where empno=7369

alter table emp
drop column gender

rollback

set implicit_transactions on

