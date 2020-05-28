SELECT u.lastname, u.firstname, u.patronomic, gr.name, sp.name FROM grishin_user u
INNER JOIN grishin_students s ON u.user_id = s.user_id
INNER JOIN grishin_groups gr ON s.group_id = gr.group_id
INNER JOIN grishin_special sp ON gr.special_id = sp.special_id
INNER JOIN grishin_course c ON sp.special_id = c.special_id
WHERE c.hours > 12