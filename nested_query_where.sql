USE platziblog;

SELECT * 
FROM posts
WHERE fecha_publicacion = (
	SELECT MAX(fecha_publicacion) 
    FROM posts
)
