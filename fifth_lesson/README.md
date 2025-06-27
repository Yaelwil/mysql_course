---
title: 🐬 MySQL Essentials – Lesson 5
---

# 🐬 MySQL Essentials  
## 📘 Creating Tables and Joins  
### 🧑‍🎓 Fifth Lesson – Working with Date & Time

---

### 🧠 What I Learned:

- ⏰ **Intro to Date-Time in MySQL**  
  Learned how MySQL handles date and time data, and why it's important to store time correctly — especially for logging, scheduling, and time zone awareness.

- 🧱 **Overview: DateTime Data Types for MySQL Columns**  
  Explored MySQL’s two main date-time types:
  - `DATETIME`: Stores literal date & time values, unaffected by time zones.
  - `TIMESTAMP`: Stores values in UTC and converts based on the session time zone.

- 🔬 **Exploring DATETIME and TIMESTAMP Data Types**  
  Compared storage size, range, default behaviors, and how each type interacts with session/global time zones:
  ```sql
  CREATE TABLE logs (
    created_at DATETIME,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  );
  ```
- 🗓️ Date and Time Literals in MySQL Language   
Practiced using proper date-time formats:

  ```sql
  '2025-06-27 14:30:00'
  CURRENT_DATE(), CURRENT_TIME(), NOW()
  ```

- 🛠️ Built-in DateTime Manipulation Functions in MySQL  
Used powerful built-in functions to convert, calculate, and display date-time values:

  ```sql
  SELECT NOW(), CURDATE(), DATE_ADD(NOW(), INTERVAL 7 DAY); 
  SELECT TIMESTAMPDIFF(HOUR, UTC_TIMESTAMP(), CONVERT_TZ(UTC_TIMESTAMP(), 'UTC', 'Asia/Jerusalem'));
  SELECT TIME_FORMAT(TIMEDIFF('12:00:00', '09:30:00'), '%H:%i:%s');
  ```