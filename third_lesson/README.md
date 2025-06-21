# MySQL Essentials

## 📘 Creating Tables and Joins  
### 🧑‍🎓 Third Lesson

---

### 🧠 Overview  
- 🏗️ Intro to MySQL Table Constraints  
- 🔑 Using `PRIMARY KEY` constraints  
- 🔗 Creating `FOREIGN KEY` references  
- 🔍 Querying data across foreign key relationships  
- ✅ Defining `CHECK` constraints (both table-level and column-level)  
- ⚡ Introduction to `TRIGGER`s

---

### 🔑 Key Concepts  

- 🔑 **Primary Key:** Uniquely identifies a row in a table  
- 🔗 **Foreign Key:** References a primary key in another table to enforce relational integrity  
- ✅ **Check Constraint:** Enforces conditions on data in a column or table  
- ⚡ **Triggers:** Automatically execute code in response to events like insert, update, delete  

---

### 🛠 Ways to Join Tables in SQL  

```sql
SELECT * 
FROM product prod 
JOIN categories cat 
ON prod.category_id = cat.category_id;
```

```sql
SELECT product_name, category_name
FROM product prod 
JOIN categories cat 
ON prod.category_id = cat.category_id;
```

```sql
SELECT * 
FROM employees emp
JOIN employees_details emp_det
ON emp.Email = emp_det.Email;
```

```sql
SELECT emp.ID, emp.Email, emp.First_Name, emp.Last_Name, emp.Full_Name, emp_det.Marital_Status, emp_det.Age, emp.Birth_Date
FROM employees emp
JOIN employees_details emp_det ON emp.Email = emp_det.Email;
```

### 📁 Additional files-

- [🐳 docker-compose.yaml](docker/docker-compose.yaml)
- [📜 create_users_table.sql](docker/db/create_users_table.sql)
