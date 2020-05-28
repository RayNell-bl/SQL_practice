SELECT u.lastname, u.firstname , u.patronomic, g.name, ss.name FROM grishin_students s 
INNER JOIN grishin_groups g ON s.group_id = g.group_id 
INNER JOIN grishin_special ss ON g.special_id = ss.special_id 
INNER JOIN grishin_otdel o ON ss.otdel_id = o.otdel_id 
INNER JOIN grishin_user u ON s.user_id = u.user_id WHERE o.name='Информационные системы'