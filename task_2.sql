-- Use the alx_book_store database
USE alx_book_store;
["Authors", "author_id ", "author_name"]
["Books", "title", "price"]
["Customers", "customer_id ", "customer_name VARCHAR(215)", "email VARCHAR(215)", "address TEXT"]
["Orders", "order_id INT", "customer_id INT", "order_date DATE", "FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)"]
["Order_Details", "book_id INT", "quantity DOUBLE", "FOREIGN KEY (order_id) REFERENCES Orders(order_id)", "FOREIGN KEY (book_id) REFERENCES Books(book_id)"]
-- Create the authors table
CREATE TABLE IF NOT EXISTS AUTHORS (
    AUTHOR_ID INT AUTO_INCREMENT PRIMARY KEY,
    AUTHOR_NAME VARCHAR(215) NOT NULL
);

-- Create the books table
CREATE TABLE IF NOT EXISTS BOOKS (
    BOOK_ID INT AUTO_INCREMENT PRIMARY KEY,
    TITLE VARCHAR(130) NOT NULL,
    AUTHOR_ID INT,
    PRICE DOUBLE NOT NULL,
    PUBLICATION_DATE DATE,
    FOREIGN KEY (AUTHOR_ID) REFERENCES AUTHORS(AUTHOR_ID)
);

-- Create the customers table
CREATE TABLE IF NOT EXISTS CUSTOMERS (
    CUSTOMER_ID INT AUTO_INCREMENT PRIMARY KEY,
    CUSTOMER_NAME VARCHAR(215) NOT NULL,
    EMAIL VARCHAR(215) NOT NULL UNIQUE,
    ADDRESS TEXT
);

-- Create the orders table
CREATE TABLE IF NOT EXISTS ORDERS (
    ORDER_ID INT AUTO_INCREMENT PRIMARY KEY,
    CUSTOMER_ID INT,
    ORDER_DATE DATE NOT NULL,
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID)
);

-- Create the order_details table
CREATE TABLE IF NOT EXISTS ORDER_DETAILS (
    ORDERDETAILID INT AUTO_INCREMENT PRIMARY KEY,
    ORDER_ID INT,
    BOOK_ID INT,
    QUANTITY DOUBLE NOT NULL,
    FOREIGN KEY (ORDER_ID) REFERENCES ORDERS(ORDER_ID),
    FOREIGN KEY (BOOK_ID) REFERENCES BOOKS(BOOK_ID)
);
