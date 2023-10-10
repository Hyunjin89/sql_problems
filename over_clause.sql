-- In SQL, the "OVER" clause is used in conjunction with certain window functions to perform calculations across a set of rows related to the current row within the result set. This clause allows you to create windowed or analytical functions, which provide a way to perform calculations that involve multiple rows without collapsing the result set into a single aggregated value.
-- The "OVER" clause is typically used in SELECT statements and has the following syntax:

```sql
<window function> (<expression>) OVER (
    [PARTITION BY <partitioning expression>]
    [ORDER BY <sorting expression> [ASC | DESC]]
    [ROWS <window frame specification>]
)
```

-- Let's break down the components of the "OVER" clause:

-- 1. `<window function>`: This is a window function such as SUM, AVG, ROW_NUMBER, RANK, DENSE_RANK, etc. It specifies the calculation you want to perform over the set of rows.
-- 2. `<expression>`: This is the column or expression over which the window function will be applied. It defines what values the window function will operate on.
-- 3. `PARTITION BY <partitioning expression>` (optional): This clause divides the result set into partitions or groups based on the values of one or more columns. The window function is applied separately to each partition, allowing you to perform calculations within specific groups.
-- 4. `ORDER BY <sorting expression> [ASC | DESC]` (optional): This clause defines the order in which rows are processed within each partition. It is used to establish the row's position relative to others within the partition. If omitted, the function operates on all rows within the partition.
-- 5. `ROWS <window frame specification>` (optional): This clause defines the window frame, which specifies the range of rows to include in the calculation. The window frame can be based on a specified number of rows before and after the current row, or it can be unbounded (include all rows in the partition).

-- Here's a simple example using the "OVER" clause with the SUM window function to calculate the total salary for each employee within their department partition:

```sql
SELECT
    EmployeeID,
    Department,
    Salary,
    SUM(Salary) OVER (PARTITION BY Department) AS TotalDepartmentSalary
FROM
    Employees;
```

-- In this example, the "SUM(Salary) OVER (PARTITION BY Department)" calculates the sum of salaries for each employee's department, creating a running total within each partition.

-- The "OVER" clause is a powerful feature in SQL for performing complex analytical operations and is commonly used in tasks like ranking, calculating moving averages, and identifying percentiles within a dataset.
