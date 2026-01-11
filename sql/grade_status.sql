CREATE TABLE grade_status (
    enrollment_id INT PRIMARY KEY,
    status VARCHAR(10)
);

INSERT INTO enrollments (student_id, course_id, semester, grade)
VALUES (1, 2, '2024G', 30);  -- Kaldı olarak eklenmeli

SELECT * FROM grade_status;




