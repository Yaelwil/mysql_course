# 🐬 MySQL Essentials  
## 📘 Creating Tables and Joins  
### 🧑‍🎓 Fourth Lesson – SELECT Queries & Filtering

---

### 🧠 What I Learned:

- 🔍 **Intro to `SELECT` Queries**  
  Learned how to retrieve data from a table using the `SELECT` statement — the foundation of querying in SQL.

- 🏷️ **Selecting Columns & Setting Aliases**  
  Used `SELECT column_name` to pull specific data, and renamed output with `AS`:
  ```sql
  SELECT first_name AS 'First Name' FROM employees;
  ```
-  🔢 **Using Functions in SELECT**  
Used built-in functions like CONCAT(), NOW(), YEAR(), DATEDIFF():
  ```sql
    SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;
  ```

- 🔎 **Filtering Results with WHERE Clause**  
Applied filters to return only the data I need:
  ```sql
    SELECT * FROM employees WHERE department = 'Sales';
  ```

- 📊 **Using GROUP BY and ORDER BY**  
Grouped and sorted data for better insights:
  ```sql
    SELECT department, COUNT(*) AS total
    FROM employees
    GROUP BY department
    ORDER BY total DESC;
  ```





