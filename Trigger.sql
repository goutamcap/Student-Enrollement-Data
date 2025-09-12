DELIMITER $$

CREATE TRIGGER after_student_insert
AFTER INSERT ON Students
FOR EACH ROW
BEGIN
    INSERT INTO Enrollments (student_id, join_date, course_opted)
    VALUES (NEW.student_id, NEW.enrollment_date, NEW.course_opted);
END$$

DELIMITER ;