-- select

select * from users;

-- insert

INSERT INTO
    users (name, email, age, isActive)
VALUES (
        'jai',
        'jai@gmail.com',
        22,
        true
    );

INSERT INTO
    users (name, email, age, isActive)
VALUES (
        'Arthur',
        'arthur@gmail.com',
        32,
        true
    ),
    (
        'John',
        'john@gmail.com',
        30,
        true
    ),
    (
        'Dutch',
        'dutch@gmail.com',
        50,
        false
    );

-- update

update users set isactive=true where id=2;

update users set name='Ben' where id = 1;

update users set name='tennyson', age=15, email='ben@gmail.com' where id=1;

-- delete

delete from users where id = 2;