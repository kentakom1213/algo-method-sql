SELECT IFNULL(s.name, '該当なし') AS '氏名',
    f.name AS '所属学部'
FROM faculties AS f
    LEFT OUTER JOIN students AS s ON s.faculty_id = f.id;
