CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    department VARCHAR(100) NOT NULL
);

INSERT INTO students VALUES (1, 'Ali', 'Yılmaz', '2000-05-10', 'Bilgisayar');
INSERT INTO students VALUES (2, 'Ayşe', 'Kara', '2001-02-20', 'Elektrik');
INSERT INTO students VALUES (3, 'Mehmet', 'Demir', '2000-11-30', 'Makine');
INSERT INTO students VALUES (4, 'Fatma', 'Çelik', '1999-08-15', 'Bilgisayar');
INSERT INTO students VALUES (5, 'Ahmet', 'Aslan', '2002-01-25', 'İnşaat');