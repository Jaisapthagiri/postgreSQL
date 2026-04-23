CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    age INT CHECK (age >= 18),
    cgpa DECIMAL(3, 2) CHECK (cgpa BETWEEN 0 AND 10),
    department TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
)

CREATE TABLE staff (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    age INT CHECK (age >= 25),
    department_id INT REFERENCES departments (id)
)

CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name TEXT,
    city TEXT
);


CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INT,
    product TEXT,
    amount INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE payments (
    id SERIAL PRIMARY KEY,
    order_id INT,
    payment_method TEXT,
    status TEXT,
    FOREIGN KEY (order_id) REFERENCES orders(id)
);


-- select constraint_name from information_schema.table_constraints where table_name = 'orders';

-- select constraint_name from information_schema.table_constraints where table_name = 'payments';

-- alter table orders drop constraint orders_customer_id_fkey;

select * from orders;


