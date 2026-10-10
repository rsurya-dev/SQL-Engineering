# Day 05 - Transactions, DML and DDL

## What I learned

Today I continued practicing data modification in SQL Server and explored commands for changing table structure.

Topics covered:

- `SET IMPLICIT_TRANSACTIONS ON`
- `UPDATE`
- `DELETE`
- `ROLLBACK`
- Updating values using existing column values
- Using `IN` with multiple conditions
- Handling NULL values
- DML and DDL commands
- `sp_help`
- `sys.columns`
- `ALTER TABLE`
- Adding and dropping columns

## 1. Transactions and ROLLBACK

I practiced enabling implicit transactions:

```sql
SET IMPLICIT_TRANSACTIONS ON;
```

I then performed data modification statements and used:

```sql
ROLLBACK;
```

`ROLLBACK` reverses uncommitted changes in the current transaction.

This is useful when testing modifications and checking their effects without permanently retaining the changes.

When implicit transactions are enabled, certain statements start a transaction automatically. Subsequent statements can remain part of that transaction until it is committed or rolled back.

I should remember that ROLLBACK does not undo changes that have already been committed.

## 2. UPDATE using existing column values

I practiced modifying values using expressions involving existing column values.

Example:

```sql
UPDATE EMP
SET SAL = SAL + (SAL * 0.2)
WHERE JOB IN ('CLERK', 'MANAGER')
  AND DEPTNO IN (10, 20);
```

This increases the existing salary by 20%.

For example, if the salary is 1,000:

- Increase = 1,000 * 0.2 = 200
- New salary = 1,200

This is different from assigning a fixed salary to every matching employee.

### Important calculation observation

In my script, I also used an expression similar to:

```sql
COMM = COMM + (COMM + 0.1)
```

This does not increase commission by 10%. If the intention is a 10% increase, the expression would normally be:

```sql
COMM = COMM + (COMM * 0.1)
```

The formula must match the intended business rule. I should also consider what happens when COMM is NULL, because arithmetic involving NULL normally returns NULL.

## 3. Using IN with AND

I practiced filtering rows using multiple conditions:

```sql
WHERE JOB IN ('CLERK', 'MANAGER')
  AND DEPTNO IN (10, 20)
```

The first IN checks whether the job matches either listed value. The second checks whether the department number matches either listed value.

Because the conditions use AND, both conditions must be satisfied.

For example, an employee must have a job of CLERK or MANAGER and belong to department 10 or 20.

This is useful when filtering employees, orders, products or transactions across multiple categories.

## 4. DELETE with multiple conditions

I practiced:

```sql
DELETE FROM EMP
WHERE JOB = 'CLERK'
   OR JOB LIKE '%MAN%';
```

This targets rows where the job is CLERK or the job contains MAN.

The OR operator means that satisfying either condition is enough.

Before running a DELETE, I should inspect the target rows:

```sql
SELECT *
FROM EMP
WHERE JOB = 'CLERK'
   OR JOB LIKE '%MAN%';
```

This helps confirm which rows would be affected.

A DELETE without a WHERE clause can remove every row from the table, so the filter must be checked carefully.

## 5. Updating a column to NULL

I practiced:

```sql
UPDATE EMP
SET SAL = NULL
WHERE SAL = 1600;
```

This sets SAL to NULL for rows where the current salary is 1600, provided the column allows NULL values.

NULL represents a missing or unknown value. It is not the same as zero or an empty string.

To find rows with missing salaries:

```sql
SELECT *
FROM EMP
WHERE SAL IS NULL;
```

Using `SAL = NULL` is incorrect for checking NULL values.

## 6. DML and DDL

I explored the difference between DML and DDL.

### DML - Data Manipulation Language

DML commands work with the data stored in tables.

Examples:

- `INSERT`
- `UPDATE`
- `DELETE`

### DDL - Data Definition Language

DDL commands define or change database objects and their structure.

Examples:

- `CREATE TABLE`
- `ALTER TABLE`
- `DROP TABLE`

Changing values stored in a table is different from changing the table's structure.

## 7. Inspecting table structure with sp_help

I practiced:

```sql
EXEC sp_help 'EMP';
```

`sp_help` provides information about a database object, including its columns, data types and other structural properties.

It is useful when I need to understand an existing table before writing queries or modifying its schema.

## 8. Exploring sys.columns

I explored SQL Server's system catalog view:

```sql
SELECT *
FROM sys.columns;
```

`sys.columns` contains metadata about columns belonging to database objects.

To inspect the columns of a particular table:

```sql
SELECT *
FROM sys.columns
WHERE object_id = OBJECT_ID('dbo.EMP');
```

I also practiced summing the maximum column lengths:

```sql
SELECT SUM(max_length) AS Total_Length_Bytes
FROM sys.columns
WHERE object_id = OBJECT_ID('dbo.EMP');
```

This adds the metadata `max_length` values for the table's columns. It does not measure the actual storage currently used by the table. Variable-length columns may use less than their maximum declared length.

## 9. ALTER TABLE

I practiced adding a column:

```sql
ALTER TABLE EMP
ADD gender CHAR(1);
```

This changes the table structure by adding a column named gender.

I then updated a row:

```sql
UPDATE EMP
SET gender = 'M'
WHERE empno = 7369;
```

Finally, I practiced dropping the column:

```sql
ALTER TABLE EMP
DROP COLUMN gender;
```

ALTER TABLE changes the schema, whereas UPDATE changes values stored in existing rows.

Dropping a column removes that column and its data when the operation succeeds. In a real database, I should check whether the column is used by constraints, indexes, views, stored procedures or applications.

## How SQL Server processes these operations

For an UPDATE or DELETE, SQL Server identifies the rows satisfying the WHERE condition and applies the requested modification.

For DDL statements such as ALTER TABLE, SQL Server changes the table's schema. Such changes can require locks and affect other queries using the table.

The transaction context matters for data modifications and supported schema changes. I should understand which transaction is active before relying on ROLLBACK.

## Common mistakes to remember

- UPDATE without WHERE can modify every row.
- DELETE without WHERE can delete every row.
- Use IS NULL rather than = NULL.
- Check the arithmetic in calculated UPDATE expressions.
- AND requires both conditions to be true; OR requires at least one.
- ROLLBACK affects the current uncommitted transaction.
- ALTER TABLE changes the schema, not just the values.
- `sys.columns.max_length` is metadata, not a measurement of actual table storage.
- Inspect the affected rows before running a destructive statement.

## Interview questions

1. What is the difference between DML and DDL?
2. What is an implicit transaction in SQL Server?
3. What does ROLLBACK do?
4. What is the difference between NULL and zero?
5. Why do we use IS NULL instead of = NULL?
6. What happens when UPDATE has no WHERE clause?
7. What is the difference between ALTER TABLE and UPDATE?
8. How would you inspect the structure of an existing table?
9. What information is available in sys.columns?
10. How would you safely test a DELETE statement?

## What I should remember

Before modifying data, I should identify the affected rows, check the conditions and verify the intended calculation.

I also need to distinguish between changing table data and changing table structure. Transactions help control uncommitted changes, but I must know which transaction is active before using ROLLBACK.

## Next topic

Continue with SQL aggregations using COUNT, SUM, AVG, MIN and MAX, followed by GROUP BY and HAVING.