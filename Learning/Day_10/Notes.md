# Day 10 Notes

## Topics Learned
- CAST()
- TRY_CAST()
- CONVERT()
- TRY_CONVERT()
- Data type conversion
- Converting text to MONEY and DATE

## Key Learnings

1. CAST() converts an expression from one data type to another.
2. TRY_CAST() returns NULL when a conversion fails, where supported.
3. CONVERT() converts data types and supports a style parameter for date formatting.
4. TRY_CONVERT() returns NULL for most failed conversions and also supports a style parameter.
5. Style 105 represents dates in dd-mm-yyyy format.
6. TRY_CAST() and TRY_CONVERT() help identify invalid values without stopping the query due to ordinary conversion failures.

## Example

sql
SELECT CAST('123.45' AS MONEY);

SELECT TRY_CAST('abc' AS MONEY);

SELECT CONVERT(DATE, '25-10-2026', 105);

SELECT TRY_CONVERT(DATE, 'invalid-date', 105);