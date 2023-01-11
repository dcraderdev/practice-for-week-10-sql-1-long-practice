-- Your code here


-- Add new customer Rachel
INSERT INTO customers (name, phone) VALUES ('Rachel', 111111111);


-- Rachel purchases one coffee
SELECT points FROM customers WHERE name = 'Rachel';

INSERT INTO coffee_orders DEFAULT VALUES;
SELECT * FROM coffee_orders;

UPDATE customers
SET points = 6
WHERE name = 'Rachel';

SELECT points FROM customers WHERE name = 'Rachel';


-- Add customers Monica and Phoebe
INSERT INTO customers (name, email, phone)
VALUES
  ('Monica', 'monica@friends.show', 222222222),
  ('Phoebe', 'phoebe@friends.show', 333333333);

SELECT * FROM customers;


-- Phoebe purchases three coffees
SELECT points FROM customers WHERE name = 'Phoebe';

INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
SELECT * FROM coffee_orders;

UPDATE customers
SET points = 8
WHERE name = 'Phoebe';

SELECT points FROM customers WHERE name = 'Phoebe';


-- Rachel and Monica each purchase four coffees
SELECT points FROM customers WHERE name = 'Rachel';

INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
SELECT * FROM coffee_orders;

UPDATE customers
SET points = 10
WHERE name = 'Rachel';

SELECT points FROM customers WHERE name = 'Rachel';


SELECT points FROM customers WHERE name = 'Monica';

INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
SELECT * FROM coffee_orders;

UPDATE customers
SET points = 9
WHERE name = 'Monica';

SELECT points FROM customers WHERE name = 'Monica';


-- Monica wants to know her new point total
SELECT points FROM customers WHERE name = 'Monica';


-- Rachel wants to check her total points. Redeem her points for a coffee if she has enough points. If she doesn't, she wants to purchase a coffee.
SELECT points FROM customers WHERE name = 'Rachel';

INSERT INTO coffee_orders (is_redeemed) VALUES (1);
SELECT * FROM coffee_orders;

UPDATE customers
SET points = 0
WHERE name = 'Rachel';

SELECT points FROM customers WHERE name = 'Rachel';


-- -- Add 3 new customers
-- INSERT INTO customers (name, email)
-- VALUES
--   ('Joey', 'joey@friends.show'),
--   ('Chandler', 'chandler@friends.show'),
--   ('Ross', 'ross@friends.show');

SELECT * FROM customers;


-- Ross purchases six coffees
SELECT points FROM customers WHERE name = 'Ross';

INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
SELECT * FROM coffee_orders;

UPDATE customers
SET points = 11
WHERE name = 'Ross';

SELECT points FROM customers WHERE name = 'Ross';


-- Monica purchases three coffees
SELECT points FROM customers WHERE name = 'Monica';

INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
SELECT * FROM coffee_orders;

UPDATE customers
SET points = 12
WHERE name = 'Monica';

SELECT points FROM customers WHERE name = 'Monica';


-- Phoebe wants to check her total points. Redeem her points for a coffee if she has enough points. If she doesn't, she wants to purchase a coffee.
SELECT points FROM customers WHERE name = 'Phoebe';

INSERT INTO coffee_orders DEFAULT VALUES;
SELECT * FROM coffee_orders;

UPDATE customers
SET points = 9
WHERE name = 'Phoebe';

SELECT points FROM customers WHERE name = 'Phoebe';


-- Ross demands a refund for the last two coffees that he ordered. (Make sure you delete Ross's coffee orders and not anyone else's.
-- Update his points to reflect the returned purchases.)
SELECT * FROM coffee_orders ORDER BY id DESC;
DELETE FROM coffee_orders WHERE id > 17 AND id < 20;
SELECT * FROM coffee_orders ORDER BY id DESC;

SELECT points FROM customers WHERE name = 'Ross';

UPDATE customers
SET points = 9
WHERE name = 'Ross';

SELECT points FROM customers WHERE name = 'Ross';


-- Joey purchases two coffees
SELECT points FROM customers WHERE name = 'Joey';

INSERT INTO coffee_orders DEFAULT VALUES;
INSERT INTO coffee_orders DEFAULT VALUES;
SELECT * FROM coffee_orders;

UPDATE customers
SET points = 7
WHERE name = 'Joey';

SELECT points FROM customers WHERE name = 'Joey';


-- Monica wants to check her total points. Redeem her points for a coffee if she has enough points. If she doesn't, she wants to purchase a coffee.
SELECT points FROM customers WHERE name = 'Monica';

INSERT INTO coffee_orders (is_redeemed) VALUES (1);
SELECT * FROM coffee_orders;

UPDATE customers
SET points = 2
WHERE name = 'Monica';

SELECT points FROM customers WHERE name = 'Monica';


-- Chandler wants to delete his loyalty program account
SELECT * FROM customers;
-- DELETE FROM customers WHERE name = 'Chandler';
SELECT * FROM customers;


-- Ross wants to check his total points. Redeem his points for a coffee if he has enough points. If he doesn't, he wants to purchase a coffee.
SELECT points FROM customers WHERE name = 'Ross';

INSERT INTO coffee_orders DEFAULT VALUES;
SELECT * FROM coffee_orders;

UPDATE customers
SET points = 10
WHERE name = 'Ross';

SELECT points FROM customers WHERE name = 'Ross';


-- Joey wants to check his total points. Redeem his points for a coffee if he has enough points. If he doesn't, he wants to purchase a coffee.
SELECT points FROM customers WHERE name = 'Joey';

INSERT INTO coffee_orders DEFAULT VALUES;
SELECT * FROM coffee_orders;

UPDATE customers
SET points = 8
WHERE name = 'Joey';

SELECT points FROM customers WHERE name = 'Joey';


-- Phoebe wants to change her email to p_as_in_phoebe@friends.show
SELECT * FROM customers WHERE name = 'Phoebe';

UPDATE customers
SET email = 'p_as_in_phoebe@friends.show'
WHERE name = 'Phoebe';

SELECT * FROM customers WHERE name = 'Phoebe';


-- Work check
SELECT * FROM customers;
SELECT * FROM coffee_orders;