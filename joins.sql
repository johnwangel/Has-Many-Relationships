-- SELECT * FROM users;

-- SELECT *
-- FROM posts p
-- JOIN users u ON p.users_id = u.id
-- WHERE p.users_id = 100;

-- SELECT u.first_name, u.last_name, p.title, p.url, p.content, p.created_at, p.updated_at
-- FROM posts p
-- LEFT JOIN users u ON p.users_id = u.id
-- WHERE p.users_id = 200;

-- SELECT u.username, p.title, p.url, p.content, p.created_at, p.updated_at
-- FROM posts p
-- LEFT JOIN users u ON p.users_id = u.id
-- WHERE u.first_name = 'Norene' AND u.last_name = 'Schmitt';

-- SELECT u.username, p.created_at
-- FROM users u
-- LEFT JOIN posts p ON p.users_id = u.id
-- WHERE p.created_at > '20150101';

-- SELECT p.title, p.content, u.username
-- FROM users u
-- LEFT JOIN posts p ON p.users_id = u.id
-- WHERE u.created_at < '20150101';

SELECT p.title as "POST TITLE", c.body, c.created_at, c.updated_at
FROM comments c
LEFT JOIN posts p ON c.posts_id = p.id;