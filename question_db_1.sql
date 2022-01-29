USE platziblog;

SELECT 
	posts.titulo, 
	GROUP_CONCAT(etiquetas.nombre_etiqueta ORDER BY etiquetas.nombre_etiqueta DESC SEPARATOR ' - ') AS name_etiquetas, 
	COUNT(*) AS num_etiquetas
FROM posts
	INNER JOIN posts_etiquetas ON posts.id = posts_etiquetas.post_id
    INNER JOIN etiquetas ON posts_etiquetas.etiqueta_id = etiquetas.id
GROUP BY posts.id
HAVING name_etiquetas LIKE '%avances%'
ORDER BY num_etiquetas DESC