SELECT grishin_course.name AS course_name, grishin_course.hours, grishin_special.name AS special_name FROM grishin_course
INNER JOIN grishin_special ON grishin_course.special_id = grishin_special.special_id
INNER JOIN grishin_otdel ON grishin_special.otdel_id = grishin_otdel.otdel_id
WHERE grishin_otdel.name='Технические специальности'