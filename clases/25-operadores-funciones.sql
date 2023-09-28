

SELECT
    id,
    name,
    UPPER(name) AS upper_name,
    LOWER(name) AS lower_name,
    LENGTH(name) AS length_name,
    (20 * 2) AS constante,
    '* ' || id || ' ' || name || ' *' AS concat1,
    CONCAT('* ', id, ' ', name, ' *') AS concat2
FROM
    users;
