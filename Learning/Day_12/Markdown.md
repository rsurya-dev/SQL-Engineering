# Day 12 - SQL Window Functions

## Topics Covered
- ROW_NUMBER()
- DENSE_RANK()
- LAG()
- PARTITION BY
- Common Table Expressions (CTEs)
- DATEDIFF()
- Year-over-year growth calculations

## Summary

Practiced SQL Server window functions for employee ranking, retrieving previous row values, calculating population growth, and finding date differences.

## Key Takeaways
- ROW_NUMBER() assigns unique sequential numbers.
- DENSE_RANK() assigns ranks without gaps.
- PARTITION BY performs calculations separately within groups.
- LAG() retrieves values from previous rows.
- CTEs help filter results from window functions.
- DATEDIFF() calculates date differences.

## Example


SELECT ENAME, DEPTNO, SAL,
       DENSE_RANK() OVER (
           PARTITION BY DEPTNO
           ORDER BY SAL DESC
       ) AS RANK_NO
FROM EMP;