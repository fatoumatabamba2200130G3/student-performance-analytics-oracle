-- ==========================================
-- DATA.SQL
-- Sample Data
-- ==========================================

INSERT INTO students (first_name, last_name, email, date_of_birth)
VALUES ('Fatoumata', 'Keita', 'fatoumata@gmail.com', 
        TO_DATE('2004-06-15','YYYY-MM-DD'));

INSERT INTO students (first_name, last_name, email, date_of_birth)
VALUES ('Aminata', 'Diallo', 'aminata@gmail.com', 
        TO_DATE('2003-09-20','YYYY-MM-DD'));

INSERT INTO courses (course_name, credit)
VALUES ('Database Systems', 3);

INSERT INTO courses (course_name, credit)
VALUES ('Artificial Intelligence', 4);

INSERT INTO enrollments (student_id, course_id, semester)
VALUES (1, 1, 'Semester 1');

INSERT INTO enrollments (student_id, course_id, semester)
VALUES (2, 2, 'Semester 1');

INSERT INTO grades (enrollment_id, score, grade_letter)
VALUES (1, 16.5, 'A');

INSERT INTO grades (enrollment_id, score, grade_letter)
VALUES (2, 14.0, 'B');

-- Test du trigger
INSERT INTO grades (enrollment_id, score)
VALUES (1, 17);

COMMIT;