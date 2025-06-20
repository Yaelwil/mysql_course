## Overview  
In this lesson, I learned the basics of MySQL, set up a MySQL database using Docker, and explored some GUI admin tools.  
I installed all of the 3 tools that I can compare and see different GUI

### 1. Set up MySQL with Docker Compose  
- Created a `docker-compose.yaml` file to run MySQL with phpMyAdmin and Adminer.  
- Configured ports for easy access:
  - phpMyAdmin on [localhost:8081](http://localhost:8081)  
  - Adminer on [localhost:8082](http://localhost:8082)  

[docker-compose.yaml](docker/docker-compose.yaml)

Don't forget to create `.env` file with the following variables  
`MYSQL_ROOT_PASSWORD`  
`MYSQL_DATABASE`  
`MYSQL_USER`  
`MYSQL_PASSWORD`

### 2. Installed Sqlectron on Ubuntu  

<pre>
wget https://github.com/sqlectron/sqlectron-gui/releases/download/v1.38.0/sqlectron_1.38.0_amd64.deb
sudo dpkg -i sqlectron_1.38.0_amd64.deb
sudo apt-get install -f
sqlectron
</pre>

### 3. Learned basic SQL commands  
- Created tables, inserted data.

### 4. Understood relational database concepts  
- Tables, schemas, and relationships (one-to-many, one-to-one, many-to-many).

### 5. Tried Different Database GUIs
I installed and used three different MySQL admin tools — 
* phpMyAdmin
* Adminer
* Sqlectron  

To compare their interfaces and features.
This helped me understand the pros and cons of each tool and gave me a better sense of what kind of GUI I prefer for managing databases visually.