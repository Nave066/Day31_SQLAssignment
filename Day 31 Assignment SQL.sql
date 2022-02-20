--UC1 Create Database
Create database AddressbookServicedb

--UC2 Create Table
Create table AddressBookTable
(
FirstName varchar(50),
LastName varchar(50),
Address Varchar(250),
City varchar(250),
State varchar(30),
Zip varchar(6),
PhoneNumber varchar(10),
Email varchar(50)
)

--UC3 Insert Contacts

select * from AddressBooktable
insert into AddressBooktable values('Naveen','Velayutham','332abc','Bangalore','Karnataka','299973','9665243989','avf@gmail.com')
insert into AddressBooktable values('Kavin','Raj','8332ytsc','Chennai','Tamilnadu','600073','9668363500','acxstt@gmail.com')
insert into AddressBooktable values('Guhan','varma','03892abc','Hyderabad','Andhra','833373','8663329365','irjdb@gmail.com')
insert into AddressBooktable values('Vikram','Chauhan','982abc','Chennai','Tamilnadu','600973','7937253727','cdd@gmail.com')
insert into AddressBooktable values('Riya','sen','3342abc','Bangalore','Karnataka','299973','9665243989','avf@gmail.com')
insert into AddressBooktable values('Reethu','singh','668332ytsc','Cochin','Kerala','600173','9600300500','ac556xstt@gmail.com')
insert into AddressBooktable values('Vishal','varma','031892abc','Patna','Bihar','830373','7663329365','irjd67b@gmail.com')
insert into AddressBooktable values('Vijay','vikas','98552abc','Chennai','Tamilnadu','605973','7908253727','cdd756@gmail.com') 

select * from AddressBookTable

--Uc4 Edit contacts
update AddressBooktable
SET FirstName='Alfred', LastName='noble'
WHERE City='Hyderabad';


--Uc5 Delete contacts
delete from AddressBooktable where FirstName='vijay'


--Uc6 Retrieve Person belonging to city/state from table
SELECT *
  FROM AddressBooktable
  WHERE City = 'Chennai';

  SELECT *
  FROM AddressBooktable
  WHERE State = 'Andhra';


--Uc7 Size of table by city&state
SELECT COUNT(City) as 'CityCount'
FROM AddressBooktable where City='Chennai'

SELECT COUNT(State)as 'StateCount'
FROM AddressBooktable where State='Karnataka'


select * from AddressBooktable

--Uc8 Sort alphabetically by person's name for given city
SELECT * FROM AddressBooktable where City='Bangalore'
ORDER BY FirstName
 

--Uc9 Alter table with Type
ALTER TABLE AddressBooktable
ADD Type varchar(50);

update AddressBooktable set Type='Family' where FirstName='Naveen'
update AddressBooktable set Type='Friend' where FirstName='Kavin'
update AddressBooktable set Type='Profession' where FirstName='Alfred'
update AddressBooktable set Type='Friend' where FirstName='Vikram'
update AddressBooktable set Type='Friend' where FirstName='Riya'
update AddressBooktable set Type='Friend' where FirstName='Reethu'
update AddressBooktable set Type='Profession' where FirstName='Vishal'


--Uc10 No of contact persons count by type
SELECT COUNT(*) FirstName
FROM AddressBooktable where Type='Family';


--Uc11 Add person to both friend and family
ALTER TABLE AddressBooktable
ADD Other_Type varchar(50);

update AddressBooktable set Other_Type='Family' where FirstName='Naveen'
update AddressBooktable set Other_Type='Friend' where FirstName='Kavin'
update AddressBooktable set Other_Type='Friend' where FirstName='Vishal'