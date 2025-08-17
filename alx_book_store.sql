CREATE DATABASE IF NOT EXISTS alx_books_store;

USE alx_books_store;

CREATE TABLE Authors (
    aurthor_id INT PRIMARY KEY,
    aurthor_name VARCHAR(215) NOT NULL
);
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    aurthor_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (aurthor_id) REFERENCES (aurthor_id)
);
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT
);CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);