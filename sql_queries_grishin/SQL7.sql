SELECT o.name, COUNT(*) AS cnt FROM grishin_user u
INNER JOIN grishin_students s ON u.user_id = s.user_id
INNER JOIN grishin_groups g ON s.group_id = g.group_id
INNER JOIN grishin_special sp ON g.special_id = sp.special_id
INNER JOIN grishin_otdel o ON sp.otdel_id = o.otdel_id
GROUP BY o.otdel_id