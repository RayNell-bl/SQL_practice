SELECT  d.name from grishin_day d
LEFT JOIN grishin_graduate_time gradt ON d.day_id = gradt.day_id
LEFT JOIN grishin_graduate g ON gradt.graduate_id = g.graduate_id
LEFT JOIN grishin_course c ON g.course_id = c.course_id
WHERE gradt.graduate_id IS NULL