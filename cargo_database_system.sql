-- Dropping table [Parcels]
DROP TABLE IF EXISTS Parcels;

-- Creating table for data regarding the parcels ordered
CREATE TABLE IF NOT EXISTS Parcels (
    ParcelID INTEGER PRIMARY KEY,
    TrackingNumber TEXT,
    Size TEXT,
    Weight REAL,
    Destination TEXT,
    Status TEXT,
    OrderDate DATE,
    DeliveryDate DATE,
    CustomerID INTEGER,
    SellerID INTEGER,
    SourceHubID INTEGER,
    DestinationHubID INTEGER,
    
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (SellerID) REFERENCES Sellers(SellerID),
    FOREIGN KEY (SourceHubID) REFERENCES Hubs(HubID),
    FOREIGN KEY (DestinationHubID) REFERENCES Hubs(HubID)
);

-- Dropping table [Customers]
DROP TABLE IF EXISTS Customers;
-- Creating table to store information about customers
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INTEGER PRIMARY KEY,
    Name TEXT,
    Address TEXT,
    State TEXT,
    PIN TEXT,
    ContactNumber TEXT
);

-- Dropping table [Sellers]
DROP TABLE IF EXISTS Sellers;
-- Creating table to store information about sellers
CREATE TABLE IF NOT EXISTS Sellers (
    SellerID INTEGER PRIMARY KEY,
    Name TEXT,
    Address TEXT,
    State TEXT,
    PIN TEXT,
    ContactNumber TEXT
);

-- Dropping table [Hubs]
DROP TABLE IF EXISTS Hubs;
-- Creating table to store information about hubs
CREATE TABLE IF NOT EXISTS Hubs (
    HubID INTEGER PRIMARY KEY,
    Location TEXT,
    State TEXT,
    PIN TEXT,
    Capacity INTEGER,
    ContactNumber TEXT
);

-- Dropping table [Routes]
DROP TABLE IF EXISTS Routes;
-- Creating table to store information about routes
CREATE TABLE IF NOT EXISTS Routes (
    RouteID INTEGER PRIMARY KEY,
    DeparturePoint TEXT,
    DestinationPoint TEXT,
    Mode TEXT,
    EDA TEXT
);

-- Dropping table [DeliveryPersons]
DROP TABLE IF EXISTS DeliveryPersons;
-- Creating table to store information about delivery persons
CREATE TABLE IF NOT EXISTS DeliveryPersons (
    DeliveryPersonID INTEGER PRIMARY KEY,
    Name TEXT,
    ContactNumber TEXT,
    Address TEXT,
    HubID INTEGER,
    
    FOREIGN KEY (HubID) REFERENCES Hubs(HubID)
);

-- Dropping table [Staff]
DROP TABLE IF EXISTS Staff;
-- Creating table to store information about staff
CREATE TABLE IF NOT EXISTS Staff (
    StaffID INTEGER PRIMARY KEY,
    Name TEXT,
    Address TEXT,
    ContactNumber TEXT,
    HubID INTEGER,
    
    FOREIGN KEY (HubID) REFERENCES Hubs(HubID)
);

-- Dropping table [Managers]
DROP TABLE IF EXISTS Managers;
-- Creating table to store information about managers
CREATE TABLE IF NOT EXISTS Managers (
    ManagerID INTEGER PRIMARY KEY,
    Name TEXT,
    Address TEXT,
    ContactNumber TEXT,
    HubID INTEGER,
    
    FOREIGN KEY (HubID) REFERENCES Hubs(HubID)
);

-- Dropping table [Buyers]
DROP TABLE IF EXISTS Buyers;
-- Creating table to store information about buyers
CREATE TABLE IF NOT EXISTS Buyers (
    BuyerID INTEGER PRIMARY KEY,
    Name TEXT,
    Address TEXT,
    ContactNumber TEXT
);
