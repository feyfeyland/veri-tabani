CREATE TABLE instructors (
    instructor_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(100) NOT NULL
);

INSERT INTO instructors VALUES (1, 'Murat', 'Aksoy', 'Bilgisayar');
INSERT INTO instructors VALUES (2, 'Elif', 'Öztürk', 'Elektrik');
INSERT INTO instructors VALUES (3, 'Kemal', 'Şahin', 'Makine');


