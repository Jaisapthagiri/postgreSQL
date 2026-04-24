-- create

create table users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    age INT,
    isActive BOOLEAN
);

-- alter

ALTER Table users ADD COLUMN character_role TEXT DEFAULT 'user';

ALTER Table users DROP COLUMN character_role;

alter table users alter COLUMN name set not null;

alter table users add constraint unique_email UNIQUE (email);


-- viewing constraints

select
    CONSTRAINT_name,
    CONSTRAINT_type
from information_schema.table_constraints
where
    table_name = 'users';


-- removing constrain

alter table users drop constraint unique_email;

alter table users drop COLUMN character_role;

-- danger

drop table users;

truncate table users;

select  'hello' || ' ' || 'world';

