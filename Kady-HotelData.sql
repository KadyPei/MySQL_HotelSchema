
#Define database

INSERT INTO Guests (GuestID, `Name`, Address, City, State, ZipCode, PhoneNumber) VALUES
	(0, 'Kady Pei', '980 Newhall Terrace','Brea','CA','92821','(626) 348-6356'),
    (1, 'Mack Simmer', '379 Old Shore Street', 'Council Bluffs', 'IA', '51501', '(291) 553-0508'),
    (2, 'Bettyann Seery', '750 Wintergreen Dr.', 'Wasilla', 'AK', '99654', '(478) 277-9632'),
    (3, 'Duane Cullison', '9662 Foxrun Lane', 'Harlingen', 'TX', '78552', '(308) 494-0198'),
    (4, 'Karie Yang', '9378 W. Augusta Ave.', 'West Deptford', 'NJ', '08096', '(214) 730-0298'),
    (5, 'Aurore Lipton', '762 Wild Rose Street', 'Saginaw', 'MI', '48601', '(377) 507-0974'),
    (6, 'Zachery Luechtefeld', '7 Poplar Dr.', 'Arvada', 'CO', '80003', '(814) 485-2615'),
    (7, 'Jeremiah Pendergrass', '70 Oakwood St.', 'Zion', 'IL', '60099', '(279) 491-0960'),
    (8, 'Walter Holaway', '7556 Arrowhead St.', 'Cumberland', 'RI', '02864', '(446) 396-6785'),
    (9, 'Wilfred Vise', '77 West Surrey Street', 'Oswego', 'NY', '13126', '(834) 727-1001'),
    (10, 'Maritza Tilton', '939 Linda Rd.', 'Burke', 'VA', '22015', '(446) 351-6860'),
    (11, 'Joleen Tison', '87 Queen St.', 'Drexel Hill', 'PA', '19026', '(231) 893-2755');

INSERT INTO Amenities( AmenityID, Microwave, Refrigerator, Oven, Jacuzzi,ExtraPrice, Display) VALUES 
(1,'Yes' ,'No','No','Yes',25,'Microwave, Jacuzzi'),
(2, 'No', 'Yes', 'No', 'No', 0, 'Refrigerator'),
(3, 'Yes','Yes','No','Yes',25, 'Microwave, Refrigerator, Jacuzzi'),
(4, 'Yes','Yes','No', 'No', 0 , 'Microwave, Refrigerator'),
(5, 'Yes', 'Yes', 'Yes', 'No', 0 , 'Microwave, Refrigerator, Oven')
;

INSERT INTO Rooms(RoomNum, `Type` , AmenityList, ADA ,StandardOcc, MaxOcc ,BasePrice, ExtraCost) VALUES
(201, 'Double', 1, FALSE, 2, 4, 199.99, 10),
    (202, 'Double', 2, TRUE, 2, 4, 174.99, 10),
    (203, 'Double', 1, FALSE, 2, 4, 199.99, 10),
    (204, 'Double', 2, TRUE, 2, 4, 174.99, 10),
    (205, 'Single', 3, FALSE, 2, 2, 174.99, 0),
    (206, 'Single', 4, TRUE, 2, 2, 149.99, 0),
    (207, 'Single', 3, FALSE, 2, 2, 174.99, 0),
    (208, 'Single', 4, TRUE, 2, 2, 149.99, 0),
    (301, 'Double', 1, FALSE, 2, 4, 199.99, 10),
    (302, 'Double', 2, TRUE, 2, 4, 174.99, 10),
    (303, 'Double', 1, FALSE, 2, 4, 199.99, 10),
    (304, 'Double', 2, TRUE, 2, 4, 174.99, 10),
    (305, 'Single',3, FALSE, 2, 2, 174.99, 0),
    (306, 'Single', 4, TRUE, 2, 2, 149.99, 0),
    (307, 'Single', 3, FALSE, 2, 2, 174.99, 0),
    (308, 'Single', 4, TRUE, 2, 2, 149.99, 0),
    (401, 'Suite', 5, TRUE, 3, 8, 399.99, 20),
    (402, 'Suite', 5, TRUE, 3, 8, 399.99, 20)
;

INSERT INTO Reservations(ReservationID, RoomNum, GuestID, Adults, Children, Start_Date, End_Date) VALUES
(1, 308, 1, 1, 0, '2023-02-02', '2023-02-04'),
(2, 203, 2, 2, 1, '2023-02-05', '2023-02-10'),
(3, 305, 3, 2, 0, '2023-02-22', '2023-02-24'),
(4, 201, 4, 2, 2, '2023-03-06', '2023-03-07'),
(5, 307, 0 , 1, 1, '2023-03-17', '2023-03-20'),
(6, 302, 5, 3, 0, '2023-03-18', '2023-03-23'),
(7, 202, 6, 2, 2, '2023-03-29', '2023-03-31'),
(8, 304, 7, 2, 0, '2023-03-31', '2023-04-05'),
(9, 301, 8, 1, 0, '2023-04-09', '2023-04-13'),
(10, 207, 9, 1, 1, '2023-04-23', '2023-04-24'),
(11, 401, 10, 2, 4, '2023-05-30', '2023-06-02'),
(12, 206, 11, 2, 0, '2023-06-10', '2023-06-14'),
(13, 208, 11, 1, 0, '2023-06-10', '2023-06-14'),
(14, 304, 4, 3, 0, '2023-06-17', '2023-06-18'),
(15, 205, 0, 2, 0, '2023-06-28', '2023-07-02'),
(16, 204, 8, 3, 1, '2023-07-13', '2023-07-14'),
(17, 401, 9, 4, 2, '2023-07-18', '2023-07-21'),
(18, 303, 2, 2, 1, '2023-07-28', '2023-07-29'),
(19, 305, 2, 1, 0, '2023-08-30', '2023-09-01'),
(20, 208, 1, 2, 0, '2023-09-16', '2023-09-17'),
(21, 203, 4, 2, 2, '2023-09-13', '2023-09-15'),
(22, 401, 3, 2, 2, '2023-11-22', '2023-11-25'),
(23, 206, 1, 2, 0, '2023-11-22', '2023-11-25'),
(24, 301, 1, 2, 2, '2023-11-22', '2023-11-25'),
(25, 302, 10, 2, 0, '2023-12-24', '2023-12-28');

#delete record for guest Jeremiah Pendergrass 

SELECT GuestID FROM Guests WHERE name= 'Jeremiah Pendergrass'; #7
DELETE FROM Reservations WHERE GuestID = 7;
SELECT * FROM Reservations;
DELETE FROM Guests WHERE GuestID = 7;
SELECT * FROM Guests; #11rows returned 

