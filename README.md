# Week-8-Assignment-Python-
# Clinic Booking System 🏥

## 📘 Project Title
**Clinic Booking System - SQL Database Design**

## 📄 Description
This project implements a fully functional **Clinic Booking System** using **MySQL**.  
It allows a clinic to manage:

- Patients and their information  
- Doctors and their areas of specialization  
- Appointments between patients and doctors  
- Rooms assigned to each appointment  

The database is structured to reflect real-world clinic operations and relationships such as:
- One-to-Many (e.g., one doctor has many appointments)
- Many-to-Many (e.g., doctors can have multiple specializations)
- One-to-One (e.g., one appointment assigned to one room)

## 🛠️ How to Run / Setup the Project

### Requirements:
- MySQL Server (8.0 or later recommended)
- MySQL Workbench or any SQL client (e.g., DBeaver, phpMyAdmin)

### Steps:
1. Open your SQL client (e.g., MySQL Workbench).
2. Create a new SQL file or open an existing project.
3. Import or paste the contents of `clinic_booking_system.sql`.
4. Execute the entire script to create all necessary tables and relationships.
5. (Optional) Add your own data using `INSERT INTO` statements for testing.


Database Structure (ERD)

Key Tables:
patient

doctor

specialization

doctor_specialization (many-to-many relationship)

room

appointment
