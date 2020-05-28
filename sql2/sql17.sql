SELECT u.lastname, u.firstname, u.patronomic, o.name FROM grishin_user u
INNER JOIN grishin_teacher t ON u.user_id = t.user_id
INNER JOIN grishin_otdel o ON t.otdel_id = o.otdel_id
INNER JOIN grishin_graduate grad ON t.user_id = grad.user_id
INNER JOIN grishin_graduate_time gradt ON grad.graduate_id = gradt.graduate_id
INNER JOIN grishin_day d ON gradt.day_id = d.day_id 
WHERE d.name = 'Суббота'