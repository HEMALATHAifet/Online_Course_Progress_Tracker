-- Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    email VARCHAR(100),
    registration_date DATE
);
-- Courses Table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    category VARCHAR(50),
    total_modules INT
);
-- Enrollments Table (Relationship between Students and Courses)
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
-- Modules Table (Each Course has multiple Modules)
CREATE TABLE Modules (
    module_id INT PRIMARY KEY,
    course_id INT,
    module_name VARCHAR(100),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
-- Progress Table (Tracks which module student has completed)
CREATE TABLE Progress (
    progress_id INT PRIMARY KEY,
    student_id INT,
    module_id INT,
    status VARCHAR(20), -- Completed / In Progress
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (module_id) REFERENCES Modules(module_id)
);
