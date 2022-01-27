USE platziblog;

SELECT * FROM usuarios
	LEFT JOIN posts ON usuarios.id = posts.usuario_id
UNION
SELECT * FROM usuarios
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id;