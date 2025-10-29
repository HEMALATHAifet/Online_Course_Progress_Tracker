-- A. Show completion percentage of each student per course
SELECT 
    s.student_name,
    c.course_name,
    ROUND(
        (COUNT(CASE WHEN p.status = 'Completed' THEN 1 END) * 100.0 / COUNT(m.module_id)),
        2
    ) AS completion_percentage
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
JOIN Modules m ON c.course_id = m.course_id
LEFT JOIN Progress p ON s.student_id = p.student_id AND m.module_id = p.module_id
GROUP BY s.student_name, c.course_name;

-- B. Find most popular courses (by enrollment count)
SELECT 
    c.course_name,
    COUNT(e.enrollment_id) AS total_enrollments
FROM Courses c
JOIN Enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name
ORDER BY total_enrollments DESC;

-- C. Create a view – Students who completed all modules of a course
CREATE VIEW completed_students AS
SELECT 
    s.student_name,
    c.course_name
FROM Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE NOT EXISTS (
    SELECT 1
    FROM Modules m
    LEFT JOIN Progress p ON m.module_id = p.module_id AND p.student_id = s.student_id
    WHERE m.course_id = c.course_id AND (p.status IS NULL OR p.status <> 'Completed')
);

-- D. View all data in the view
SELECT * FROM completed_students;

-- E. Bonus: Show how many modules each student has completed
SELECT 
    s.student_name,
    COUNT(p.progress_id) AS modules_completed
FROM Students s
JOIN Progress p ON s.student_id = p.student_id
WHERE p.status = 'Completed'
GROUP BY s.student_name;
