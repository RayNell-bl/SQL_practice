SELECT t.user_id, u.lastname, u.firstname, u.patronomic FROM grishin_teacher t
LEFT JOIN grishin_user u ON t.user_id = u.user_id
LEFT JOIN grishin_graduate g ON t.user_id = g.user_id
WHERE g.course_id IS NULL