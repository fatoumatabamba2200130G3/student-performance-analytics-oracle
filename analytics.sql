-- ==========================================
-- ANALYTICS.SQL
-- Business Queries
-- ==========================================

-- Students with courses and scores
SELECT s.first_name, s.last_name, c.course_name, g.score
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id
JOIN grades g ON e.enrollment_id = g.enrollment_id;

-- View usage
SELECT * FROM student_performance;

-- Average score per course
SELECT 
    c.course_name,
    AVG(g.score) AS average_score
FROM courses c
JOIN enrollments e ON c.course_id = e.course_id
JOIN grades g ON e.enrollment_id = g.enrollment_id
GROUP BY c.course_name;

-- Check all grades
SELECT * FROM grades;