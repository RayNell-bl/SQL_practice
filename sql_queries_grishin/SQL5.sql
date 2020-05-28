SELECT u.lastname, u.firstname, u.patronomic, g.name FROM grishin_students s
INNER JOIN grishin_user u ON s.user_id = u.user_id
INNER JOIN grishin_groups g ON s.group_id = g.group_id
INNER JOIN grishin_graduate mg ON g.group_id = mg.group_id
INNER JOIN grishin_course mc ON mg.course_id = mc.course_id
WHERE mc.name='Мультимедиа технологии'