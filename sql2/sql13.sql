SELECT c.name, ln.time_lesson FROM grishin_course c 
INNER JOIN grishin_graduate g ON g.course_id = g.course_id
INNER JOIN grishin_graduate_time gradt ON g.graduate_id = gradt.graduate_id
INNER JOIN grishin_lesson_num ln ON gradt.lesson_num_id = ln.lesson_num_id
WHERE ln.time_lesson>='12:30:00' AND ln.time_lesson<='18:30:00'