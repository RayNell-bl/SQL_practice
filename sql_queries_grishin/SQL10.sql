SELECT * FROM grishin_course c
 LEFT JOIN grishin_graduate gr 
 ON c.course_id = gr.course_id
 WHERE gr.graduate_id IS NULL