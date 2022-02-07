USE platziblog;

SELECT 
	u.nickname AS user_name, 
    COUNT(*) AS num_posts, 
    GROUP_CONCAT(c.nombre_categoria SEPARATOR ' | ') AS category_posts 
FROM usuarios AS u
	INNER JOIN posts AS p ON u.id = p.usuario_id
    INNER JOIN categorias AS c ON p.categoria_id = c.id
GROUP BY u.id
ORDER BY num_posts DESC;
