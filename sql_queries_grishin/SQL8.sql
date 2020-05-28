SELECT g.name, COUNT(*) AS cnt FROM grishin_groups g
INNER JOIN grishin_graduate gr ON g.group_id = gr.group_id
GROUP BY  g.group_id