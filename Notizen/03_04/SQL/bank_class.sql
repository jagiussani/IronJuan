USE bank;
SELECT * FROM account;
SELECT client_id, birth_number FROM client;
SELECT *, amount - Payments AS balance FROM bank.loan;


SELECT * FROM bank.loan
WHERE status NOT IN ("b") AND amount > 100000; # AND #add combinations

# Comparison operators
SELECT * FROM bank.loan
WHERE status <> ("b") AND amount > 100000; # equivalent to the code before

# Select operator
SELECT DISTINCT status FROM bank.loan
ORDER BY status DESC;

# In operators
SELECT * FROM bank.account
WHERE district_id IN (1,2,3,4,5);

# Aggregation. Find out he sum of amount loans per account
SELECT account_id, sum(amount) AS total FROM loan
GROUP BY  account_id;

SELECT account_id, sum(amount) AS total FROM loan
GROUP BY  account_id # for each account id
ORDER BY total # default ascending 
LIMIT 1;
# The account with the lowest amount 


SELECT date, avg(amount) AS Average FROM trans
GROUP BY date
ORDER BY Average DESC
LIMIT 5;


SELECT floor(avg(amount)) FROM bank.order;

SELECT SUBSTRING("Hello world",7,1) 

#LIKE: Pwith underscore keyword to select everything that starts with north and M 
SELECT * FROM bank.district
WHERE A3 LIKE "north_M%";

