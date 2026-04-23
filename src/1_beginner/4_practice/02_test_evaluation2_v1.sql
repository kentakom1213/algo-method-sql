SELECT subject AS '科目',
    SUM(
        CASE
            eval
            WHEN 'a+' THEN 1
            ELSE 0
        END
    ) AS '秀',
    SUM(
        CASE
            eval
            WHEN 'a' THEN 1
            ELSE 0
        END
    ) AS '優',
    SUM(
        CASE
            eval
            WHEN 'b' THEN 1
            ELSE 0
        END
    ) AS '良',
    SUM(
        CASE
            eval
            WHEN 'c' THEN 1
            ELSE 0
        END
    ) AS '可',
    SUM(
        CASE
            eval
            WHEN 'f' THEN 1
            ELSE 0
        END
    ) AS '不可'
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
    ) as e
GROUP BY subject;
