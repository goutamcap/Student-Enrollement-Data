-- Start

--Actually Joined Students
SELECT 
    s.student_id,
    s.full_name,
    s.course_opted,
    s.mobile_no,
    s.enrollment_date,
    e.join_date
FROM Students s
INNER JOIN Enrollments e ON s.student_id = e.student_id;

--Enrolled but not Joined
SELECT 
    s.student_id,
    s.full_name,
    s.course_opted,
    s.mobile_no,
    s.enrollment_date
FROM Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

-- Data Count of Total, joined and not joined
SELECT 
    COUNT(*) AS total_enrolled,
    (SELECT COUNT(*) FROM Enrollments) AS total_joined,
    (COUNT(*) - (SELECT COUNT(*) FROM Enrollments)) AS not_joined
FROM Students;

--Percentage 
SELECT 
    COUNT(*) AS total_enrolled,
    (SELECT COUNT(*) FROM Enrollments) AS total_joined,
    ROUND(
        ( (SELECT COUNT(*) FROM Enrollments) / COUNT(*) ) * 100, 2
    ) AS join_percentage
FROM Students;

--Rank for Courses
SELECT 
    course_opted,
    COUNT(student_id) AS total_enrolled,
    RANK() OVER (ORDER BY COUNT(student_id) DESC) AS rank_by_enrollment
FROM Students
GROUP BY course_opted;


-- end









