SELECT titulo, fecha_publicacion, login
FROM usuarios
	RIGHT JOIN posts ON usuarios.id = posts.usuario_id
WHERE usuarios.id IS NULL;