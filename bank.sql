--
-- Generic Bank Data
--

CREATE TABLE users (
    id integer PRIMARY KEY NOT NULL,
    name text,
    join_date date
);

INSERT INTO users VALUES
(5, 'Paul', '2017-11-01'),
(6, 'Zhou', '2016-01-25'),
(7, 'Janet', '2015-04-29'),
(8, 'Urbi', '2014-06-09'),
(9, 'Mary', '2013-08-10');

CREATE TABLE accounts (
    id integer PRIMARY KEY NOT NULL,
    user_id integer REFERENCES users (id) ON DELETE CASCADE,
    balance real
);

INSERT INTO accounts VALUES
(2, 5, 50),
(3, 6, 50),
(4, 6, 70),
(6, 8, 90),
(7, 9, 100),
(8, 8, 25);

CREATE TABLE transactions (
    id integer PRIMARY KEY NOT NULL, 
    account_id integer REFERENCES accounts (id) ON DELETE CASCADE,
    total real,
    merchant text
);

INSERT INTO transactions VALUES
(3, 3, -45, 'H&M'),
(4, 3, -5, 'Subway'),
(5, 3, 10, 'deposit'),
(6, 4, 15, 'deposit'),
(7, 4, -7, 'Walgreens'),
(8, 4, -15, 'Trader Joes'),
(10, 6, -5, 'Trader Joes'),
(11, 6, -9, 'Kitty Corner Bodega'),
(12, 6, -3, 'Kitty Corner Bodega'),
(13, 7, 11, 'deposit'),
(14, 7, 8, 'deposit'),
(15, 8, 25, 'deposit');
