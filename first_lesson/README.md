# MySQL Essentials

## 📘 Introduction to MySQL 

### 🧑‍🎓 First Lesson  

---

### 🧠 What is MySQL?
* 🗄️ MySQL is a **relational database management system (RDBMS)** used to store and manage structured data.  
* 🌐 Commonly used in **web applications**, and supports **SQL** for querying and manipulating data.

---

### 💻 How to Use MySQL:
* 💾 Run MySQL on **Windows**, **macOS**, or **Linux**.  
* ☁️ Available via **cloud platforms** like AWS, Azure, or Google Cloud.  
* 🐳 **Docker** makes it fast and easy to run MySQL in containers.

---

### 🧰 Database Tools:
There are both **graphical** and **command-line** tools to manage MySQL:  
* 💬 `mysql` CLI (command line tool)  
* 🖥️ GUI Tools:
  - 🧱 MySQL Workbench  
  - ⚙️ Adminer  
  - 🌐 PHPMyAdmin  
  - 📊 Sqlectron

---

### 🐳 Using Docker Compose for MySQL, PHPMyAdmin, and Adminer:
I created a `docker-compose.yaml` file to run:
- 🐬 MySQL  
- 🌐 PHPMyAdmin ([localhost:8081](http://localhost:8081))  
- ⚙️ Adminer ([localhost:8082](http://localhost:8082))  

📄 Don't forget to create a `.env` file with:
- 🔑 `MYSQL_ROOT_PASSWORD`  
- 📘 `MYSQL_DATABASE`  
- 👤 `MYSQL_USER`  
- 🔒 `MYSQL_PASSWORD`  

This helps me practice running services together and using different admin tools visually.

---

### 🧱 Understanding Relational Databases:
* 📋 Data is stored in **tables** (like spreadsheets)  
* 🔗 Tables can be related through:
  - 🧍‍♂️➡️👥 One-to-many  
  - 🧍‍♂️↔️🧍‍♀️ One-to-one  
  - 👥↔️👥 Many-to-many  
* 🧩 A **schema** defines the structure: tables, columns, data types, and relationships.

---

### 🔍 Types of Database Engines:
- 🗄️ **Relational (SQL)** – e.g., MySQL, PostgreSQL  
- 🧬 **NoSQL** – flexible schemas for unstructured data  
- 🔗 **Graph** – optimized for data relationships (nodes/edges)  
- 📄 **Document-based** – JSON-like structures (e.g., MongoDB)

---

### 📁 Learning Path  
➡️ [🧪 Playground](PLAYGROUND.md)
