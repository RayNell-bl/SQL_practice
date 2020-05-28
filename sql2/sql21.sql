SELECT d.name, COUNT(*) as cnt FROM grishin_course c
INNER JOIN grishin_graduate g ON c.course_id = g.course_id
INNER JOIN grishin_graduate_time gt ON g.graduate_id = gt.graduate_id
INNER JOIN grishin_day d ON gt.day_id = d.day_id

GROUP BY d.name