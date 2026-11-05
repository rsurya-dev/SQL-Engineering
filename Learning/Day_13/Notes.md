# Day 13 Notes

## Topics Learned
- MAX()
- MIN()
- AVG()
- COUNT()
- DISTINCT with COUNT()
- Aggregate functions

## Key Learnings

1. MAX() returns the highest value in a column.
2. MIN() returns the lowest value in a column.
3. AVG() calculates the average of numeric values.
4. COUNT(column) counts non-NULL values in that column.
5. COUNT(*) counts all rows, including rows containing NULL values.
6. COUNT(DISTINCT column) counts unique, non-NULL values.
7. Aggregate functions can also work with date columns, such as MAX(HIREDATE).

## Examples

SELECT MAX(SAL) FROM EMP;

SELECT MIN(SAL) FROM EMP;

SELECT AVG(SAL) FROM EMP;

SELECT COUNT(EMPNO) FROM EMP;

SELECT COUNT(COMM) FROM EMP;

SELECT COUNT(DISTINCT DEPTNO) FROM EMP;

SELECT COUNT(*) FROM EMP;