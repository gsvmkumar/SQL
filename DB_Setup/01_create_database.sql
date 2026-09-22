/*
============================================================
01_create_database.sql
============================================================

Purpose:
    Creates the main database for SQL practice.

Database Name:
    sql_practice_db

IMPORTANT:
    Run this file while connected to the PostgreSQL
    "postgres" database, NOT inside sql_practice_db.

After running this:
    1. Refresh the Databases section in pgAdmin.
    2. Open/connect to sql_practice_db.
    3. Run 02_create_tables.sql.
============================================================
*/


-- Remove the database if it already exists
-- WARNING: This deletes the existing sql_practice_db database.
DROP DATABASE IF EXISTS sql_practice_db;


-- Create a fresh database
CREATE DATABASE sql_practice_db;