# Day 02 - Filtering Data in SQL Server

## Topics Covered

- WHERE clause
- AND operator
- OR operator
- Operator precedence
- Parentheses
- IN operator
- BETWEEN operator
- NULL values in filtering

---

## What I Learned

- The 'WHERE' clause filters rows before they are returned.
- `AND` has higher precedence than 'OR'.
- Parentheses should be used whenever logical conditions may be ambiguous.
- 'IN' is a cleaner alternative to multiple 'OR' conditions involving equality.
- 'BETWEEN' is useful for inclusive range comparisons.

---

## How SQL Server Processes It

Logical query processing order:

1. FROM
2. WHERE
3. GROUP BY
4. HAVING
5. SELECT
6. ORDER BY

Important observation:

'''sql
WHERE CITY='hyd'
   OR CITY='mum'
  AND AGE>30
'''

is interpreted as:

'''sql
WHERE CITY='hyd'
   OR (CITY='mum' AND AGE>30)
'''

because 'AND' is evaluated before 'OR'.

To apply the age condition to both cities:

'''sql
WHERE (CITY='hyd' OR CITY='mum')
  AND AGE>30
'''

---

## Common Mistakes

- Forgetting parentheses.
- Writing long chains of `OR` instead of using 'IN'.
- Assuming SQL evaluates conditions left-to-right.
- Ignoring NULL values in comparisons.

---

## SQL Server vs PostgreSQL

The behavior of:

- WHERE
- AND
- OR
- IN
- BETWEEN

is identical in both SQL Server and PostgreSQL.

---

## Interview Notes

Question:

Why does this query return unexpected results?

/*
sql
WHERE A OR B AND C
*/

Answer:

Because SQL evaluates `AND` before `OR`.
Always use parentheses when the intended logic is not obvious.

---

## Best Practices

- Always format conditions on separate lines.
- Prefer 'IN' over multiple equality comparisons.
- Use parentheses even when not strictly required if they improve readability.