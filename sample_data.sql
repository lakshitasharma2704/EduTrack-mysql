-- sample_data.sql

-- Students
INSERT INTO students (name, email, dob, enrolled_date) VALUES
('Anika Sharma', 'anika@example.com', '2003-05-21', '2021-08-01'),
('Rohan Mehta', 'rohan@example.com', '2002-11-12', '2021-08-01'),
('Priya Singh', 'priya@example.com', '2004-02-05', '2022-08-01');

-- Teachers
INSERT INTO teachers (name, email) VALUES
('Dr. Manish Kapoor', 'kapoor@example.com'),
('Ms. Neha Jain', 'neha@example.com');

-- Courses
INSERT INTO courses (course_name, credits) VALUES
('Database Systems', 4),
('Operating Systems', 3),
('Data Structures', 4);

-- Course-Teacher Mapping
INSERT INTO course_teachers (teacher_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 3);

-- Enrollments
INSERT INTO enrollments (student_id, course_id, grade) VALUES
(1, 1, 85.5),
(1, 2, 78.0),
(2, 1, 91.0),
(3, 3, 87.5);

-- Attendance
INSERT INTO attendance (student_id, course_id, date, status) VALUES
(1, 1, '2025-07-01', 'Present'),
(1, 2, '2025-07-01', 'Absent'),
(2, 1, '2025-07-01', 'Present'),
(3, 3, '2025-07-01', 'Present');
