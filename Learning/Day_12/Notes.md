- DENSE_RANK()
- ROW_NUMBER()
- LAG()
- PARTITION BY
- ORDER BY inside window functions
- Common Table Expressions (CTEs)
- Year-over-year population growth
- Date difference calculations

## Key Learnings

1. DENSE_RANK() assigns ranks without skipping numbers when ties occur.
2. ROW_NUMBER() assigns a unique sequential number to each row.
3. PARTITION BY divides rows into groups and calculates rankings separately within each group.
4. LAG() retrieves a value from a previous row without using a self-join.
5. Window functions calculate results across related rows while retaining individual rows.
6. CTEs help organize queries and allow filtering based on calculated window-function results.
7. DATEDIFF() calculates the difference between two dates.

## Example: Ranking Employees


SELECT ENAME, DEPTNO, SAL,
       DENSE_RANK() OVER (
           PARTITION BY DEPTNO
           ORDER BY SAL DESC
       ) AS RANK_NO
FROM EMP;