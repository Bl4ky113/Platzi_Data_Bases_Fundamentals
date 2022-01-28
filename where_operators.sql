USE platziblog;

SELECT id, titulo, fecha_publicacion, estatus, usuario_id, categoria_id
	FROM posts
    WHERE id >= 50;
    
SELECT id, titulo, fecha_publicacion, estatus, usuario_id, categoria_id
	FROM posts
    WHERE estatus != 'inactivo';
    
SELECT id, titulo, fecha_publicacion, estatus, usuario_id, categoria_id
	FROM posts
    WHERE titulo LIKE '%mundo%';
    
SELECT id, titulo, fecha_publicacion, estatus, usuario_id, categoria_id
	FROM posts
    WHERE YEAR(fecha_publicacion) BETWEEN '2022' AND '2024';