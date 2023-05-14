CREATE TABLE House_Sales.bike(
    House_Id int primary key Auto_Increment,
    Area int,
    Furnished_Details VARCHAR(50),
    House_type VARCHAR(50),
    House_Price float
);



CREATE TABLE House_Sales.ownerDetails(
    owner_Id int primary key Auto_Increment,
    owner_address varchar(50),
    Phone_Num VARCHAR(50),
    owner_name VARCHAR(50),
    house_id int,
    FOREIGN KEY (house_id) REFERENCES House_Sales.bike(House_Id)
);

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