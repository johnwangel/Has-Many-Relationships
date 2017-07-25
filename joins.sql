-- SELECT * FROM users;

-- SELECT *
-- FROM posts p
-- JOIN users u ON p.users_id = u.id
-- WHERE p.users_id = 100;

-- SELECT u.first_name, u.last_name, p.title, p.url, p.content, p.created_at, p.updated_at
-- FROM posts p
-- LEFT JOIN users u ON p.users_id = u.id
-- WHERE p.users_id = 200;

SELECT u.username, p.title, p.url, p.content, p.created_at, p.updated_at
FROM posts p
LEFT JOIN users u ON p.users_id = u.id
WHERE u.first_name = 'Norene' AND u.last_name = 'Schmitt';

