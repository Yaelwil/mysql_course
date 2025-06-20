## 📘 Overview  
In this lesson, I learned the basics of MySQL, set up a MySQL database using Docker, and explored some GUI admin tools.  
I installed all three tools so I could compare and better understand the differences between database GUIs.

---

### 🐳 1. Set up MySQL with Docker Compose  
- 🛠️ Created a `docker-compose.yaml` file to run:
  - 🐬 MySQL  
  - 🌐 phpMyAdmin (➡️ [localhost:8081](http://localhost:8081))  
  - ⚙️ Adminer (➡️ [localhost:8082](http://localhost:8082))  

📂 [docker-compose.yaml](docker/docker-compose.yaml)

📌 Don't forget to create a `.env` file with the following variables:  
- 🔑 `MYSQL_ROOT_PASSWORD`  
- 🧾 `MYSQL_DATABASE`  
- 👤 `MYSQL_USER`  
- 🔒 `MYSQL_PASSWORD`

---

### 🧰 2. Installed Sqlectron on Ubuntu  
📥 Installed Sqlectron from `.deb` package:

<pre>
wget https://github.com/sqlectron/sqlectron-gui/releases/download/v1.38.0/sqlectron_1.38.0_amd64.deb
sudo dpkg -i sqlectron_1.38.0_amd64.deb
sudo apt-get install -f
sqlectron
</pre>

### 💾 3. Learned basic SQL commands
- 🧱 Created tables 
- ✍️ Inserted data 
- 🔍 Ran basic SQL queries

### 🧠 4. Understood relational database concepts
- 📋 Tables 
- 🧩 Schemas 
- 🔗 Relationships:
  - One-to-many 
  - One-to-one 
  - Many-to-many

### 🖥️ 5. Tried Different Database GUIs

Compared three admin tools visually and functionally:
- 🌐 phpMyAdmin 
- ⚙️ Adminer 
- 📊 Sqlectron

🧭 This comparison helped me understand the pros and cons of each, and what I personally prefer when managing databases.