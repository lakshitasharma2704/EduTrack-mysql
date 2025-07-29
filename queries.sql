-- queries.sql

-- 1. Show all students enrolled in a course
SELECT s.name, c.course_name
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;

-- 2. Count attendance for a student
SELECT student_id, course_id, COUNT(*) AS total_classes,
       SUM(CASE WHEN status = 'Present' THEN 1 ELSE 0 END) AS classes_attended
FROM attendance
GROUP BY student_id, course_id;

-- 3. Average grade in a course
SELECT c.course_name, AVG(e.grade) AS avg_grade
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
GROUP BY c.course_name;

-- 4. Courses taught by each teacher
SELECT t.name AS teacher_name, c.course_name
FROM course_teachers ct
JOIN teachers t ON ct.teacher_id = t.teacher_id
JOIN courses c ON ct.course_id = c.course_id;

-- 5. List students and their grades
SELECT s.name, c.course_name, e.grade
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;
