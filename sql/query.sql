SELECT first_name, last_name, birth_date
FROM students;

SELECT 
    s.first_name || ' ' || s.last_name AS student_name,
    c.course_name,
    i.first_name || ' ' || i.last_name AS instructor_name
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
JOIN instructors i ON c.instructor_id = i.instructor_id;

SELECT 
    s.first_name || ' ' || s.last_name AS student_name,
    c.course_name,
    e.grade,
    ROUND(AVG(e.grade) OVER (PARTITION BY s.student_id), 2) AS average_grade
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE s.student_id = 1;

SELECT 
    s.first_name || ' ' || s.last_name AS student_name,
    c.course_name,
    e.grade
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id
WHERE e.grade < 50;

SELECT 
    c.course_name,
    ROUND(AVG(e.grade), 2) AS average_grade
FROM enrollments e
JOIN courses c ON e.course_id = c.course_id
GROUP BY c.course_name;

SELECT 
    i.first_name || ' ' || i.last_name AS instructor_name,
    c.course_name,
    COUNT(e.enrollment_id) AS student_count
FROM instructors i
JOIN courses c ON i.instructor_id = c.instructor_id
LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY i.instructor_id, c.course_name;




