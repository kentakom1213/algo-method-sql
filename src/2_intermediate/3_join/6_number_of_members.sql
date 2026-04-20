SELECT f.id AS '学部ID',
    f.name AS '学部名',
    COUNT(*) AS '学生数'
FROM faculties AS f
    INNER JOIN students AS s ON f.id = s.faculty_id
GROUP BY f.id;
