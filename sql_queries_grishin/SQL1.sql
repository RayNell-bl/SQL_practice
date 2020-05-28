SELECT grishin_user.lastname, grishin_user.firstname, grishin_user.patronomic, grishn_gender.name, grishin_otdel.name FROM grishin_teacher
INNER JOIN grishin_otdel ON grishin_teacher.otdel_id=grishin_otdel.otdel_id
INNER JOIN grishin_user ON grishin_user.user_id=grishin_teacher.user_id
INNER JOIN grishn_gender ON grishin_user.gender_id=grishn_gender.gender_id

WHERE grishin_otdel.name='Информационные системы'