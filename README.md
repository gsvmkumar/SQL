# PostgreSQL SQL Practice --- 200 Questions

A structured PostgreSQL practice repository containing **200 SQL
questions**, organized by topic and difficulty progression. The goal is
to build strong SQL fundamentals and develop the ability to solve
practical, interview-style database problems.

## About This Repository

This repository documents my hands-on SQL practice using PostgreSQL. I
worked through 200 questions, starting with basic queries and
progressing to joins, subqueries, CTEs, and advanced window functions.

Each topic is maintained in its own directory, making the solutions
easier to navigate, review, and revise.

## Repository Structure

``` text
SQL/
├── 01_SELECT_BASICS/
├── 02_FILTERING/
├── 03_FUNCTIONS/
├── 04_SQL_FUNCTIONS/
├── 05_GROUP_BY_HAVING/
├── 06_INNER_JOIN/
├── 07_LEFT_JOIN/
├── 08_JOINS/
├── 09_MULTI_JOIN/
├── 10_SUB_QUERIES/
├── 11_SET_OPERATIONS/
├── 12_CTE/
├── 13_OPERATIONS/
├── 14_WIN_FUN_1/
├── 15_WIN_FUN_2/
├── 16_WIN_FUN_3/
├── 17_WIN_FUN_4/
├── DB_Setup/
└── SQL_PRACTICE_QUESTIONS_200.md
```

> Each numbered directory contains SQL solution files for its
> corresponding practice topics. `DB_Setup/` contains the database setup
> scripts, and `SQL_PRACTICE_QUESTIONS_200.md` contains the question
> set.

## Topics Covered

  -----------------------------------------------------------------------
  Area                                Concepts
  ----------------------------------- -----------------------------------
  SQL fundamentals                    `SELECT`, selecting columns,
                                      aliases, sorting

  Filtering                           `WHERE`, comparison operators,
                                      `BETWEEN`, `IN`, pattern matching

  SQL functions                       Aggregate and commonly used SQL
                                      functions

  Grouping                            `GROUP BY`, `HAVING`, aggregate
                                      calculations

  Joins                               `INNER JOIN`, `LEFT JOIN`,
                                      `RIGHT JOIN`, `FULL OUTER JOIN`

  Advanced joins                      Self joins, cross joins, and
                                      multi-table joins

  Subqueries                          Scalar and correlated subqueries,
                                      `EXISTS`, `NOT EXISTS`

  Set operations                      `UNION`, `UNION ALL`, `INTERSECT`,
                                      `EXCEPT`

  CTEs                                Common Table Expressions and
                                      multi-step query composition

  Conditional and data handling       `CASE`, `COALESCE`, `NULL` handling

  Date and string operations          Date extraction, date calculations,
                                      string functions, `LIKE`, `ILIKE`

  Window functions                    `ROW_NUMBER`, `RANK`, `DENSE_RANK`

  Aggregate windows                   Running totals, averages,
                                      department-level calculations

  Window navigation                   `LAG`, `LEAD`, `FIRST_VALUE`,
                                      `LAST_VALUE`, window frames

  Distribution functions              `PERCENT_RANK`, `CUME_DIST`,
                                      `NTILE`
  -----------------------------------------------------------------------

## Database

-   **Database:** PostgreSQL
-   **Setup scripts:** Available in `DB_Setup/`

Run the database setup scripts in the appropriate order to create and
populate the practice database before executing the questions. Check the
files in `DB_Setup/` for the exact script names and order.

## How to Use

1.  Clone this repository.
2.  Set up the PostgreSQL practice database using the scripts in
    `DB_Setup/`.
3.  Open a topic directory.
4.  Read the corresponding question in `SQL_PRACTICE_QUESTIONS_200.md`.
5.  Try solving the question yourself before checking or writing your
    saved solution.
6.  Execute the query against the practice database and verify the
    result.

### Clone the repository

``` bash
git clone https://github.com/gsvmkumar/SQL.git
cd SQL
```

## Practice Approach

-   Attempt each problem independently before referring to notes or
    examples.
-   Focus on understanding why a query works, not just memorizing its
    syntax.
-   Pay attention to joins, grouping, filtering, and handling of `NULL`
    values.
-   For window functions, understand the roles of `PARTITION BY`,
    `ORDER BY`, and window frames.
-   Revisit earlier questions periodically and try alternative query
    approaches where appropriate.

## Purpose

The purpose of this repository is to strengthen practical SQL skills for
database development, problem-solving, and technical interviews. It also
serves as a revision reference for the SQL concepts practiced.

------------------------------------------------------------------------

**Progress:** 200 SQL practice questions completed.
