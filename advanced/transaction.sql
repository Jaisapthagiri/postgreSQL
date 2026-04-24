CREATE TABLE account (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    city TEXT NOT NULL,
    account_type TEXT DEFAULT 'savings' NOT NULL,
    balance NUMERIC(10, 2) DEFAULT 0 NOT NULL
);

INSERT INTO
    account (
        name,
        email,
        city,
        account_type,
        balance
    )
VALUES (
        'Arun',
        'arun@gmail.com',
        'Chennai',
        'savings',
        5000.00
    ),
    (
        'Vijay',
        'vijay@gmail.com',
        'Madurai',
        'current',
        12000.50
    ),
    (
        'Suresh',
        'suresh@gmail.com',
        'Coimbatore',
        'savings',
        8000.75
    ),
    (
        'Karthik',
        'karthik@gmail.com',
        'Trichy',
        'savings',
        4500.00
    ),
    (
        'Ramesh',
        'ramesh@gmail.com',
        'Salem',
        'current',
        15000.00
    ),
    (
        'Dinesh',
        'dinesh@gmail.com',
        'Erode',
        'savings',
        3000.25
    ),
    (
        'Prakash',
        'prakash@gmail.com',
        'Vellore',
        'current',
        22000.00
    ),
    (
        'Manoj',
        'manoj@gmail.com',
        'Tirunelveli',
        'savings',
        6700.40
    ),
    (
        'Saravanan',
        'saravanan@gmail.com',
        'Thoothukudi',
        'current',
        9100.00
    ),
    (
        'Ajith',
        'ajith@gmail.com',
        'Chennai',
        'savings',
        11000.10
    ),
    (
        'Kumar',
        'kumar@gmail.com',
        'Madurai',
        'current',
        25000.00
    ),
    (
        'Hari',
        'hari@gmail.com',
        'Coimbatore',
        'savings',
        4000.00
    ),
    (
        'Naveen',
        'naveen@gmail.com',
        'Trichy',
        'current',
        18000.60
    ),
    (
        'Lokesh',
        'lokesh@gmail.com',
        'Salem',
        'savings',
        7200.00
    ),
    (
        'Gokul',
        'gokul@gmail.com',
        'Erode',
        'current',
        13500.90
    ),
    (
        'Vinoth',
        'vinoth@gmail.com',
        'Vellore',
        'savings',
        5600.00
    ),
    (
        'Bala',
        'bala@gmail.com',
        'Tirunelveli',
        'current',
        9800.00
    ),
    (
        'Aravind',
        'aravind@gmail.com',
        'Thoothukudi',
        'savings',
        4300.75
    ),
    (
        'Deepak',
        'deepak@gmail.com',
        'Chennai',
        'current',
        27000.00
    ),
    (
        'Santhosh',
        'santhosh @gmail.com',
        'Madurai',
        'savings',
        6100.00
    );

select * from account;

begin;

update account set balance = balance - 2000;

update account set balance = balance - 2000 where id = 19;

rollback;

-- savepoint

begin;

UPDATE account SET balance = balance - 1000 WHERE name = 'Arun';

SAVEPOINT s1;

UPDATE account SET balance = balance + 1000 WHERE name = 'WrongName';

ROLLBACK TO s1;

UPDATE account SET balance = balance - 10000 WHERE id = 19;

SELECT * FROM account ORDER BY id;

UPDATE account SET balance = balance - 1000 WHERE id = 20;

SAVEPOINT s2;

ROLLBACK TO s3;

SELECT * FROM account;

commit;

-- wrong values

Begin;

UPDATE account 
SET balance = balance - 5000
WHERE name = 'Arun' AND balance >= 5000;

rollback;


-- acid