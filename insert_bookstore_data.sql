
INSERT INTO `Books` (`ISBN`, `Title`, `Price`) VALUES
('9781234567890', 'The Hitchhiker''s Guide to the Galaxy', 7.99),
('9780321765723', 'The Lord of the Rings', 12.99),
('9780743273565', 'Pride and Prejudice', 9.99);


INSERT INTO `Authors` (`Name`) VALUES
('Douglas Adams'),
('J.R.R. Tolkien'),
('Jane Austen');


INSERT INTO `BookAuthors` (`ISBN`, `AuthorID`) VALUES
('9781234567890', 1),
('9780321765723', 2),
('9780743273565', 3);


INSERT INTO `Customers` (`Name`, `Email`) VALUES
('John Doe', 'john.doe@example.com'),
('Jane Smith', 'jane.smith@example.com'),
('David Lee', 'david.lee@example.com');


INSERT INTO `Orders` (`CustomerID`, `OrderDate`) VALUES
(1, '2024-07-26'),
(2, '2024-07-27'),
(3, '2024-07-28');


INSERT INTO `OrderDetails` (`OrderID`, `ISBN`, `Quantity`) VALUES
(1, '9781234567890', 1),
(1, '9780321765723', 2),
(2, '9780743273565', 1);
