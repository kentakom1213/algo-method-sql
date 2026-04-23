SELECT s.name AS '氏名',
    f.name AS '所属学部'
FROM faculties AS f
    LEFT OUTER JOIN students AS s ON s.faculty_id = f.id;
