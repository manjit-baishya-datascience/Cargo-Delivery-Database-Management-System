# **Cargo - Parcel Database Management System** 📦📊
![Header](/assets/Header.png)

This Parcel Management System is designed to efficiently manage parcels, customers, sellers, hubs, routes, delivery persons, staff, managers, and buyers within a delivery network. It provides a comprehensive solution for tracking parcels from order placement to delivery. 🚚🔍

## **Table of Contents** 📋

- [**Database Schema**](#database-schema) 🗄️
- [**Schema Diagram**](#schema-diagram) ❇️
- [**Tables**](#tables) 📄
- [**Functionalities**](#functionalities) ⚙️
- [**Setup**](#setup) 🛠️
- [**Contributing**](#contributing) 🤝
- [**License**](#license) 📝

## **Database Schema** 🗄️

The database schema includes tables to store information about parcels, customers, sellers, hubs, routes, delivery persons, staff, managers, and buyers. Relationships are established between entities to maintain data integrity. 🛡️

## **Schema Diagram** ❇️
![Schema Diagram](/assets/schema.svg)

## **Tables** 📄

1. `Parcels`: Stores parcel information including tracking number, size, weight, destination, status, order date, delivery date, and associated customer, seller, source hub, and destination hub.

2. `Customers`: Contains customer details such as name, address, state, PIN, and contact number.

3. `Sellers`: Stores seller information including name, address, state, PIN, and contact number.

4. `Hubs`: Stores hub details like location, state, PIN, capacity, and contact number.

5. `Routes`: Contains route information including departure point, destination point, mode of transport, and estimated delivery arrival (EDA).

6. `DeliveryPersons`: Stores delivery person details like name, contact number, address, and associated hub.

7. `Staff`: Contains staff details including name, address, contact number, and associated hub.

8. `Managers`: Stores manager details such as name, address, contact number, and associated hub.

9. `Buyers`: Contains buyer details like name, address, and contact number.

## **Functionalities** ⚙️

- `Parcel tracking`: Customers can track their parcels using the provided tracking number.
- `Efficient delivery management`: Delivery persons are assigned parcels based on routes and hub locations.
- `Customer and seller management`: Maintain detailed information about customers and sellers for effective communication and order management.
- `Hub management`: Track hub capacity, location, and contact information for efficient parcel sorting and distribution.
- `Staff and manager management`: Manage staff and managers assigned to hubs for overseeing operations and resolving issues.
- `Route planning`: Plan delivery routes based on departure and destination points, mode of transport, and estimated delivery times.

## **Setup** 🛠️

1. Clone the repository to your local machine.
2. Set up your preferred database management system (DBMS) and execute the SQL scripts to create the database schema.
3. Configure the application settings to connect to your database.
4. Start the application and begin managing parcels, customers, sellers, hubs, routes, delivery persons, staff, managers, and buyers efficiently.

## **Contributing** 🤝

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## **License** 📝

This project is licensed under the [MIT License](LICENSE).
