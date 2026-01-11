CREATE TABLE courses (
    course_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credit INT NOT NULL CHECK (credit BETWEEN 1 AND 10),
    instructor_id INT NOT NULL REFERENCES instructors(instructor_id)
);

INSERT INTO courses (course_name, credit, instructor_id)  VALUES ('Veritabanı', 4, 1);
INSERT INTO courses (course_name, credit, instructor_id)  VALUES ('Elektrik Devreleri', 3, 2);
INSERT INTO courses (course_name, credit, instructor_id)  VALUES ('Termodinamik', 4, 3);
INSERT INTO courses (course_name, credit, instructor_id) VALUES ('Algoritma', 3, 1);



