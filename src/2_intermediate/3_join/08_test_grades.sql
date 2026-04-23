SELECT st.name AS '氏名',
    su.name AS '科目名',
    score AS '点数'
FROM grades AS g
    INNER JOIN students AS st ON g.student_id = st.id
    INNER JOIN subjects AS su ON g.subject_id = su.id;
