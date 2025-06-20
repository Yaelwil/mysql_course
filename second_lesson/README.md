# 📘 Second Lesson: Creating Tables in MySQL

## 🧠 Overview
In this lesson, I deepened my understanding of how to create and manage tables in MySQL.  
I practiced working with data types, constraints, and advanced column features like virtual and generated columns.

---

## 🛠️ What I Practiced

### ✅ Creating a Basic Table
- Created an `employees` table with `first_name` and `last_name` columns using the `VARCHAR` type.
- Learned that the maximum size for a `VARCHAR` column is **65,535 bytes** (limited by row size).

### ✅ Adding Constraints
- Added an `id` column with:
  - `INT` type  
  - `NOT NULL` constraint  
  - `PRIMARY KEY` constraint  
  - `AUTO_INCREMENT` behavior to automatically generate unique IDs

### ✅ Generated Columns
- Created a `full_name` column using:
  ```sql
  full_name VARCHAR(61) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)) VIRTUAL

Learned the difference between VIRTUAL and STORED generated columns.

### ✅ Adding a Birth Date Field

- Added a birth_date column with the DATE data type.
- Learned that MySQL can infer the century if only two digits are used for the year.

### Additional files-

- [docker-compose.yaml](docker/docker-compose.yaml)
- [create_users_table.sql](db/create_users_table.sql)