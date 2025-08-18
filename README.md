# 👥 User Management System

A simple **User Management System** built using **Java EE (Servlet + JSP)**, **Hibernate**, and **MySQL**.  
This project allows users to register, log in, view/update their profiles, and view a list of all registered users.

---

## 🌐 Live Demo
*Not available*

---

## ✨ Features
- User Registration with validation  
- Secure Login and Logout  
- Profile management (View & Update)  
- View all registered users  
- Persistent data storage with **MySQL + Hibernate**  

---

## 🛠 Tech Stack
- **Backend:** Java EE (Servlets, JSP), Hibernate  
- **Database:** MySQL  
- **Frontend:** JSP, HTML, CSS, Bootstrap  
- **Server:** Apache Tomcat  

---

## 🚀 Getting Started

### Prerequisites
- Install **Java JDK 8+**
- Install **Apache Tomcat** (v9 or above recommended)
- Install **MySQL**
- Set up **Maven**

### Steps to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/AuroSampad2003/User-Management-System.git
   
2. Import the project into your IDE (Eclipse/IntelliJ).
3. Create a MySQL database (e.g., userdb).
4. Update database configuration in hibernate.cfg.xml with your username & password.
5. Deploy the project on Apache Tomcat.
6. Open in browser:
   ```sql
   http://localhost:8080/User-Management-System/

---
   
## 🗄️ Database Schema (SQL Script)
**Run the following script in MySQL to create the required database and table:**
```sql
-- Create database
CREATE DATABASE user_management;
USE user_management

-- Create users table
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  password VARCHAR(255) NOT NULL,
  phone VARCHAR(20),
  address VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
