SELECT login, titulo, fecha_publicacion
FROM usuarios
	LEFT JOIN posts ON usuarios.id = posts.usuario_id;