
CREATE TABLE users (
	name VARCHAR(20) UNIQUE
);

INSERT INTO
    users (name)
VALUES
    ('Jose'),
    ('Stefany'),
    ('Fernando'),
    ('Melissa'),
    ('Natalia'),
    ('Arthur'),
    ('Daniel'),
    ('Marco'),
    ('Ferre'),
    ('Warchi');
    
SELECT
    *
FROM
    users
LIMIT
    10 OFFSET 0;
    
SELECT
    *
FROM
    users
WHERE
    name LIKE '%_tefany%';
    
UPDATE
    users
SET
    name = 'Warcho'
WHERE
    name = 'Warchi';

DELETE FROM
    users
WHERE
    name = 'Warchi';

DROP TABLE users;

TRUNCATE TABLE users;