CREATE OR REPLACE FUNCTION insert_grade_status()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO grade_status (enrollment_id, status)
    VALUES (
        NEW.enrollment_id,
        CASE
            WHEN NEW.grade >= 50 THEN 'Geçti'
            ELSE 'Kaldı'
        END
    );
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_insert_grade_status
AFTER INSERT ON enrollments
FOR EACH ROW
EXECUTE FUNCTION insert_grade_status();

SELECT * FROM grade_status;




