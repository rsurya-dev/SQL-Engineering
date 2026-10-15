# Day 06 - DDL Commands and Character Functions

## What I learned

Today I practiced SQL Server commands for changing table structures, renaming database objects, and working with built-in character functions.

Topics covered:

- `ALTER TABLE`
- `ALTER COLUMN`
- `DROP TABLE`
- `TRUNCATE TABLE`
- `ROLLBACK`
- `SP_RENAME`
- `UPPER()`
- `LOWER()`
- `LEN()`
- Implicit transactions

## 1. ALTER COLUMN

I practiced changing the data type of an existing column:

```sql
ALTER TABLE EMP
ALTER COLUMN HIREDATE DATETIME;
```

`ALTER COLUMN` changes the definition of an existing column. Here, the HIREDATE column is changed to the DATETIME data type.

Before changing a column's data type in a real database, I should check whether existing values can be converted and whether constraints or dependent objects could be affected.

## 2. DROP TABLE

I practiced:

```sql
DROP TABLE EMP;
```

`DROP TABLE` removes the table definition and its data from the database.

This is different from DELETE, which removes rows while keeping the table, and TRUNCATE TABLE, which removes all rows while keeping the table structure.

I should be careful when running DROP TABLE because it removes the table itself, not just its records.

## 3. TRUNCATE TABLE

I practiced:

```sql
TRUNCATE TABLE EMP;
```

TRUNCATE TABLE removes all rows from a table while retaining its structure.

Unlike DELETE, TRUNCATE does not support a WHERE clause to select particular rows.

In SQL Server, TRUNCATE TABLE can generally be rolled back when executed inside an explicit or active transaction, provided the transaction has not been committed and the operation is otherwise permitted.

## 4. Renaming database objects with SP_RENAME

I practiced renaming a table:

```sql
EXEC sp_rename 'EMP', 'EMP123';
```

I then queried the renamed table:

```sql
SELECT *
FROM EMP123;
```

I also practiced renaming a column:

```sql
EXEC sp_rename 'EMP123.COMM', 'BONUS', 'COLUMN';
```

The third argument specifies that the object being renamed is a column.

After renaming a table or column, I need to update queries and code that refer to the old name. SQL Server does not automatically rewrite every dependent SQL statement when an object is renamed.

## 5. Transactions and ROLLBACK

I continued practicing implicit transactions:

```sql
SET IMPLICIT_TRANSACTIONS ON;
```

I used ROLLBACK while exploring table operations.

`ROLLBACK` reverses eligible uncommitted changes in the current transaction. It does not undo changes that were already committed.

I should check which transaction is active and whether a statement has completed before assuming that a rollback will restore the previous state.

## 6. Character functions

I started practicing SQL Server's built-in character functions.

### UPPER()

`UPPER()` converts lowercase characters to uppercase.

```sql
SELECT UPPER('surya');
```

Result: `SURYA`

### LOWER()

`LOWER()` converts uppercase characters to lowercase.

```sql
SELECT LOWER('SURYA');
```

Result: `surya`

I practiced displaying employee names in lowercase:

```sql
SELECT EMPNO, LOWER(ENAME) AS ENAME, SAL
FROM EMP;
```

I also practiced updating the stored employee names:

```sql
UPDATE EMP
SET ENAME = LOWER(ENAME);
```

The SELECT statement changes only the displayed result. The UPDATE statement changes the values stored in the table.

This distinction is important: use a SELECT expression when I only need a different presentation, and UPDATE when I intentionally want to modify the stored data.

## 7. LEN()

I practiced finding the length of a string:

```sql
SELECT LEN('NARESH IT');
```

In SQL Server, LEN() counts characters but excludes trailing spaces.

I also checked the length of employee names:

```sql
SELECT LEN(ENAME)
FROM EMP;
```

LEN() can be useful for validating text fields, identifying unexpectedly short values, and checking data quality.

If I need to count trailing spaces too, SQL Server's DATALENGTH() can help, but it measures bytes rather than characters.

## Important observations

- `DROP TABLE` removes the table and its data.
- `TRUNCATE TABLE` removes all rows but retains the table structure.
- `DELETE` can remove selected rows using WHERE.
- `ALTER COLUMN` changes an existing column's definition.
- `SP_RENAME` changes an object's name, but dependent code may still refer to the old name.
- `UPPER()` and `LOWER()` transform text in query results.
- `UPDATE` changes stored data, whereas `SELECT` only returns a result.
- `LEN()` excludes trailing spaces in SQL Server.
- `ROLLBACK` applies to eligible uncommitted work in the current transaction.

## Common mistakes to avoid

- Confusing DROP TABLE with TRUNCATE TABLE.
- Assuming TRUNCATE TABLE supports WHERE.
- Renaming a column without checking dependent queries and application code.
- Using UPDATE when I only need to display transformed text.
- Assuming LEN() counts trailing spaces.
- Assuming ROLLBACK can reverse an already committed transaction.

