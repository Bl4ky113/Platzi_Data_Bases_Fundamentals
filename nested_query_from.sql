USE platziblog;

SELECT new_table_projection.post_date, COUNT(*) AS posts_count
FROM (
	SELECT DATE(MIN(fecha_publicacion)) AS post_date, YEAR(fecha_publicacion) AS post_year
    FROM posts
    GROUP BY post_year
) AS new_table_projection
GROUP BY new_table_projection.post_date
ORDER BY new_table_projection.post_date ASC;