# 🛠️ Local Service Finder

A full-stack web platform that connects **local service providers** (like electricians, plumbers, cleaners, etc.) with **customers** looking for their services nearby.  
The project allows providers to register, log in, and manage their service listings, while users can browse available services easily.

---

## 🚀 Features

### 👤 Provider Features
- Register as a **service provider** with name, email, and password.  
- Secure **login** using JWT-based authentication.  
- Create, view, update, and delete service listings.  
- Each service includes a **title, description, category, and price**.

### 🌐 Public Features
- Browse a list of all available services.
- Filter services by **category** (e.g., Electrician, Plumber, Mechanic).
- View service details and provider name.

---

## 🧩 Tech Stack

### 🔹 Frontend
- **React.js** with **Bootstrap** for responsive UI  
- Uses **Fetch API** to communicate with backend REST endpoints  

### 🔹 Backend
- **Spring Boot (Java)** for REST API  
- **Spring Security + JWT Authentication** for provider login  
- **MySQL Database** for persistent storage  
- **Maven** for dependency management  

### 🔹 Tools & Others
- **Postman** for API testing  
- **Git & GitHub** for version control  
- **VS Code / IntelliJ IDEA** for development  

## ⚙️ Installation & Setup Guide

### 🔧 Backend (Spring Boot)

1. Open your backend folder:
   cd localservicefinder

Configure your MySQL database in src/main/resources/application.properties:

properties

spring.datasource.url=jdbc:mysql://localhost:3306/localservicefinder

spring.datasource.username=root
spring.datasource.password=yourpassword
spring.jpa.hibernate.ddl-auto=update
jwt.secret=yourSecretKey

Build and run the project:
mvn spring-boot:run
Backend will start on:
👉 http://localhost:8080

🖥️ Frontend (React)
Open frontend folder:
cd localservicefinder-frontend
Install dependencies:
npm install
Start the frontend app:
npm start
Frontend will run on:
👉 http://localhost:3000

