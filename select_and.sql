USE platziblog;

SELECT * FROM posts
	WHERE id BETWEEN 40 AND 55
    AND usuario_id IS NOT NULL
    AND titulo LIKE "%se%"
    AND YEAR(fecha_publicacion) > 2022
    AND estatus != "inactivo"
    AND categoria_id = 2;