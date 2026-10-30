## Topics Covered
- ISNULL()
- COALESCE()
- Handling NULL values in calculations
- CAST() with ISNULL()
- Introduction to RANK()

## Summary

Practiced handling NULL values using ISNULL() and COALESCE(). Explored replacing missing values, handling NULLs in calculations, and converting numeric values into text.

## Key Takeaways
- ISNULL() replaces NULL with a specified value.
- COALESCE() returns the first non-NULL expression.
- ISNULL() accepts two arguments, while COALESCE() accepts multiple arguments.
- CAST() helps convert values between data types.
- NULL handling depends on the business requirement.

## Example


SELECT
    SNO,
    SNAME,
    ISNULL(M, 0) + ISNULL(P, 0) + ISNULL(C, 0) AS TOTAL
FROM STUDENT;