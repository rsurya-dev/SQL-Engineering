# Day 08 Notes

## Topics Learned
- REPLACE()
- TRANSLATE()
- DATEPART()
- DATENAME()
- DATEADD()

## Key Learnings

1. REPLACE() replaces occurrences of a string pattern.
2. TRANSLATE() replaces individual characters based on their positions.
3. DATEPART() returns a numeric part of a date, such as the year or month.
4. DATENAME() returns a date part as text, such as a weekday name.
5. DATEADD() adds or subtracts an interval from a date.
6. Functions can be nested, allowing the output of one function to become the input of another.
7. Applying functions to date columns in WHERE conditions can affect index usage.

## Example

sql
SELECT *
FROM EMP
WHERE HIREDATE >= '19800101'
  AND HIREDATE < '19810101';