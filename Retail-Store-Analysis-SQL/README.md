# SQL Fundamentals Practice

This project documents my practice of core SQL concepts, structured in levels from basics to more advanced querying. It is focused on writing clean queries and building a strong foundation for data analysis work.

## Topics Covered

### Level 1 – Basics
- Selecting specific columns with `SELECT`
- Selecting all columns using `SELECT *`
- Removing duplicates with `DISTINCT`
- Filtering rows with `WHERE` using:
  - Comparison operators: `=`, `!=`, `<`, `>`, `<=`, `>=`
  - `BETWEEN`, `IN`, `NOT IN`, `LIKE`
- Combining conditions with `AND`, `OR`, `NOT`
- Sorting results using `ORDER BY` (ascending and descending)
- Limiting rows using `LIMIT` / `TOP` (depending on the database)

### Level 2 – Filtering and Formatting
- Checking missing values with `IS NULL` and `IS NOT NULL`
- Using aliases with `AS` for columns and tables
- Doing simple arithmetic in `SELECT` (e.g., totals, differences)
- Concatenating columns (e.g., first name + last name)
- Basic date/time formatting (e.g., `DATE(order_date)`)

### Level 3 – Aggregations
- Using aggregate functions: `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`
- Grouping data with `GROUP BY`
- Understanding `HAVING` vs `WHERE`
- Grouping by multiple columns

### Level 4 – Joins (Multi-Table Queries)
- `INNER JOIN`
- `LEFT JOIN`
- `RIGHT JOIN` (where supported)
- `FULL OUTER JOIN` (where supported)
- `SELF JOIN` (e.g., employee hierarchy)
- Writing queries with multiple joins

### Level 5 – Subqueries
- Scalar subqueries in the `SELECT` list
- Subqueries in `WHERE` (e.g. comparing to an aggregate)
- Subqueries in `FROM` (inline views / derived tables)
- Using `EXISTS` and `NOT EXISTS`

### Level 6 – Set Operations
- `UNION` and `UNION ALL`
- `INTERSECT` and `EXCEPT` (if supported by the database)

---

This project shows my progress through the essential SQL roadmap, from simple `SELECT` statements to joins, subqueries, aggregations, and set operations, which are key skills for data analysis and reporting.
