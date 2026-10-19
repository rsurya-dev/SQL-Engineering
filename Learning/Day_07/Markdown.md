# Day 07 - String Functions in SQL Server

## Topics Covered

- `LIKE`
- `LEN()`
- `LEFT()`
- `RIGHT()`
- `SUBSTRING()`
- `CHARINDEX()`
- `LOWER()`
- `REPLICATE()`
- String concatenation
- `ALTER TABLE`
- `UPDATE`

## Practice Summary

Today I practiced SQL Server string functions to filter names, extract characters, locate specific characters and split customer names into first and last names.

I combined functions such as `LEFT()`, `LOWER()`, `CAST()` and string concatenation to generate sample email IDs.

I also explored how `CHARINDEX()` returns a character's position and how that position can be used inside `SUBSTRING()` to extract parts of a string.

## Key Learnings

- `LEFT()` extracts characters from the beginning of a string.
- `RIGHT()` extracts characters from the end.
- `SUBSTRING()` extracts characters from a specified position.
- `CHARINDEX()` returns the position of a matching expression, or `0` if no match is found.
- `LEN()` counts characters but excludes trailing spaces in SQL Server.
- `REPLICATE()` repeats a string a specified number of times.
- `CAST()` converts a value from one data type to another.
- String concatenation using `+` can return NULL when an operand is NULL.
- `UPDATE` without a `WHERE` clause affects every row in the table.

## Example: Extracting First and Last Names

```sql
SELECT
    CID,
    SUBSTRING(CNAME, 1, CHARINDEX(' ', CNAME) - 1) AS FNAME,
    SUBSTRING(CNAME, CHARINDEX(' ', CNAME) + 1, LEN(CNAME)) AS LNAME
FROM CUSTOMERS;
```

`CHARINDEX()` locates the first space. `SUBSTRING()` then extracts the text before and after that position.

This example assumes each name contains a space. Names with no spaces or multiple parts require additional handling.

## Example: Generating an Email ID

```sql
SELECT
    EMPNO,
    ENAME,
    LOWER(LEFT(ENAME, 3))
        + LEFT(CAST(EMPNO AS VARCHAR(10)), 3)
        + '@tcs.com' AS EMAILID
FROM EMP;
```

This combines string extraction, lowercase conversion, type conversion and concatenation to generate a sample email ID.

## Common Mistakes

- Confusing a character's position with the number of characters.
- Forgetting that SQL Server string positions begin at `1`.
- Assuming every name contains a space.
- Using numeric values with string functions without considering data types.
- Using `UPDATE` without checking which rows will be affected.

## Interview Preparation

1. What is the difference between `LEFT()` and `RIGHT()`?
2. How does `SUBSTRING()` work?
3. What does `CHARINDEX()` return if the character is not found?
4. What is the difference between `LEN()` and `DATALENGTH()`?
5. How can string functions be combined to split a full name?
6. Why is `CAST()` used when extracting characters from a numeric value?

