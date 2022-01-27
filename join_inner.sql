USE platziblog;

SELECT usuarios.id, usuarios.login, posts.id, posts.titulo FROM usuarios
	INNER JOIN posts ON usuarios.id = posts.usuario_id;