--1
SELECT * FROM users;

--2
SELECT *
FROM posts p
JOIN users u ON p.users_id = u.id
WHERE p.users_id = 100;

--3
SELECT u.first_name, u.last_name, p.title, p.url, p.content, p.created_at, p.updated_at
FROM posts p
INNER JOIN users u ON p.users_id = u.id
WHERE p.users_id = 200;

--4
SELECT u.username, p.title, p.url, p.content, p.created_at, p.updated_at
FROM posts p
LEFT JOIN users u ON p.users_id = u.id
WHERE u.first_name = 'Norene' AND u.last_name = 'Schmitt';

--5
SELECT u.username, p.created_at
FROM users u
LEFT JOIN posts p ON p.users_id = u.id
WHERE p.created_at > '20150101';

--6
SELECT p.title, p.content, u.username
FROM users uq
LEFT JOIN posts p ON p.users_id = u.id
WHERE u.created_at < '20150101';

--7
SELECT p.title as "POST TITLE", c.body, c.created_at, c.updated_at
FROM comments c
LEFT JOIN posts p ON c.posts_id = p.id;

--8
SELECT p.title as "post_title", p.url as "post_url", c.body as "comment_body"
FROM comments c
LEFT JOIN posts p ON c.posts_id = p.id
WHERE p.created_at < '20150101';

--9
SELECT p.title as "post_title", p.url as "post_url", c.body as "comment_body"
FROM comments c
LEFT JOIN posts p ON c.posts_id = p.id
WHERE p.created_at > '20150101';

--10
SELECT p.title as "post_title", p.url as "post_url", c.body as "comment_body"
FROM comments c
LEFT JOIN posts p ON c.posts_id = p.id
WHERE c.body LIKE '%USB%';

--11
SELECT p.title as "post_title", u.first_name as "first_name", u.last_name as "last_name", c.body as "comment_body"
FROM comments c
LEFT JOIN users u ON  u.id = c.users_id
LEFT JOIN posts p ON  p.id = c.posts_id
WHERE c.body LIKE '%matrix%';

--12
SELECT p.title as "post_title", u.first_name as "first_name", u.last_name as "last_name", c.body as "comment_body"
FROM comments c
LEFT JOIN users u ON  u.id = c.users_id
LEFT JOIN posts p ON  p.id = c.posts_id
WHERE c.body LIKE '%SSL%' AND p.content LIKE '%dolorum%';

--13
SELECT u.first_name as "post_first_name", u.last_name as "post_author_last_name", p.title as "post_title", uc.first_name as "comment_first_name", uc.last_name as "comment_author_last_name", c.body as "comment_body"
  FROM comments c
  JOIN posts p ON c.posts_id = p.id
  JOIN users u ON u.id = p.users_id
  JOIN users uc ON uc.id = c.users_id
  WHERE (c.body LIKE '%SSL%' OR c.body LIKE '%firewall%') AND p.content LIKE '%nemo%';

-- --AQ 1 -- DOESN'T WORK
-- SELECT p.id as "post id", p.title as "post title", p.users_id
--   FROM posts p
--   JOIN comments c ON p.id = c.posts_id
--   WHERE c.users_id = p.users_id;

--AQ 1
SELECT COUNT(*)
FROM comments c
JOIN posts p ON c.posts_id = p.id
WHERE p.created_at > '2015-07-14';

--AQ 2
SELECT u.username
FROM comments c
JOIN users u ON c.users_id = u.id
WHERE c.body LIKE '%programming%';


