# Day 06 - DDL Commands and Character Functions

## Topics practiced

- `ALTER TABLE` and `ALTER COLUMN`
- `DROP TABLE`
- `TRUNCATE TABLE`
- `ROLLBACK`
- `SP_RENAME`
- `UPPER()`
- `LOWER()`
- `LEN()`
- Implicit transactions

## What I practiced

Today I explored SQL Server commands for changing table structures and renaming database objects.

I practiced ALTER COLUMN, DROP TABLE, TRUNCATE TABLE and SP_RENAME. I also continued learning about transactions and ROLLBACK.

For character functions, I practiced converting employee names to lowercase and finding the length of text using LEN().

## Important observations

- DROP TABLE removes the table itself.
- TRUNCATE TABLE removes all rows but retains the table structure.
- ALTER COLUMN changes an existing column's definition.
- SP_RENAME changes an object's name, but dependent code may need updating.
- UPPER() and LOWER() transform text.
- LEN() excludes trailing spaces in SQL Server.
- SELECT can transform displayed values without modifying the stored data.

## Database

SQL Server - DBDS


## Status

Completed