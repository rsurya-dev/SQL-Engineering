# Day 04 - DISTINCT, TOP, ORDER BY and Transactions

## What I learned

Today I practiced a few SQL Server features used for controlling query results and modifying data safely.

The main topics were:

- DISTINCT
- TOP
- ORDER BY
- ASC and DESC
- SET IMPLICIT_TRANSACTIONS ON
- ROLLBACK
- Updating multiple columns
- Updating rows using multiple conditions
- Using TOP together with ORDER BY

---

## 1. DISTINCT

DISTINCT removes duplicate combinations from the result.

SELECT DISTINCT job
FROM emp;