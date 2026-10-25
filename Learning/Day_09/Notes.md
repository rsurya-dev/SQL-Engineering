# Day 09 Notes

## Topics Learned
- DATEADD(), DATEDIFF()
- CAST()
- Integer and decimal division
- Modulus operator (%)
- ROUND(), CEILING(), FLOOR()
- DECIMAL data type
- Date filtering

## Key Learnings

1. DATEADD() adds or subtracts an interval from a date.
2. DATEDIFF() counts date-part boundaries crossed, not necessarily completed years or months.
3. CAST() converts an expression from one data type to another.
4. Integer division removes the fractional part. Using a decimal operand preserves fractional results.
5. The modulus operator (%) returns the remainder after division.
6. ROUND() rounds a number to the specified precision. Negative precision rounds to the left of the decimal point.
7. CEILING() returns the smallest integer greater than or equal to a number.
8. FLOOR() returns the largest integer less than or equal to a number.
9. DECIMAL(p,s) defines the total number of digits and the number of digits after the decimal point.

## Important Example

Sssql
SELECT 40 / 12;    -- Integer division
SELECT 40 / 12.0;  -- Decimal division
SELECT 40 % 12;    -- Remainder