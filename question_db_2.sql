USE platziblog;

SELECT 
	etiquetas.nombre_etiqueta,
    GROUP_CONCAT(posts.id ORDER BY posts.id ASC SEPARATOR ' / '),
    COUNT(posts.id) AS num_posts
FROM etiquetas
	INNER JOIN posts_etiquetas ON etiquetas.id = posts_etiquetas.etiqueta_id
    INNER JOIN posts ON posts_etiquetas.post_id = posts.id
GROUP BY etiquetas.nombre_etiqueta