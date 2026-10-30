## Topics Learned
- ISNULL()
- COALESCE()
- Handling NULL values
- Type conversion with CAST()
- RANK() introduction

## Key Learnings

1. ISNULL() replaces a NULL value with a specified replacement value.
2. COALESCE() returns the first non-NULL expression from a list.
3. ISNULL() accepts two arguments, whereas COALESCE() accepts multiple arguments.
4. ISNULL() returns the data type of its first argument. The replacement value is converted to that type.
5. COALESCE() follows SQL Server data type precedence when determining the result type.
6. CAST() can convert numeric values into VARCHAR so that text such as 'ABSENT' can be displayed.
7. ISNULL() can be used in calculations to handle missing values.

## Example: Handling NULL in Calculations

SELECT
    SNO,
    SNAME,
    ISNULL(M, 0) + ISNULL(P, 0) + ISNULL(C, 0) AS TOTAL
FROM STUDENT;