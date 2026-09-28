-- Create the database
CREATE DATABASE school_management;

-- Select the database
USE school_management;

-- Create students table
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT,
    class VARCHAR(50)
);

-- Create teachers table
CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    subject VARCHAR(100)
);

-- Create courses table
CREATE TABLE courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

-- Create enrollments table
CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Add students
INSERT INTO students (name, age, class)
VALUES
('John Doe', 16, 'Form 3'),
('Mary Jane', 15, 'Form 2'),
('Peter James', 17, 'Form 4');

-- Add teachers
INSERT INTO teachers (name, subject)
VALUES
('Mr. David', 'Mathematics'),
('Ms. Grace', 'English'),
('Mr. James', 'Computer Studies');

-- Add courses
INSERT INTO courses (course_name, teacher_id)
VALUES
('Mathematics', 1),
('English', 2),
('Computer Studies', 3);

-- Add enrollments
INSERT INTO enrollments (student_id, course_id, enrollment_date)
VALUES
(1, 1, '2026-09-28'),
(2, 2, '2026-09-28'),
(3, 3, '2026-09-28');

-- Display the tables
SELECT * FROM students;
SELECT * FROM teachers;
SELECT * FROM courses;
SELECT * FROM enrollments;
