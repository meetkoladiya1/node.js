1. Fetch & display all the employee details
SELECT * FROM Employees;

2. Fetch & display employee details for the employees having job Title='Sales Rep' and Employee number between 1200 and 1500
SELECT * FROM Employees WHERE jobTitle = 'Sales Rep' AND employeeNumber BETWEEN 1200 AND 1500;

3. Fetch & display employee details for the employees having office code 2 or more than 2 and job title is not Sales Rep
SELECT * FROM Employees WHERE officeCode >= 2 AND jobTitle <> 'Sales Rep';

4. Fetch & display customers details(Customers table) who does not belongs to USA
SELECT * FROM Customers WHERE country <> 'USA';

5. Fetch & display customers details(Customers table)  having customer number not in the range 150 to 200
SELECT * FROM Customers WHERE customerNumber NOT BETWEEN 150 AND 200;

6. List out last name, first name for all employees and rename  last name as “Name of the employee”, display as sorting order of their last name
SELECT lastName AS "Name of the employee", firstName FROM Employees ORDER BY lastName;

7.  List out the customers having credit limit is more than 70000 display in descending order by their last name.
select * from customers where creditlimit > 70000 order by contactlastname desc;

8. List out all customers belongs to city Singapore, Liverpool or NYC
SELECT * FROM Customers WHERE city IN ('Singapore', 'Liverpool', 'NYC');

    9. List the details about customer first name “SMITH”
SELECT * FROM Customers WHERE firstName = 'SMITH';

10. List out the employees who are working in office code 1, 3 , 5
SELECT * FROM Employees WHERE officeCode IN (1, 3, 5);

11. List out the customer having credit limit between 50000 and 95000
SELECT * FROM Customers WHERE creditLimit BETWEEN 50000 AND 95000;

12. List out the employees who are not working in office code 1 , 3
SELECT * FROM Employees WHERE officeCode NOT IN (1, 3);

    13. List out the customers whose first name starts with “S”
SELECT * FROM Customers WHERE firstName LIKE 'S%';

    14. List out the customers whose name start with “S” and end with “H”
SELECT * FROM Customers WHERE firstName LIKE 'S%h';

    15. List out the customers whose first name length is 5 and start with “S”
SELECT * FROM Customers WHERE firstName LIKE 'S_'; -- underscore () represents a single character in SQL pattern matching

    16. List out the customers whose first name length is exactly 8
SELECT * FROM Customers WHERE LENGTH(firstName) = 8;

    17. List out the customers whose first name starting with a and ending with e
SELECT * FROM Customers WHERE firstName LIKE 'a%e';

    18. List out the customers whose first name contains ee
SELECT * FROM Customers WHERE firstName LIKE '%ee%';

    19. Show Count of employees who are working in different office in the organization
SELECT officeCode, COUNT(*) AS numEmployees FROM Employees GROUP BY officeCode;

20. List out the maximum credit limit of customers belongs to different states
SELECT state, MAX(creditLimit) AS maxCreditLimit FROM Customers GROUP BY state;
















-- Query 1
SELECT * FROM Employees;
-- Query 2
SELECT *FROM Employees WHERE jobTitle = 'Sales Rep' AND employeeNumber BETWEEN 1200 AND 1500;
-- Query 3
SELECT * FROM Employees WHERE officeCode >= 2 AND jobTitle <> 'Sales Rep';
-- Query 4
SELECT * FROM Customers WHERE country <> 'USA';
-- Query 5
SELECT * FROM Customers WHERE customerNumber NOT BETWEEN 150 AND 200;
-- Query 6
SELECT lastName AS "Name of the employee", firstName FROM Employees ORDER BY lastName;
-- Query 7
SELECT * FROM Customers WHERE creditLimit > 70000 ORDER BY lastName DESC;
-- Query 8
SELECT * FROM Customers WHERE city IN ('Singapore', 'Liverpool', 'NYC');
-- Query 9
SELECT * FROM Customers WHERE firstName = 'SMITH';
-- Query 10
SELECT * FROM Employees WHERE officeCode IN (1, 3, 5);
-- Query 11
SELECT * FROM Customers WHERE creditLimit BETWEEN 50000 AND 95000;
-- Query 12
SELECT * FROM Employees WHERE officeCode NOT IN (1, 3);
-- Query 13
SELECT * FROM Customers WHERE firstName LIKE 'S%';
-- Query 14
SELECT * FROM Customers WHERE firstName LIKE 'S%h';
-- Query 15
SELECT * FROM Customers WHERE firstName LIKE 'S____'; -- underscore (_) represents a single character in SQL pattern matching
-- Query 16
SELECT * FROM Customers WHERE LENGTH(firstName) = 8;
-- Query 17
SELECT * FROM Customers WHERE firstName LIKE 'a%e';
-- Query 18
SELECT * FROM Customers WHERE firstName LIKE '%ee%';
-- Query 19
SELECT officeCode, COUNT(*) AS numEmployees FROM Employees GROUP BY officeCode;
-- Query 20
SELECT state, MAX(creditLimit) AS maxCreditLimit FROM Customers GROUP BY state;