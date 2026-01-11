CREATE VIEW student_grade_report AS
SELECT 
    s.student_id,
    s.first_name || ' ' || s.last_name AS student_name,
    c.course_name,
    e.semester,
    e.grade
FROM enrollments e
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON e.course_id = c.course_id;

SELECT * FROM student_grade_report;
