CREATE TABLE Parcels (
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

CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    Name TEXT,
    Address TEXT,
    State TEXT,
    PIN TEXT,
    ContactNumber TEXT
);

CREATE TABLE Sellers (
    SellerID INTEGER PRIMARY KEY,
    Name TEXT,
    Address TEXT,
    State TEXT,
    PIN TEXT,
    ContactNumber TEXT
);

CREATE TABLE Hubs (
    HubID INTEGER PRIMARY KEY,
    Location TEXT,
    State TEXT,
    PIN TEXT,
    capacity INTEGER,
    ContactNumber TEXT
);

CREATE TABLE Routes (
    RouteID INTEGER PRIMARY KEY,
    DeparturePoint TEXT,
    DestinationPoint TEXT,
    Mode TEXT,
    EDA TEXT
);

CREATE TABLE DeliveryPersons (
    DeliveryPersonID INTEGER PRIMARY KEY,
    Name TEXT,
    ContactNumber TEXT,
    Address TEXT,
    HubID INTEGER,
    
    FOREIGN KEY (HubID) REFERENCES Hubs(HubID)
);

CREATE TABLE Staff (
    StaffID INTEGER PRIMARY KEY,
    Name TEXT,
    Address TEXT,
    ContactNumber TEXT,
    HubID INTEGER,
    
    FOREIGN KEY (HubID) REFERENCES Hubs(HubID)
);

CREATE TABLE Managers (
    ManagerID INTEGER PRIMARY KEY,
    Name TEXT,
    Address TEXT,
    ContactNumber TEXT,
    HubID INTEGER,
    
    FOREIGN KEY (HubID) REFERENCES Hubs(HubID)
);

CREATE TABLE Buyers (
    BuyerID INTEGER PRIMARY KEY,
    Name TEXT,
    Address TEXT,
    ContactNumber TEXT
);