CREATE DATABASE StudentManagement;
USE StudentManagement;

-- Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    course_opted VARCHAR(100),
    mobile_no VARCHAR(10) NOT NULL,
    enrollment_date DATE NOT NULL, 
    enrolled BOOLEAN
);

-- Enrollments Table
CREATE TABLE Enrollments (
    enroll_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    join_date DATE,
    course_opted VARCHAR(100) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);


