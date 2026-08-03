# Day 01 Notes

## Session Goal

Today's objective was to understand how data is stored inside a relational database and how SQL is used to create tables and retrieve information.

Instead of only learning syntax, I tried to understand why each SQL statement exists and where it would be useful.

---

# 1. CREATE TABLE

## What?

The `CREATE TABLE` statement is used to create a new table inside a database.

A table is made up of columns, and each column stores a specific type of data.

## Why?

Before storing any information, SQL Server needs to know:

- What data will be stored
- What datatype each column should have
- Any constraints that should be applied

Without creating a table, data cannot be inserted.

## When is it used?

Whenever a new entity needs to be stored.

Examples:

- Customers
- Students
- Employees
- Products

## What I observed

While creating a table, choosing the correct datatype is important because SQL Server validates data based on the datatype.

---

# 2. INSERT INTO

## What?

Used to insert new records into a table.

## Why?

After creating a table, it is empty.

INSERT allows data to be stored inside it.

## What I learned

- SQL Server supports inserting multiple rows in a single query.
- The order of values must match the order of columns.

## Observation

Writing one INSERT statement for multiple rows is cleaner than writing multiple INSERT statements.

---

# 3. PRIMARY KEY

## What?

A Primary Key uniquely identifies every record in a table.

## Why?

Without a Primary Key, duplicate records can exist, making it difficult to uniquely identify a row.

## What I observed

When I declared `CID` as a Primary Key, SQL Server prevented duplicate values from being inserted.

This helped me understand that constraints are checked automatically by SQL Server.

## Why this matters

Almost every real-world table should have a Primary Key because it ensures data integrity.

---

# 4. DATE Datatype

## What?

The DATE datatype stores calendar dates.

## What I learned

Initially, I noticed that SQL Server did not treat a date value as an integer.

Instead, it interpreted it as a date literal.

Using the `YYYY-MM-DD` format worked correctly.

## Observation

Using the correct date format avoids ambiguity and makes queries easier to understand.

---

# 5. NULL Values

## What?

NULL represents missing or unknown information.

It does not mean zero or an empty string.

## What I learned

I found two ways to insert NULL values:

1. Explicitly writing `NULL`.
2. Omitting the nullable column during insertion.

Both resulted in SQL Server storing a NULL value.

---

# 6. SELECT Statement

## What?

Used to retrieve data stored inside a table.

## Why?

Once data is inserted, SELECT allows us to verify and analyze it.

## Observation

Using `SELECT *` displays every column in the table.

At this stage, it is useful for learning because I can easily verify whether the inserted data is correct.

---

# 7. WHERE Clause

## What?

The WHERE clause filters records based on a condition.

## Why?

Instead of retrieving every record, it allows me to retrieve only the rows that satisfy a specific condition.

## Commands and Operators Practiced

- =
- >
- <
- >=
- <=
- <>
- AND
- OR

## Observation

Using compound conditions made queries much more specific.

For example, I could filter records based on multiple conditions instead of only one.

---

# Challenges I Faced

### Understanding Primary Key

Initially, I knew that it prevents duplicate records, but I wasn't sure how SQL Server enforces it internally.

I plan to explore this further when learning indexes.

---

### Working with DATE values

At first, I expected dates to behave like numbers.

While practicing, I realized SQL Server treats them as a separate datatype and validates them accordingly.

---

### NULL Values

Initially, I thought NULL was simply an empty value.

After practicing, I understood that NULL represents missing or unknown information, which is different from 0 or an empty string.

---

# New Commands Learned Today

| Command | Purpose |
|----------|---------|
| CREATE TABLE | Create a new table |
| INSERT INTO | Insert records |
| SELECT | Retrieve data |
| WHERE | Filter records |
| PRIMARY KEY | Prevent duplicate records |
| NULL | Represent missing values |

---

# How I Verified My Results

After every INSERT statement, I executed a `SELECT` query to verify that:

- The records were inserted successfully.
- The values matched what I intended to store.
- The table structure behaved as expected.

While experimenting with constraints and datatypes, I observed SQL Server's responses and error messages to better understand how it validates data.

---

# Reflection

Today's session was focused on understanding the basic building blocks of SQL rather than writing complex queries.

The biggest takeaway was realizing that SQL is not just about writing commands—it is about defining rules for how data should be stored, validated, and retrieved.

These fundamentals will make learning joins, aggregations, and advanced querying much easier in the coming days.
