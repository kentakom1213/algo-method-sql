SELECT s.name AS '氏名',
    f.name AS '所属学部'
FROM students AS s
    INNER JOIN faculties AS f ON s.faculty_id = f.id;
