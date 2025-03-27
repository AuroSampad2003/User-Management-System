# User Management System

A web application built using Java EE, Servlets, JSP, Hibernate, and MySQL that allows users to:
- Register an account
- Log in securely
- View and update their profile information
- Manage a list of all users in the system

## Features
- **User Registration:** Sign up by providing a username, password, and personal details.
- **Login System:** Secure authentication for users to access their account.
- **Profile Management:** Users can view and update their profile, including personal information.
- **User Directory:** Admin users can manage and view the list of all registered users.

## Prerequisites
- **Java Development Kit (JDK)** 8 or higher
- **Apache Tomcat** (or another Java EE container)
- **MySQL Database** (for storing user data)

## Installation

### 1. Clone the repository
Clone the project to your local machine using the following command:

```bas
git clone https://github.com/yourusername/user-management-system.git
```


### 2. Database Setup
  Create a new MySQL database for the project.

  Edit the hibernate.cfg.xml file in the src/main/resources folder to match your MySQL credentials (database name,     username, password).

### 3. Deploy to Apache Tomcat
  Package your project into a .war file.

  Deploy the .war file to your Apache Tomcat server's webapps directory.

### 4. Run the Project
  Start the Tomcat server.
  
  Visit [http://localhost:8080/user-management-system](http://localhost:8080/User_Management_System) in your browser to   access the application.

## Usage
### 1. Registration
  Navigate to the Register page.
  
  Enter your username, password, and other required details to create an account.

### 2. Login
  After registration, log in using your credentials on the Login page.
  
  If your login is successful, you’ll be redirected to your profile page.

### 3. Profile Management
  Once logged in, go to your Profile page to view or edit your personal information.

  You can update your details such as email, address, and password.

### 4. User Directory
  Admin users can access the User Directory to view a list of all registered users in the system.
  
  Admins can perform CRUD (Create, Read, Update, Delete) operations on users.

