/************************************************************
* Create the database named abcover, its tables, and a user
************************************************************/

DROP DATABASE IF EXISTS abcover;
  
CREATE DATABASE abcover;
  
USE abcover;

CREATE TABLE Invoice(
    InvoiceID INT NOT NULL AUTO_INCREMENT,
    user_email VARCHAR(100) NOT NULL DEFAULT '',
    chair_type VARCHAR(100) NOT NULL DEFAULT '',
    chair_amount int NOT NULL DEFAULT 0,
    table_type VARCHAR(100) NOT NULL DEFAULT '',
    table_amount int NOT NULL DEFAULT 0,
    plate_type VARCHAR(100) NOT NULL DEFAULT '',
    plate_amount int NOT NULL DEFAULT 0,
    napkin_type VARCHAR(100) NOT NULL DEFAULT '',
    napkin_amount int NOT NULL DEFAULT 0,
    utensil_type VARCHAR(100) NOT NULL DEFAULT '',
    utensil_amount int NOT NULL DEFAULT 0,
    price DECIMAL(7,2) NOT NULL DEFAULT '0.00',
  
    PRIMARY KEY (InvoiceID)
);

CREATE TABLE Feedback(
    MessageID INT NOT NULL AUTO_INCREMENT,
    message_topic VARCHAR(100) NOT NULL DEFAULT '',
    first_name VARCHAR(100) NOT NULL DEFAULT '',
    last_name VARCHAR(100) NOT NULL DEFAULT '',
    user_email VARCHAR(100) NOT NULL DEFAULT '',
    phone_number bigint NOT NULL DEFAULT 0,
    message_comment VARCHAR(6553) NOT NULL DEFAULT '',
  
    PRIMARY KEY (MessageID)
);

CREATE TABLE Inventory(
    InvID INT NOT NULL AUTO_INCREMENT,
    ItemName VARCHAR(100) NOT NULL DEFAULT '',
    available int NOT NULL DEFAULT 0,
    rented int NOT NULL DEFAULT 0,
    price DECIMAL(7,2) NOT NULL DEFAULT '0.00',
  
    PRIMARY KEY (InvID)
);

INSERT INTO Inventory VALUES 
  ('1', 'White Chair', '200', '0', '40'),
  ('2', 'Clear Chair', '200', '0', '40'),
  ('3', 'Silver Table', '200', '0', '80'),
  ('4', 'White Table', '200', '0', '100'),
  ('5', 'Silver Plate', '200', '0', '10'),
  ('6', 'Gold Plate', '200', '0', '15'),
  ('7', 'White Napkin', '200', '0', '20'),
  ('8', 'Silver Utensils', '200', '0', '15'),
  ('9', 'Gold Utensils', '200', '0', '30');
  
  
-- Create abcover_user and grant privileges

DELIMITER //
CREATE PROCEDURE drop_user_if_exists()
BEGIN
    DECLARE userCount BIGINT DEFAULT 0 ;

    SELECT COUNT(*) INTO userCount FROM mysql.user
    WHERE User = 'abcover_user' and  Host = 'localhost';

    IF userCount > 0 THEN
        DROP USER abcover_user@localhost;
    END IF;
END ; //
DELIMITER ;

CALL drop_user_if_exists() ;

CREATE USER abcover_user@localhost IDENTIFIED BY 'sesame';

GRANT SELECT, INSERT, UPDATE, DELETE
ON abcover.*
TO abcover_user@localhost;
