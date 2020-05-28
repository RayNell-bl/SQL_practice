SELECT c.name, c.hours, s.name, d.name, o.name FROM grishin_special s
INNER JOIN grishin_course c ON s.special_id = c.special_id
INNER JOIN grishin_graduate g ON c.course_id = g.course_id
INNER JOIN grishin_graduate_time gt ON g.graduate_id = gt.graduate_id
INNER JOIN grishin_day d ON gt.day_id = d.day_id
INNER JOIN grishin_teacher t ON g.user_id = t.user_id
INNER JOIN grishin_otdel o ON t.otdel_id = o.otdel_id
INNER JOIN grishin_user u ON t.user_id = u.user_id
WHERE o.name='Технические специальности' AND (d.name='Среда' OR d.name='Пятница')