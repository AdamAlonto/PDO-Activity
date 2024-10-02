
INSERT INTO Customer (CustomerID, FullName, ContactNumber, Email) VALUES
(1, 'John Doe', '123-456-7890', 'johndoe@example.com'),
(2, 'Jane Smith', '098-765-4321', 'janesmith@example.com'),
(3, 'Bob Johnson', '111-222-3333', 'bobjohnson@example.com'),
(4, 'Alice Brown', '222-333-4444', 'alicebrown@example.com'),
(5, 'Tom Davis', '333-444-5555', 'tomdavis@example.com');

INSERT INTO Computer (ComputerID, ComputerNumber, Status) VALUES
(1, 1, 'Available'),
(2, 2, 'In Use'),
(3, 3, 'Available'),
(4, 4, 'Available'),
(5, 5, 'In Use');

INSERT INTO Employee (EmployeeID, FullName, Position, WorkSchedule) VALUES
(1, 'Anna Taylor', 'Manager', 'Mon-Fri 9am-5pm'),
(2, 'Mark Wilson', 'Technician', 'Mon-Fri 2pm-10pm'),
(3, 'Linda Harris', 'Receptionist', 'Mon-Fri 8am-4pm'),
(4, 'James Clark', 'Technician', 'Sat-Sun 10am-6pm'),
(5, 'Sarah Lewis', 'Receptionist', 'Sat-Sun 10am-6pm');

INSERT INTO Session (SessionID, CustomerID, ComputerID, EmployeeID, StartTime, EndTime) VALUES
(1, 1, 2, 1, '2024-09-10 10:00:00', '2024-09-10 12:00:00'),
(2, 2, 5, 2, '2024-09-10 11:00:00', '2024-09-10 12:30:00'),
(3, 3, 1, 3, '2024-09-10 09:30:00', '2024-09-10 11:00:00'),
(4, 4, 3, 4, '2024-09-10 01:00:00', '2024-09-10 03:00:00'),
(5, 5, 4, 5, '2024-09-10 02:00:00', '2024-09-10 03:30:00');

INSERT INTO Payment (PaymentID, SessionID, Amount, PaymentTime) VALUES
(1, 1, 20.00, '2024-09-10 12:05:00'),
(2, 2, 15.00, '2024-09-10 12:35:00'),
(3, 3, 18.00, '2024-09-10 11:05:00'),
(4, 4, 25.00, '2024-09-10 03:05:00'),
(5, 5, 22.00, '2024-09-10 03:35:00');


CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(255),
    ContactNumber VARCHAR(15),
    Email VARCHAR(255)
);

CREATE TABLE Computer (
    ComputerID INT PRIMARY KEY,
    ComputerNumber INT UNIQUE,
    Status VARCHAR(50)
);

CREATE TABLE Session (
    SessionID INT PRIMARY KEY,
    CustomerID INT,
    ComputerID INT,
    EmployeeID INT,
    StartTime DATETIME,
    EndTime DATETIME
);

CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    SessionID INT,
    Amount DECIMAL(10, 2),
    PaymentTime DATETIME
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FullName VARCHAR(255),
    Position VARCHAR(50),
    WorkSchedule VARCHAR(255)
);
