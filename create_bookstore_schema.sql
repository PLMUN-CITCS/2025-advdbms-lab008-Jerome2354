
CREATE DATABASE `BookstoreDB`;


USE `BookstoreDB`;

CREATE TABLE `Books` (
   `ISBN` VARCHAR(20) PRIMARY KEY,
   `Title` VARCHAR(255) NOT NULL,
   `Price` DECIMAL(10,2) NOT NULL
);


CREATE TABLE `Authors` (
   `AuthorID` INT AUTO_INCREMENT PRIMARY KEY,
   `Name` VARCHAR(255) NOT NULL
);


CREATE TABLE `BookAuthors` (
   `ISBN` VARCHAR(20),
   `AuthorID` INT,
   PRIMARY KEY (`ISBN`, `AuthorID`),
   FOREIGN KEY (`ISBN`) REFERENCES `Books`(`ISBN`),
   FOREIGN KEY (`AuthorID`) REFERENCES `Authors`(`AuthorID`)
);


CREATE TABLE `Customers` (
   `CustomerID` INT AUTO_INCREMENT PRIMARY KEY,
   `Name` VARCHAR(255) NOT NULL,
   `Email` VARCHAR(255) NOT NULL
);


CREATE TABLE `Orders` (
   `OrderID` INT AUTO_INCREMENT PRIMARY KEY,
   `CustomerID` INT,
   `OrderDate` DATE NOT NULL,
   FOREIGN KEY (`CustomerID`) REFERENCES `Customers`(`CustomerID`)
);


CREATE TABLE `OrderDetails` (
   `OrderID` INT,
   `ISBN` VARCHAR(20),
   `Quantity` INT NOT NULL,
   PRIMARY KEY (`OrderID`, `ISBN`),
   FOREIGN KEY (`OrderID`) REFERENCES `Orders`(`OrderID`),
   FOREIGN KEY (`ISBN`) REFERENCES `Books`(`ISBN`)
);
