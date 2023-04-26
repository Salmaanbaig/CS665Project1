/*CREATE TABLE House_Sales.bike(
    House_Id int primary key Auto_Increment,
    Area int,
    Furnished_Details VARCHAR(50),
    House_type VARCHAR(50),
    House_Price float
);




*/
/*
INSERT INTO House_Sales.bike (Area, Furnished_Details, House_type, House_Price)
VALUES (100, 'Fully Furnished', 'Apartment', 50000.00);

INSERT INTO House_Sales.bike (Area, Furnished_Details, House_type, House_Price)
VALUES (180, 'Semi Furnished', 'House', 100000.00);


INSERT INTO House_Sales.bike (Area, Furnished_Details, House_type, House_Price)
VALUES (150, 'Semi Furnished', 'Flat', 80000.00);


INSERT INTO House_Sales.bike (Area, Furnished_Details, House_type, House_Price)
VALUES (200, 'UnFurnished', 'Villa', 150000.00);


INSERT INTO House_Sales.bike (Area, Furnished_Details, House_type, House_Price)
VALUES (185, 'Fully Furnished', 'House', 120000.00);



CREATE TABLE House_Sales.owerDetails(
    owner_Id int primary key Auto_Increment,
    Area int,
    Phone_Num VARCHAR(50),
    owner_name VARCHAR(50),
    house_id int,
    FOREIGN KEY (house_id) REFERENCES House_Sales.bike(House_Id)
);




DROP TABLE House_Sales.owerDetails;



CREATE TABLE House_Sales.ownerDetails(
    owner_Id int primary key Auto_Increment,
    owner_address varchar(50),
    Phone_Num VARCHAR(50),
    owner_name VARCHAR(50),
    house_id int,
    FOREIGN KEY (house_id) REFERENCES House_Sales.bike(House_Id)
);




INSERT INTO House_Sales.ownerDetails (owner_address, Phone_Num, owner_name, house_id)
VALUES ('123 Main St.', '123-456-7890', 'John Doe', 1);

INSERT INTO House_Sales.ownerDetails (owner_address, Phone_Num, owner_name, house_id)
VALUES ('123 south St.', '122-333-4456', 'John Watson', 2);

INSERT INTO House_Sales.ownerDetails (owner_address, Phone_Num, owner_name, house_id)
VALUES ('123 Manison St.', '123-456-7890', 'Wanda', 3);

INSERT INTO House_Sales.ownerDetails (owner_address, Phone_Num, owner_name, house_id)
VALUES ('456 Esster St.', '123-444-7890', 'Steve', 4);

INSERT INTO House_Sales.ownerDetails (owner_address, Phone_Num, owner_name, house_id)
VALUES ('112 varma St.', '123-456-7770', 'Tony', 5);

CREATE TABLE House_Sales.Gov_details(

    OLD_owner_Id int,
    current_owner_id int,
    Survey_num int,
    house_id int,
    FOREIGN KEY (house_id) REFERENCES House_Sales.bike(House_Id),
    FOREIGN KEY (OLD_owner_Id) REFERENCES House_Sales.oldownerdetails(owner_id),
    FOREIGN KEY (current_owner_id) REFERENCES House_Sales.ownerDetails(owner_Id)
);



CREATE TABLE House_Sales.oldownerDetails(
    owner_Id int primary key Auto_Increment,
    owner_address varchar(50),
    Phone_Num VARCHAR(50),
    owner_name VARCHAR(50),
    house_id int,
    FOREIGN KEY (house_id) REFERENCES House_Sales.bike(House_Id)
);



INSERT INTO House_Sales.oldownerDetails(owner_Id, owner_address, Phone_Num, owner_name, house_id)
VALUES (1, '1223 Elm St', '123-555-5678', 'Jane', 1);

INSERT INTO House_Sales.oldownerDetails(owner_Id, owner_address, Phone_Num, owner_name, house_id)
VALUES (2, '456 Eloy St', '456-555-5678', 'Mary', 2);


INSERT INTO House_Sales.oldownerDetails(owner_Id, owner_address, Phone_Num, owner_name, house_id)
VALUES (3, '456 Emolen St', '789-555-5678', 'Monsena', 3);


INSERT INTO House_Sales.oldownerDetails(owner_Id, owner_address, Phone_Num, owner_name, house_id)
VALUES (4, '456 Emptey St', '987-555-5678', 'Danush', 4);

INSERT INTO House_Sales.oldownerDetails(owner_Id, owner_address, Phone_Num, owner_name, house_id)
VALUES (5, '456 stack St', '654-555-5678', 'Sam', 5);


INSERT INTO House_Sales.Gov_details (OLD_owner_Id, current_owner_id, Survey_num, house_id)
VALUES (1, 1, 1234, 1);

INSERT INTO House_Sales.Gov_details (OLD_owner_Id, current_owner_id, Survey_num, house_id)
VALUES (2, 2, 5678, 2);

INSERT INTO House_Sales.Gov_details (OLD_owner_Id, current_owner_id, Survey_num, house_id)
VALUES (3, 3, 9012, 3);

INSERT INTO House_Sales.Gov_details (OLD_owner_Id, current_owner_id, Survey_num, house_id)
VALUES (4, 4, 3456, 4);

INSERT INTO House_Sales.Gov_details (OLD_owner_Id, current_owner_id, Survey_num, house_id)
VALUES (5, 5, 7890, 5);

*/

select * from house_sales.bike where house_id=1;