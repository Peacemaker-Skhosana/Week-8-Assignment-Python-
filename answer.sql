-- DROP statements (optional, for development resets)
DROP TABLE IF EXISTS appointment;
DROP TABLE IF EXISTS doctor_specialization;
DROP TABLE IF EXISTS specialization;
DROP TABLE IF EXISTS room;
DROP TABLE IF EXISTS patient;
DROP TABLE IF EXISTS doctor;

-- Create the patient table
CREATE TABLE patient (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    birth_date DATE,
    gender ENUM('Male', 'Female', 'Other')
);

-- Create the doctor table
CREATE TABLE doctor (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    hire_date DATE NOT NULL
);

-- Create the specialization table
CREATE TABLE specialization (
    specialization_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL UNIQUE
);

-- Many-to-Many relationship between doctors and specializations
CREATE TABLE doctor_specialization (
    doctor_id INT,
    specialization_id INT,
    PRIMARY KEY (doctor_id, specialization_id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id),
    FOREIGN KEY (specialization_id) REFERENCES specialization(specialization_id)
);

-- Create the room table (Each appointment uses one room)
CREATE TABLE room (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_number VARCHAR(10) UNIQUE NOT NULL,
    floor INT NOT NULL
);

-- Create the appointment table
CREATE TABLE appointment (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    room_id INT UNIQUE, -- One-to-One relationship: room per appointment
    reason TEXT,
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctor(doctor_id),
    FOREIGN KEY (room_id) REFERENCES room(room_id)
);
