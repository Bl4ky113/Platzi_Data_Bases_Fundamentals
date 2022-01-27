USE platziblog;

SELECT * FROM usuarios
	LEFT JOIN posts ON usuarios.id = posts.usuario_id
	WHERE posts.usuario_id IS NULL
UNION
SELECT * FROM usuarios
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id
    WHERE usuarios.id IS NULL;