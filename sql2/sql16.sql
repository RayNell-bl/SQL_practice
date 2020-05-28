SELECT c.name,d.name,s.name FROM grishin_special s
INNER JOIN grishin_course c ON s.special_id = c.special_id
INNER JOIN grishin_graduate g ON c.course_id = g.course_id
INNER JOIN grishin_graduate_time gt ON g.graduate_id = gt.graduate_id
INNER JOIN grishin_day d ON gt.day_id = d.day_id
WHERE d.day_id = 2