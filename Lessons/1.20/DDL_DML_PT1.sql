--CREATE DATABASE IF NOT EXISTS jobs_mart;

--SHOW DATABASES;

--DROP DATABASE Jobs_mart

SELECT * 
FROM information_schema.schemata;

USE jobs_mart;

CREATE SCHEMA IF NOT EXISTS staging;
--DROP SCHEMA staging;
CREATE TABLE IF NOT EXISTS staging.priority_roles  (
    role_id INTEGER PRIMARY KEY,
    role_name VARCHAR
);  

SELECT * FROM information_schema.tables
WHERE table_catalog = 'jobs_mart';

INSERT INTO staging.priority_roles(role_id,role_name)
VALUES
    (1, 'Data Engineer'),
    (2, 'Senior Data Engineer'),
    (3, 'Software Engineer')
;
--DROP TABLE IF EXISTS staging.priority_roles;
 
SELECT * FROM staging.priority_roles;

ALTER TABLE staging.priority_roles
ADD COLUMN preferred_role BOOLEAN;

UPDATE staging.priority_roles
SET preferred_role = TRUE 
WHERE role_id = 1 OR role_id = 2;

UPDATE staging.priority_roles
SET preferred_role = FALSE
WHERE role_id = 3;

--ALTER TABLE staging.preferred_roles
--RENAME TO priority_roles;

SELECT * FROM staging.priority_roles;

--ALTER TABLE staging.priority_roles
--RENAME COLUMN preferred_role TO priority_lvl;

ALTER TABLE staging.priority_roles
ALTER COLUMN priority_lvl TYPE INTEGER;

UPDATE staging.priority_roles
SET priority_lvl = 3
WHERE role_id = 3;