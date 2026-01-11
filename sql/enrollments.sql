CREATE TABLE enrollments (
    enrollment_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    student_id INT NOT NULL REFERENCES students(student_id),
    course_id INT NOT NULL REFERENCES courses(course_id),
    semester VARCHAR(10) NOT NULL,
    grade INT CHECK (grade BETWEEN 0 AND 100)
);

INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES (1, 101, '2023G', 85);
INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES (1, 104, '2023G', 90);
INSERT INTO enrollments(student_id, course_id, semester, grade) VALUES (2, 102, '2023G', 45);
INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES (3, 103, '2023G', 70);
INSERT INTO enrollments  (student_id, course_id, semester, grade)VALUES (4, 101, '2023G', 55);
INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES (5, 104, '2023G', 20);
INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES (2, 101, '2023G', 65);
INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES (3, 101, '2023G', 30);
INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES (5, 103, '2023G', 40);
INSERT INTO enrollments (student_id, course_id, semester, grade) VALUES (4, 104, '2023G', 75);



