SELECT DISTINCT (o.name), o.otdel_id FROM grishin_otdel o
INNER JOIN grishin_teacher t ON o.otdel_id = t.otdel_id
INNER JOIN grishin_graduate g ON t.user_id = g.user_id
INNER JOIN grishin_graduate_time gt ON g.graduate_id = gt.graduate_id
INNER JOIN grishin_lesson_num ln ON gt.lesson_num_id = ln.lesson_num_id
INNER JOIN grishin_day d ON gt.day_id = d.day_id
WHERE ln.time_lesson>='09:00' AND ln.time_lesson<='12:00' AND d.name='Вторник'