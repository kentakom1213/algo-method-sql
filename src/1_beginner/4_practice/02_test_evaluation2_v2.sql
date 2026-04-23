SELECT subject AS '科目',
    SUM(eval = 'a+') AS '秀',
    SUM(eval = 'a') AS '優',
    SUM(eval = 'b') AS '良',
    SUM(eval = 'c') AS '可',
    SUM(eval = 'f') AS '不可'
FROM (
        SELECT subject,
            CASE
                WHEN score >= 90 THEN 'a+'
                WHEN score >= 80 THEN 'a'
                WHEN score >= 65 THEN 'b'
                WHEN score >= 50 THEN 'c'
                ELSE 'f'
            END AS eval
        FROM grades
    ) t
GROUP BY subject;
