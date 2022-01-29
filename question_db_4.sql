USE platziblog;

SELECT categorias.nombre_categoria, COUNT(*) AS num_posts
FROM categorias
	LEFT JOIN posts ON categorias.id = posts.categoria_id
GROUP BY categorias.nombre_categoria
ORDER BY num_posts DESC;