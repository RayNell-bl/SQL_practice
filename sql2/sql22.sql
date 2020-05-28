SELECT s.special_id, s.name FROM grishin_special s
INNER JOIN grishin_course c ON s.special_id = c.special_id
INNER JOIN grishin_graduate g ON c.course_id = g.course_id
INNER JOIN grishin_graduate_time gt ON g.graduate_id = gt.graduate_id
INNER JOIN grishin_lesson_num ln ON gt.lesson_num_id = ln.lesson_num_id
INNER JOIN grishin_day d ON gt.day_id = d.day_id

WHERE NOT (d.name='Четверг' OR d.name='Суббота') AND ln.time_lesson>='15:00' AND ln.time_lesson<='18:00'