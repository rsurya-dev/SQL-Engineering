# Day 07 - String Functions in SQL Server

## What I learned

Today I practiced string functions in SQL Server and used them to filter employee names, extract parts of strings, generate email IDs, and split customer names into first and last names.

Topics covered:

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
- `SP_RENAME`
- `COMMIT`

## 1. LIKE and LEN()

I practiced finding employee names containing exactly five characters.

```sql
SELECT *
FROM EMP
WHERE ENAME LIKE '_____';
```

In a LIKE pattern, each underscore represents exactly one character.

I also used:

```sql
SELECT *
FROM EMP
WHERE LEN(ENAME) = 5;
```

`LEN()` returns the number of characters, excluding trailing spaces in SQL Server.

I then combined conditions:

```sql
SELECT *
FROM EMP
WHERE LEN(ENAME) = 5
   OR LEN(ENAME) > 5;
```

This returns names with more than four characters, subject to how SQL Server counts trailing spaces.

## 2. LEFT() and RIGHT()

I practiced extracting characters from the beginning and end of a string.

```sql
SELECT LEFT('HELLO WELCOME', 3) AS LEFT1;
```

Result: `HEL`

```sql
SELECT RIGHT('HELLO WELCOME', 3) AS RIGHT1;
```

Result: `OME`

I also checked whether employee names start and end with the same character:

```sql
SELECT *
FROM EMP
WHERE LEFT(ENAME, 1) = RIGHT(ENAME, 1);
```

This compares the first character with the last character of each employee name.

I filtered names beginning with `AL` using:

```sql
SELECT *
FROM EMP
WHERE LEFT(ENAME, 2) = 'AL';
```

This is useful for extracting prefixes or checking name patterns.

## 3. SUBSTRING()

I practiced extracting characters from a particular position.

```sql
SELECT SUBSTRING('HELLO', LEN('HELLO') - 1, 1);
```

Result: `L`

`SUBSTRING()` takes three main arguments:

- The source string
- The starting position, beginning at 1
- The number of characters to return

In this example, `LEN('HELLO') - 1` evaluates to 4, so SQL Server extracts one character starting at position 4.

## 4. Generating email IDs

I combined string functions to generate an email ID using an employee's name and employee number.

```sql
SELECT
    EMPNO,
    ENAME,
    LOWER(LEFT(ENAME, 3))
        + LEFT(CAST(EMPNO AS VARCHAR(10)), 3)
        + '@tcs.com' AS EMAILID
FROM EMP;
```

The query:

1. Extracts the first three characters of the employee name.
2. Converts those characters to lowercase.
3. Extracts the first three characters of the employee number after converting it to text.
4. Appends the email domain.

This is an example of combining multiple string functions to create a derived value.

The generated address is only a practice example. In a real system, I would need to check uniqueness and follow the organization's actual email naming rules.

## 5. ALTER TABLE and UPDATE

I practiced adding an email column:

```sql
ALTER TABLE EMP
ADD EMAILID VARCHAR(20);
```

I then populated the column:

```sql
UPDATE EMP
SET EMAILID =
    LOWER(LEFT(ENAME, 3))
    + LEFT(CAST(EMPNO AS VARCHAR(10)), 3)
    + '@tcs.com';
```

`ALTER TABLE` changes the structure of the table, whereas `UPDATE` changes the values stored in existing rows.

Because this UPDATE has no WHERE clause, it affects every row in the table. That is intentional only if every employee needs a generated email ID.

I should also check whether `VARCHAR(20)` is long enough for the generated values and whether the new values satisfy any required uniqueness rules.

## 6. CHARINDEX()

I practiced finding the position of a character inside a string.

```sql
SELECT CHARINDEX('O', 'HELLO');
```

Result: `5`

I also practiced:

```sql
SELECT CHARINDEX('O', 'HELLO WELCOME', 6);
```

The third argument specifies the position from which SQL Server begins searching. Here, the search starts at position 6.

`CHARINDEX()` returns the starting position of the first match found from that point. It returns 0 when the search expression is not found.

This function is useful when locating spaces or delimiters before extracting parts of a string.

## 7. Splitting customer names

I practiced separating customer names into first and last names.

```sql
SELECT
    CID,
    SUBSTRING(
        CNAME,
        1,
        CHARINDEX(' ', CNAME) - 1
    ) AS FNAME,
    SUBSTRING(
        CNAME,
        CHARINDEX(' ', CNAME) + 1,
        LEN(CNAME)
    ) AS LNAME
FROM CUSTOMERS;
```

`CHARINDEX(' ', CNAME)` finds the first space in the customer name.

The first `SUBSTRING()` extracts the text before that space. The second extracts the text after it.

This example assumes each customer name contains a space. If a name has no space, the expression for the first name can receive a length of -1 and fail. Names with multiple spaces or multiple parts also need additional handling.

## 8. REPLICATE()

I practiced repeating a character based on the length of an employee's salary.

```sql
SELECT
    ENAME,
    REPLICATE('*', LEN(SAL)) AS SAL
FROM EMP;
```

`REPLICATE()` repeats the supplied expression the requested number of times.

This example displays a number of asterisks based on the length of the salary's text representation. It does not calculate the salary or mask it according to its numeric value.

For example, `REPLICATE('*', 5)` returns `*****`.

## Important observations

- `LEFT()` extracts characters from the beginning of a string.
- `RIGHT()` extracts characters from the end.
- `SUBSTRING()` extracts characters using a starting position and length.
- `LEN()` excludes trailing spaces in SQL Server.
- `CHARINDEX()` returns a position, not the matching character itself.
- `CAST()` converts the employee number to text before character extraction.
- String concatenation with `+` can produce NULL if one of its operands is NULL.
- An UPDATE without WHERE modifies every row.
- String-splitting logic must account for names without spaces and names containing multiple parts.

## Common mistakes to avoid

- Confusing character positions with character counts.
- Forgetting that SQL Server string positions begin at 1.
- Using `CHARINDEX()` without checking whether a delimiter exists.
- Assuming every person's name has exactly two parts.
- Concatenating numeric and character values without considering data types.
- Adding a column without checking its required length.
- Running UPDATE without verifying the intended set of rows.

## Interview questions

1. What is the difference between LEFT() and RIGHT()?
2. How does SUBSTRING() work in SQL Server?
3. What does CHARINDEX() return when a match is not found?
4. What is the difference between LEN() and DATALENGTH()?
5. How can you extract the first name from a full name?
6. Why might a string-splitting query fail when the name contains no space?
7. Why do we use CAST() when working with numeric values and string functions?
8. What does REPLICATE() do?
9. What happens when UPDATE is executed without WHERE?
10. How can NULL affect string concatenation in SQL Server?

## Next topic

Continue practicing string manipulation with `REPLACE()`, `TRIM()`, `LTRIM()`, `RTRIM()` and more robust ways to split strings.