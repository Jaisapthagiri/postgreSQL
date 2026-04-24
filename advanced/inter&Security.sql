-- data integrity and constraint

-- PRIMARY KEY
-- not NULL
-- UNIQUE
-- CHECK
-- Foreign Key () REFERENCES ()

-- grant and revoke

create user test with password 'test123';

grant SELECT on customers to test;

grant insert, update on customers to test;

-- learning=> \dp cartoon;
--                                   Access privileges
--  Schema |  Name   | Type  |     Access privileges     | Column privileges | Policies
-- --------+---------+-------+---------------------------+-------------------+----------
--  public | cartoon | table | postgres=arwdDxt/postgres+|                   |
--         |         |       | test=r/postgres           |                   |
-- (1 row)

revoke insert, update on customers from test; 

GRANT SELECT (name, city) ON customers TO test;

-- group like

CREATE ROLE readonly;
GRANT SELECT ON customers TO readonly;

GRANT readonly TO test;
