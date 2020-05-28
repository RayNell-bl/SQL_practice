SELECT * FROM grishin_special s
LEFT JOIN grishin_course c ON s.special_id = c.special_id
WHERE c.course_id IS NULL