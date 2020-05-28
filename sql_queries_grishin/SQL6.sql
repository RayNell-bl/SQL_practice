SELECT u.user_id, u.firstname, u.patronomic FROM grishin_user u
INNER JOIN grishin_teacher t ON u.user_id = t.user_id
INNER JOIN grishin_graduate g ON t.user_id = g.user_id
INNER JOIN grishin_graduate_time gt ON g.graduate_id = gt.graduate_id
INNER JOIN grishin_groups gr ON g.group_id = gr.group_id
INNER JOIN grishin_lesson_num ln ON gt.lesson_num_id = ln.lesson_num_id
WHERE ln.time_lesson>='08:30:00' AND ln.time_lesson<='15:30:00'