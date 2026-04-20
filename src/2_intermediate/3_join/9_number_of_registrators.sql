SELECT su.name AS '科目名',
    SUM(st.enrollment_year = 2023) AS '1年生履修者数',
    SUM(st.enrollment_year = 2022) AS '2年生履修者数'
FROM registrations AS r
    INNER JOIN students AS st,
    subjects AS su ON r.student_id = st.id
    AND r.subject_id = su.id
GROUP BY su.id;
