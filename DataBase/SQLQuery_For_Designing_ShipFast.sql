CREATE TABLE Users (
    Id INT IDENTITY(1,1) PRIMARY KEY,     -- Primary Key with Identity
    Name NVARCHAR(MAX),                   -- Change to NVARCHAR
    Email NVARCHAR(255) UNIQUE,           -- Use NVARCHAR for emails
    PasswordHash NVARCHAR(MAX),            -- Store hashed password, not plain text
    PhoneNumber NVARCHAR(MAX),             -- Change to NVARCHAR
    Address NVARCHAR(MAX)                  -- Change to NVARCHAR
);

CREATE TABLE Orders (
    Id INT IDENTITY(1,1) PRIMARY KEY,      -- Primary Key with Identity
    SenderId INT,                          -- Foreign Key referencing Users(Id)
    ReceiverName NVARCHAR(MAX),            -- Change to NVARCHAR
    ReceiverAddress NVARCHAR(MAX),         -- Change to NVARCHAR
    ReceiverPhoneNumber NVARCHAR(MAX),     -- Change to NVARCHAR
    Weight DECIMAL(10, 2),
    TrackingNumber NVARCHAR(50) UNIQUE,    -- Ensure unique tracking numbers
    ShipmentStatus NVARCHAR(20),
    ShipmentDate DATETIME,
    DeliveryDate DATETIME,
    ShippingCost DECIMAL(10, 2),
    PackageType NVARCHAR(30),
    SpecialInstructions NVARCHAR(MAX),     -- Change to NVARCHAR
    PaymentStatus NVARCHAR(20),

    -- Define Foreign Key constraint
    CONSTRAINT FK_Sender FOREIGN KEY (SenderId) REFERENCES Users(Id)
);
