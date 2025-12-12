create database OnlineBookstore;
select * from books;
select * from customers;
select * from orders;



-- 1) Retrieve all books in the "Fiction" genre:

SELECT 
    *
FROM
    BOOKS
WHERE
    genre = 'FICTION';

-- 2) Find books published after the year 1950:

SELECT 
    *
FROM
    BOOKS
WHERE
    Published_Year > 1950;

-- 3) List all customers from the Canada:

SELECT 
    *
FROM
    customers
WHERE
    Country = 'CANADA';

-- 4) Show orders placed in November 2023:

SELECT 
    *
FROM
    orders
WHERE
    Order_Date LIKE '2023-11-%';

-- 5) Retrieve the total stock of books available:

SELECT 
    SUM(STOCK) AS STOCK_AVAILABILITY
FROM
    BOOKS
GROUP BY TITLE
ORDER BY STOCK_AVAILABILITY;

-- 6) Find the details of the most expensive book:

SELECT 
  * FROM
    BOOKS
order by price desc
LIMIT 1;

-- 7) Show all customers who ordered more than 1 quantity of a book:

SELECT 
    c.name, o.Customer_ID, SUM(o.Quantity) AS Quantity
FROM
    orders o join customers c on c.Customer_ID = o.Customer_ID
WHERE
    Quantity > 1
GROUP BY o.Customer_ID, c.name
order by Quantity;


SELECT 
    *
FROM
    orders
WHERE
    Quantity > 1;

-- 8) Retrieve all orders where the total amount exceeds $20:

SELECT 
    *
FROM
    orders
WHERE
    Total_Amount > 20
ORDER BY Total_Amount;

-- 9) List all genres available in the Books table:

SELECT 
    distinct genre
FROM
    books;

-- 10) Find the book with the lowest stock:

SELECT 
    title, stock
FROM
    books
ORDER BY stock;

-- 11) Calculate the total revenue generated from all orders:

SELECT 
   round(SUM(Total_Amount),2)  AS Total_Reveneu
FROM
    orders; 

-- Advance Questions : 

-- 1) Retrieve the total number of books sold for each genre:

SELECT 
    b.genre, SUM(o.Quantity) AS qty_sold
FROM
    orders o
        JOIN
    books b ON b.Book_ID = o.Book_ID
GROUP BY Genre;


-- 2) Find the average price of books in the "Fantasy" genre:

select genre, round(avg(price),2) as average_price from books where genre = "Fantasy";

-- 3) List customers who have placed at least 2 orders:

SELECT 
    c.name, 
    o.Customer_ID, 
    COUNT(o.Order_ID) AS TotalOrders,
    SUM(o.Quantity) AS TotalQuantity
FROM orders o
JOIN customers c ON c.Customer_ID = o.Customer_ID
GROUP BY o.Customer_ID, c.name
HAVING COUNT(o.Order_ID) >= 2
ORDER BY TotalOrders;


-- 4) Find the top 3 most frequently ordered books:

SELECT 
    o.Book_ID, b.title, COUNT(o.Book_ID) AS no_of_orders
FROM
    orders o
        JOIN
    books b ON o.Book_ID = b.Book_ID
GROUP BY o.Book_ID , b.Title
ORDER BY no_of_orders DESC
LIMIT 3;

-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :


SELECT 
    *
FROM
    books
WHERE
    genre = 'Fantasy'
ORDER BY Price DESC
LIMIT 3;

-- 6) Retrieve the total quantity of books sold by each author:

SELECT 
    b.Author, SUM(o.Quantity) AS qty_sold
FROM
    orders o
        JOIN
    books b ON o.Book_ID = b.Book_ID
    group by Author
    order by qty_sold desc;

-- 7) List the cities where customers who spent over $30 are located:

SELECT 
    c.City, o.Total_Amount
FROM
    customers C
        JOIN
    orders O ON c.Customer_ID = o.Customer_ID
WHERE
    O.Total_Amount >= 30;

-- 8) Find the customer who spent the most on orders:

SELECT 
    C.NAME, SUM(O.Total_Amount) AS Total_Amount
FROM
    customers C
        JOIN
    orders O ON c.Customer_ID = o.Customer_ID
    group by C.NAME
ORDER BY Total_Amount DESC
LIMIT 1;
    
-- --9) Calculate the stock remaining after fulfilling all orders:

SELECT 
    SUM(Stock)
FROM
    books;
  -- /////////////////////////////////////////////////////////////////////////////--
SELECT 
    b.Book_ID,
    b.Title,
    b.Stock - IFNULL(SUM(o.Quantity), 0) AS Remaining_Stock
FROM
    books b
        LEFT JOIN
    orders o ON b.Book_ID = o.Book_ID
GROUP BY b.Book_ID , b.Title , b.Stock;


-- ONLINE BOOK STORE ANALYSIS PROJECT - KAIF-FIROZ 

/* Thank You :) */
