# Day 05 - Transactions, DML and DDL

## Topics practiced

- `SET IMPLICIT_TRANSACTIONS ON`
- `UPDATE`
- `DELETE`
- `ROLLBACK`
- `IN` with multiple conditions
- `AND` and `OR`
- Updating values using expressions
- NULL handling
- DML and DDL
- `sp_help`
- `sys.columns`
- `ALTER TABLE`
- Adding and dropping columns

## What I practiced

Today I continued practicing data modification in SQL Server using UPDATE and DELETE.

I used multiple conditions to target specific rows, explored updates based on existing column values, and practiced setting a column to NULL.

I also explored transactions using SET IMPLICIT_TRANSACTIONS ON and ROLLBACK to understand how uncommitted changes can be reversed.

For database structure, I used sp_help and sys.columns to inspect metadata. I practiced adding and dropping a column with ALTER TABLE.

## Important observations

- UPDATE and DELETE should be checked carefully before execution.
- IN can represent multiple alternatives within a condition.
- AND requires both conditions to be satisfied, while OR requires at least one.
- NULL must be checked using IS NULL or IS NOT NULL.
- ROLLBACK reverses eligible uncommitted changes in the current transaction.
- ALTER TABLE changes the table structure.
- sys.columns contains metadata and does not directly report actual table storage usage.

## Database

SQL Server - DBDS

## Files

- `Day_05.sql`
- `Notes.md`
- `README.md`

## Status

Completed