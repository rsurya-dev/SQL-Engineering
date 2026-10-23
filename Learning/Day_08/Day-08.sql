select replace ('hello','ell','abc')

select replace ('he@l@@','@','')

select * from emp
set implicit_transactions on 
select replace(hiredate,'-04-','-10-') from emp

update emp 
set hiredate=replace(hiredate,'-04-','-10')

select translate('hello','elo','   ')

select ename,translate(sal,'0123456789.','$bT*#&@^%!k') from emp
select ename,translate(sal,'0123456789.','$bT*#&@^%!k') as sal from emp

select REPLACE
(translate('abc123xyz456','123456','111111'),'1','')

select REPLACE
(translate('abc123xyz456','abcxyz','aaaaaa'),'a','')

select datepart(dw,getdate())

select ename,datepart(yy,hiredate) as year_of_join from emp

select ename,datepart(yy,hiredate) as 'year of join'
from emp

select*
from emp
where datepart(yy,hiredate) in (1980,1983,1985)

select*
from emp
where datepart(dw,hiredate)=1

select
ename,hiredate,datename(dw,hiredate) as 'day' 
from emp

select datename(dw,'2004-10-16')

select dateadd(dd,10,getdate())





