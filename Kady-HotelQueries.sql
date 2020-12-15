#1 
#Write a query that returns a list of reservations that end in July 2023, 
#including the name of the guest, the room number(s), and the reservation dates.
SELECT Guests.Name, Reservations.RoomNum, Reservations.Start_Date, Reservations.End_Date
FROM Reservations,Guests WHERE Reservations.End_Date BETWEEN  '2023-07-01' AND '2023-07-31' 
AND Reservations.GuestID = Guests.GuestID ;
#4 rows returned 
-- 'Kady Pei','205','2023-06-28','2023-07-02'
-- 'Walter Holaway','204','2023-07-13','2023-07-14'
-- 'Wilfred Vise','401','2023-07-18','2023-07-29'
-- 'Bettyann Seery','303','2023-07-28','2023-07-29'

#2
#Write a query that returns a list of all reservations for rooms with a jacuzzi, 
#displaying the guest's name, the room number, and the dates of the reservation.
SELECT Guests.Name, Reservations.RoomNum, Reservations.Start_Date, Reservations.End_Date
FROM Reservations,Guests, Rooms, Amenities WHERE Reservations.GuestID = Guests.GuestID AND 
Reservations.RoomNum = Rooms.RoomNum AND 
Rooms.AmenityList  = Amenities.AmenityID AND 
Amenities.Jacuzzi = 'Yes';
#11 Rows returned 
-- 'Karie Yang','201','2023-03-06','2023-03-07'
-- 'Bettyann Seery','203','2023-02-05','2023-02-10'
-- 'Karie Yang','203','2023-09-13','2023-09-15'
-- 'Walter Holaway','301','2023-04-09','2023-04-13'
-- 'Mack Simmer','301','2023-11-22','2023-11-25'
-- 'Bettyann Seery','303','2023-07-28','2023-07-29'
-- 'Kady Pei','205','2023-06-28','2023-07-02'
-- 'Wilfred Vise','207','2023-04-23','2023-04-24'
-- 'Duane Cullison','305','2023-02-22','2023-02-24'
-- 'Bettyann Seery','305','2023-08-30','2023-09-01'
-- 'Kady Pei','307','2023-03-17','2023-03-20'

#3 
#Write a query that returns all the rooms reserved for a specific guest, including the guest's name, 
#the room(s) reserved, the starting date of the reservation, and how many people were included in 
#the reservation. (Choose a guest's name from the existing data.)
SELECT Guests.Name,  Reservations.RoomNum, Reservations.Start_Date, Adults+Children AS Total_Num_Guests
FROM Guests, Reservations WHERE  Guests.GuestID = Reservations.GuestID AND  Guests.Name = 'Mack Simmer';
# 4 rows returned
-- 'Mack Simmer','308','2023-02-02','1' (total_Num_Guests)
-- 'Mack Simmer','208','2023-09-16','2'
-- 'Mack Simmer','206','2023-11-22','2'
-- 'Mack Simmer','301','2023-11-22','4'

#Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. 
#The results should include all rooms, whether or not there is a reservation associated with the room.
SELECT Reservations.ReservationID, Reservations.RoomNum,
CASE 
 WHEN Rooms.Type = 'Suite' AND Reservations.Adults > 3 
 THEN (Rooms.BasePrice + Rooms.ExtraCost * (Reservations.Adults- 3)) * DATEDIFF(Reservations.End_Date, Reservations.Start_Date) 
 WHEN Rooms.Type = 'Double' AND Reservations.Adults > 2
 THEN (Rooms.BasePrice + Rooms.ExtraCost * (Reservations.Adults- 2)) * DATEDIFF(Reservations.End_Date, Reservations.Start_Date) 
 ELSE (Rooms.BasePrice) * DATEDIFF(Reservations.End_Date, Reservations.Start_Date) 
END AS TotlaPrice
FROM Reservations, Rooms WHERE Reservations.RoomNum = Rooms.RoomNum;
#24 Rows returned
-- '4','201','199.99'
-- '7','202','349.98'
-- '2','203','999.95'
-- '21','203','399.98'
-- '16','204','184.99'
-- '15','205','699.96'
-- '12','206','599.96'
-- '23','206','449.97'
-- '10','207','174.99'
-- '13','208','599.96'
-- '20','208','149.99'
-- '9','301','799.96'
-- '24','301','599.97'
-- '6','302','924.95'
-- '25','302','699.96'
-- '18','303','199.99'
-- '14','304','184.99'
-- '3','305','349.98'
-- '19','305','349.98'
-- '5','307','524.97'
-- '1','308','299.98'
-- '11','401','1199.97'
-- '17','401','1259.97'
-- '22','401','1199.97'

#5
#Write a query that returns all the rooms accommodating at least three guests 
#and that are reserved on any date in April 2023.
SELECT Rooms.RoomNum FROM Rooms, Reservations WHERE (Adults + Children >= 3) AND 
Reservations.Start_Date BETWEEN '2023-04-01' AND '2023-04-30' AND Reservations.RoomNum= Rooms.RoomNum;
# 0 row returned


#6
#Write a query that returns a list of all guest names and the number of reservations per guest,
#sorted starting with the guest with the most reservations and then by the guest's last name.
SELECT  Guests.Name, SUBSTRING(Guests.Name ,LOCATE(' ', Guests.Name) +1 ) AS Lastname,
COUNT(Reservations.GuestID) AS Num_Of_Res_Per_Guest FROM Guests, Reservations WHERE Reservations.GuestID = Guests.GuestID
GROUP BY Guests.Name
ORDER BY COUNT(Reservations.GuestID) DESC , Lastname ASC;
#11 rows returned
-- 'Mack Simmer','Simmer','4'
-- 'Bettyann Seery','Seery','3'
-- 'Karie Yang','Yang','3'
-- 'Duane Cullison','Cullison','2'
-- 'Walter Holaway','Holaway','2'
-- 'Kady Pei','Pei','2'
-- 'Maritza Tilton','Tilton','2'
-- 'Joleen Tison','Tison','2'
-- 'Wilfred Vise','Vise','2'
-- 'Aurore Lipton','Lipton','1'
-- 'Zachery Luechtefeld','Luechtefeld','1'

#Write a query that displays the name, address, and phone number of a guest based on their phone number.
# (Choose a phone number from the existing data.)
SELECT Name, Address, Phonenumber FROM Guests WHERE Guests.Phonenumber ='(626) 348-6356';
#1 row returned 
-- 'Kady Pei','980 Newhall Terrace','(626) 348-6356'

