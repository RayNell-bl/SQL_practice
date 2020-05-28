SELECT grishin_groups.name, grishin_groups.date_begin, grishin_groups.date_end FROM grishin_special 
INNER JOIN grishin_groups ON grishin_special.special_id = grishin_groups.special_id

WHERE grishin_special.name='Информационные системы'