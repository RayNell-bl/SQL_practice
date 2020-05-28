SELECT u.lastname, u.firstname, u.patronomic, gen.name, ln.time_lesson FROM grishin_user u
INNER JOIN grishn_gender gen ON u.gender_id = gen.gender_id
INNER JOIN grishin_students s ON u.user_id = s.user_id
INNER JOIN grishin_groups gr ON s.group_id = gr.group_id
INNER JOIN grishin_graduate grad ON gr.group_id = grad.group_id
INNER JOIN grishin_graduate_time gradt ON grad.graduate_id = gradt.graduate_id
INNER JOIN grishin_lesson_num ln ON gradt.lesson_num_id = ln.lesson_num_id
WHERE ln.time_lesson>='08:30:00' AND ln.time_lesson<='15:30:00' AND gen.name='женский'
