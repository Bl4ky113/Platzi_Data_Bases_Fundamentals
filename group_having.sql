USE platziblog;

SELECT usuario_id, COUNT(*) AS count_posts FROM posts
	GROUP BY usuario_id
    HAVING count_posts >= 2;