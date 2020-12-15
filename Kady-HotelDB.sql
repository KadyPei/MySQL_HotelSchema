 
CREATE TABLE IF NOT EXISTS `Guests` (
	GuestID INT ,
   `Name`varchar(50) not null,
    Address varchar(256) null,
    City varchar(100) null,
    State char(2) null,
    Zipcode varchar(10) null,
    Phonenumber varchar(100) null,
    PRIMARY KEY (GuestID)
);
CREATE TABLE IF NOT EXISTS `Amenities`(
	AmenityID INT ,
    Microwave varchar(3) null,
    Refrigerator varchar(3) null, 
    Oven varchar(3) null,
    Jacuzzi varchar(3) null,
    ExtraPrice INT,
    Display varchar(50),
    PRIMARY KEY (AmenityID)
);
CREATE TABLE IF NOT EXISTS `Rooms`(
	RoomNum INT,
    `Type` varchar(6),
    AmenityList INT,
    ADA BOOLEAN,
    StandardOcc INT,
    MaxOcc INT,
    BasePrice DOUBLE,
    ExtraCost INT ,
    PRIMARY KEY (RoomNum),
    FOREIGN KEY (AmenityList) REFERENCES Amenities(AmenityID)
);

CREATE TABLE IF NOT EXISTS `Reservations`(
	ReservationID INT, 
    RoomNum INT, 
    GuestID INT,
    Adults INT,
    Children INT ,
    Start_Date DATE ,
    End_Date DATE ,
    PRIMARY KEY (ReservationID),
    FOREIGN KEY (RoomNum) REFERENCES Rooms(RoomNum),
    FOREIGN KEY (GuestID) REFERENCES Guests(GuestID)    
);


