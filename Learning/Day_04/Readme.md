# Day 04 - DISTINCT, TOP, ORDER BY and Transactions

## Topics practiced

- DISTINCT
- TOP
- ORDER BY
- ASC
- DESC
- SET IMPLICIT_TRANSACTIONS ON
- ROLLBACK
- UPDATE
- Updating multiple columns
- Multiple conditions in UPDATE
- Top-N queries

## What I practiced

Today I worked with controlling query results using DISTINCT, TOP, and ORDER BY.

I practiced ascending and descending sorting and learned why TOP is more useful when combined with ORDER BY.

I also practiced SQL Server transactions using SET IMPLICIT_TRANSACTIONS ON and ROLLBACK. This helped me understand how I can test data modifications and reverse uncommitted changes.

I practiced updating multiple columns and using multiple conditions in an UPDATE statement.

## Important observations

- DISTINCT removes duplicate result combinations.
- TOP limits the number of returned rows.
- ORDER BY defines which rows should appear first.
- TOP without ORDER BY is usually not enough for a meaningful Top-N business question.
- UPDATE without WHERE can modify every row.
- ROLLBACK reverses uncommitted changes in the transaction.

## Database

SQL Server - DBDS

## Files

- Day04_Distinct_Top_OrderBy_Transactions.sql
- Notes.md

## Status

Completed