SELECT u.lastname, u.firstname, u.patronomic, d.name FROM grishin_user u
INNER JOIN grishin_students s ON u.user_id = s.user_id
INNER JOIN grishin_groups gr ON s.group_id = gr.group_id
INNER JOIN grishin_graduate grad ON gr.group_id = grad.group_id
INNER JOIN grishin_graduate_time gradt ON grad.graduate_id = gradt.graduate_id
INNER JOIN grishin_day d ON gradt.day_id = d.day_id
WHERE d.day_id = 5