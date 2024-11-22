CREATE TABLE dealerships (
    dealershipID INT PRIMARY KEY AUTO_INCREMENT,
    customername VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL,
    phonenumber VARCHAR(12) NOT NULL
);

INSERT INTO dealerships (customername, address, phonenumber)
VALUES
('John Doe', '123 Main St, Springfield, IL 62701', '217-555-1234'),
('Jane Smith', '456 Oak Rd, Decatur, IL 62521', '217-555-5678'),
('Mike Johnson', '789 Pine Ave, Chatham, IL 62629', '217-555-9876'),
('Emily Davis', '101 Maple St, Jacksonville, IL 62650', '217-555-4321'),
('David Brown', '202 Birch Dr, Urbana, IL 61801', '217-555-8765'),
('Sarah Wilson', '303 Cedar Ln, Bloomington, IL 61701', '309-555-1122'),
('Robert Taylor', '404 Elm St, Peoria, IL 61602', '309-555-3344'),
('Jessica Anderson', '505 Ash St, Rock Island, IL 61201', '309-555-5566'),
('William Lee', '606 Spruce St, Galesburg, IL 61401', '309-555-7788'),
('Olivia Martin', '707 Cherry Blvd, Normal, IL 61761', '309-555-9900');

CREATE TABLE vehicle (
    car_id INT AUTO_INCREMENT,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    vehicleyear INT NOT NULL,
    price DECIMAL(5, 2) NOT NULL,
    color VARCHAR(15),
    sold VARCHAR(20) NOT NULL,
    mileage INT
	VIN VARCHAR(17) PRIMARY KEY NOT NULL,
);

INSERT INTO vehicles (make, model, vehicleyear, price, color, sold, mileage,vin)
VALUES
('Toyota', 'Camry', 2020, 24000.00, 'Blue', 'In Stock', 25000),
('Toyota', 'Corolla', 2021, 22000.00, 'Red', 'In Stock', 15000),
('Toyota', 'RAV4', 2022, 30000.00, 'White', 'Sold', 10000),
('Honda', 'Civic', 2022, 23000.00, 'Black', 'In Stock', 12000),
('Honda', 'Accord', 2021, 27000.00, 'Silver', 'In Stock', 18000),
('Honda', 'CR-V', 2020, 29000.00, 'Green', 'Sold', 22000),
('Ford', 'F-150', 2023, 45000.00, 'Blue', 'In Stock', 5000),
('Ford', 'Mustang', 2023, 38000.00, 'Yellow', 'In Stock', 3000),
('Chevrolet', 'Silverado', 2021, 41000.00, 'Black', 'In Stock', 14000),
('Chevrolet', 'Malibu', 2022, 26000.00, 'White', 'In Stock', 8000),
('BMW', '3 Series', 2021, 45000.00, 'Silver', 'Sold', 12000),
('BMW', 'X5', 2020, 62000.00, 'Black', 'In Stock', 30000),
('Audi', 'A4', 2023, 52000.00, 'Blue', 'In Stock', 2000),
('Audi', 'Q5', 2022, 55000.00, 'Grey', 'In Stock', 10000),
('Mercedes', 'C-Class', 2022, 52000.00, 'White', 'Sold', 20000);

CREATE TABLE inventory (
    inventoryID INT PRIMARY KEY AUTO_INCREMENT,
    dealershipID INT,
    VIN VARCHAR(17) NOT NULL,
    FOREIGN KEY (dealershipID) REFERENCES dealerships(dealershipID)
);

INSERT INTO inventory (dealershipID, VIN)
VALUES
(1, '1HGBH41JXMN109186'),
(2, '2FMDK3JCXBBJ58234'),
(3, '3C6RR7LT6KG578940'),
(4, '5UXWX7C55L0C23810'),
(5, '1FTEW1EP3JKD42618'),
(6, '1C4PJMCB0KD254893'),
(7, '2G1WB5E37B1117437'),
(8, '3N1AB7AP2FY265743'),
(9, '5TDDZ3DC9JS132463'),
(10, '2G1FB1E37J9243650');

CREATE TABLE sales_contracts (
contractID INT PRIMARY KEY AUTO_INCREMENT,
    VIN VARCHAR(17) NOT NULL,
    APR DECIMAL(5, 2) NOT NULL,
    contract_date DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (VIN) REFERENCES inventory(VIN)
);

INSERT INTO sales_contracts (VIN, APR)
VALUES
('1HGBH41JXMN109186', 3.75),
('2FMDK3JCXBBJ58234', 4.25),
('3C6RR7LT6KG578940', 5.00),
('5UXWX7C55L0C23810', 3.50),
('1FTEW1EP3JKD42618', 4.00),
('1C4PJMCB0KD254893', 3.80),
('2G1WB5E37B1117437', 5.50),
('3N1AB7AP2FY265743', 4.10),
('5TDDZ3DC9JS132463', 3.95),
('2G1FB1E37J9243650', 4.60);

