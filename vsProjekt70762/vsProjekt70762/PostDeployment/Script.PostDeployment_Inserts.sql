/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

/*
CREATE VIEW [dbo].[vRandomSalesMan]
AS
select TOP 1 Emp_Id from Employee E 
join EmployeeToTeam ETT on E.Emp_Id=ETT.ETT_EmpId
JOIN EmployeeTeam ET on ETT.ETT_ETeId=ET.ETe_Id WHERE ET.ETe_TeamName='Sales'
ORDER BY NEWID()
--select * from vRandomSalesMan

CREATE FUNCTION [dbo].RandomTeamMember()
RETURNS INT
AS BEGIN
declare @id int
SELECT @id= Emp_Id from vRandomSalesMan

RETURN @id
END

--select dbo.RandomTeamMember('Sales')


CREATE VIEW [dbo].[vRandomCustomer]
AS
select TOP 1 Cus_Id from Customer
ORDER BY NEWID()

CREATE FUNCTION [dbo].RandomCustomer()
RETURNS INT
AS BEGIN
declare @id int
SELECT @id= Cus_id from [vRandomCustomer]
RETURN @id
END
*/


/* E1 - Inserty */

INSERT INTO [dbo].[Brand] (Bra_Code, Bra_Name, Bra_Origin)
SELECT 'AUDI', 'AUDI', 'Germany'						UNION ALL
SELECT 'BMW', 'Bayerische Motoren Werke', 'Germany'		UNION ALL
SELECT 'AR',  'Alfa Romeo', 'Italy'						UNION ALL
SELECT 'BENTLEY', 'Bentley Motors Limited', 'Great Britain'	UNION ALL
SELECT 'CHEVROLET', 'Chevrolet', 'USA'	UNION ALL
SELECT 'CITROEN', 'Citroen', 'France'	UNION ALL
SELECT 'CHRYSLER', 'Chrysler', 'USA'	UNION ALL
SELECT 'FIAT', 'Fabbrica Italiana Automobili Torino', 'Italy'	UNION ALL
SELECT 'FERRARI', 'Ferrari', 'Italy'	UNION ALL
SELECT 'FORD', 'Ford Motor Company', 'USA'	UNION ALL
SELECT 'HONDA', 'Honda', 'Japan'	UNION ALL
SELECT 'INFINITY', 'Infinity', 'Japan'	UNION ALL
SELECT 'KIA', 'Kia', 'Korea'	UNION ALL
SELECT 'JEEP', 'Jeep', 'USA'	UNION ALL
SELECT 'JAGUAR', 'Jaguar', 'Great Britain'	UNION ALL
SELECT 'LEXUS', 'Lexus', 'Japan'	UNION ALL
SELECT 'MAZDA', 'Mazda', 'Japan'	UNION ALL
SELECT 'MERCEDES', 'Mercedes-Benz', 'Germany'	UNION ALL
SELECT 'MINI', 'Mini', 'Great Britain'	UNION ALL
SELECT 'OPEL', 'Opel', 'Germany'	UNION ALL
SELECT 'PEUGEOT', 'Peugeot', 'France'	UNION ALL
SELECT 'NISSAN', 'Nissan', 'Japan'	UNION ALL
SELECT 'RENAULT', 'Renault', 'France'	UNION ALL
SELECT 'SKODA', 'Skoda', 'Czech Republic'	UNION ALL
SELECT 'SUBARU', 'Subaru', 'Japan'	UNION ALL
SELECT 'SUZUKI', 'Suzuki', 'Japan'	UNION ALL
SELECT 'TOYOTA', 'Toyota', 'Japan'	UNION ALL
SELECT 'VW', 'Volkswagen', 'Germany'	UNION ALL
SELECT 'VOLVO', 'Volvo', 'Sweden'

--select top 1 * from Model
INSERT INTO [dbo].[Model] (Mod_Code, Mod_Name, Mod_BraId, Mod_VehicleType,
Mod_EngineType, Mod_EngineDisplacement, Mod_EngineHorsePower,
Mod_NumberOfDoors, Mod_AutomaticGearBox)
SELECT Mod_Code, Mod_Name, B.Bra_Id, Mod_VehicleType,
Mod_EngineType, ModEngineDisplacement, Mod_EngineHorsePower,Mod_NumberOfDoors, Mod_AutomaticGearBox
FROM
(
SELECT 'AUDI', 'AUDIA4B9SEB20A', 'Audi A4 B9 2.0 benzin automatic', 'SEDAN',
'Benzin', 2000, 150,4, 1	UNION ALL
SELECT 'AUDI', 'AUDIA4B9ESB20A', 'Audi A4 B9 2.0 benzin automatic' , 'ESTATE',
'Benzin', 2000, 150,4, 1	UNION ALL
SELECT 'AUDI', 'AUDIA4B9SEB25A', 'Audi A4 B9 2.5 benzin automatic', 'SEDAN',
'Benzin', 2500, 170,4, 1	UNION ALL
SELECT 'AUDI', 'AUDIA4B9ESB25A', 'Audi A4 B9 2.5 benzin automatic', 'ESTATE',
'Benzin', 2500, 170,4, 1	UNION ALL
SELECT 'AUDI', 'AUDIA6C8SEB25A', 'Audi A6 C8 2.5 benzin automatic', 'SEDAN',
'Benzin', 2500, 170,4, 1	UNION ALL
SELECT 'AUDI', 'AUDIA6C8ESB25A', 'Audi A6 C8 2.5 benzin automatic', 'ESTATE',
'Benzin', 2500, 170,4, 1	UNION ALL
SELECT 'AUDI', 'AUDIA6C8ESB25M', 'Audi A6 C8 2.5 benzin manual', 'ESTATE',
'Benzin', 2500, 170,4, 0	UNION ALL
SELECT 'AUDI', 'AUDIA6C8SEB40A', 'Audi A6 C8 4.0 benzin automatic', 'SEDAN',
'Benzin', 4000, 265,4, 1	UNION ALL
SELECT 'AUDI', 'AUDIA6C8SEB40M', 'Audi A6 C8 4.0 benzin manual', 'SEDAN',
'Benzin', 4000, 265,4, 0	UNION ALL
SELECT 'AUDI', 'AUDIA6C8ESB40A', 'Audi A6 C8 4.0 benzin automatic', 'ESTATE',
'Benzin', 4000, 265,4, 1	UNION ALL
SELECT 'AUDI', 'AUDIA6C8ESB40M', 'Audi A6 C8 4.0 benzin manual', 'ESTATE',
'Benzin', 4000, 265,4, 0	UNION ALL
SELECT 'AUDI', 'AUDIA4B9ESD20A', 'Audi A4 B9 2.0 diesel automatic', 'ESTATE',
'Diesel', 2000, 130,4, 1	UNION ALL
SELECT 'AUDI', 'AUDIA4B9ESD25A', 'Audi A4 B9 2.5 diesel automatic', 'ESTATE',
'Diesel', 2500, 145,4, 1	UNION ALL
SELECT 'AUDI', 'AUDIA6C8ESD25A', 'Audi A6 C8 2.5 diesel automatic', 'ESTATE',
'Diesel', 2500, 145,4, 1	UNION ALL
SELECT 'AUDI', 'AUDIA6C8ESD40A', 'Audi A6 C8 4.0 diesel automatic', 'ESTATE',
'Diesel', 4000, 210,4, 1	UNION ALL
--BMW
SELECT 'BMW', 'BMWF10SEB330A', 'BMW F10 3.0 benzin automatic', 'SEDAN',
'Benzin', 3000, 250,4, 1	UNION ALL
SELECT 'BMW', 'BMWF10SEB335A', 'BMW F10 3.0T benzin automatic', 'SEDAN',
'Benzin', 3000, 290,4, 1	UNION ALL
SELECT 'BMW', 'BMWF10SEB330M', 'BMW F10 3.0 benzin manual', 'SEDAN',
'Benzin', 3000, 250,4, 0	UNION ALL
SELECT 'BMW', 'BMWF10SEB335M', 'BMW F10 3.0T benzin manual', 'SEDAN',
'Benzin', 3000, 290,4, 0	UNION ALL
SELECT 'BMW', 'BMWF10M3COB340A', 'BMW F10 M3 3.5T benzin automatic', 'COUPE',
'Benzin', 4000, 380,2, 1	UNION ALL
--Ford
SELECT 'FORD', 'FORDMONDEOMK4SEB20A', 'Ford Mondeo MK4 2.0 benzin automatic', 'SEDAN',
'Benzin', 2000, 150,4, 1	UNION ALL
SELECT 'FORD', 'FORDMONDEOMK4SED20A', 'Ford Mondeo MK4 2.0 diesel automatic', 'SEDAN',
'Diesel', 2000, 130,4, 1	UNION ALL
SELECT 'FORD', 'FORDFOCUSMK4COB14M', 'Ford FOCUS MK4 1.4T benzin manual', 'COUPE',
'Benzin', 1400, 120,2, 0	UNION ALL
SELECT 'FORD', 'FORDFOCUSMK4COB16M', 'Ford FOCUS MK4 1.6T benzin manual', 'COUPE',
'Benzin', 1600, 145,2, 0	UNION ALL
--Honda
SELECT 'HONDA', 'HONDACIVICXCOB16M', 'Honda Civic X 1.6 benzin manual', 'COUPE',
'Benzin', 1600, 120,2, 0	UNION ALL
SELECT 'HONDA', 'HONDACIVICXCOB18M', 'Honda Civic X 1.8 benzin manual', 'COUPE',
'Benzin', 1800, 140,2, 0	UNION ALL
SELECT 'HONDA', 'HONDACIVICXHAB16M', 'Honda Civic X 1.6 benzin manual', 'HATCHBACK',
'Benzin', 1600, 120,4, 0	UNION ALL
SELECT 'HONDA', 'HONDACIVICXHAB18M', 'Honda Civic X 1.8 benzin manual', 'HATCHBACK',
'Benzin', 1800, 140,4, 0	UNION ALL
SELECT 'HONDA', 'HONDACIVICXCOB20M', 'Honda Civic X 2.0 Type-R benzin manual', 'COUPE',
'Benzin', 2000, 180,2, 0	UNION ALL
--Mazda
SELECT 'MAZDA', 'MAZDA6SEB20M', 'Mazda 6 2.0 benzin manual', 'SEDAN',
'Benzin', 2000, 150,4, 0	UNION ALL
SELECT 'MAZDA', 'MAZDA6ESB20M', 'Mazda 6 2.0 benzin manual', 'ESTATE',
'Benzin', 2000, 150,4, 0	UNION ALL
SELECT 'MAZDA', 'MAZDA6SED20M', 'Mazda 6 2.0 diesel manual', 'SEDAN',
'Diesel', 2000, 130,4, 0	UNION ALL
SELECT 'MAZDA', 'MAZDA6ESD20M', 'Mazda 6 2.0 diesel manual', 'ESTATE',
'Diesel', 2000, 130,4, 0	UNION ALL
SELECT 'MAZDA', 'MAZDA3SEB16M', 'Mazda 3 1.6 benzin manual', 'SEDAN',
'Benzin', 1600, 150,4, 0	UNION ALL
SELECT 'MAZDA', 'MAZDA3SED16M', 'Mazda 3 1.6 diesel manual', 'SEDAN',
'Diesel', 1600, 130,4, 0	UNION ALL
--Opel
SELECT 'OPEL', 'OPELINSIGNIASEB20M', 'Opel Insignia 2.0 benzin manual', 'SEDAN',
'Benzin', 2000, 170,4, 0	UNION ALL
SELECT 'OPEL', 'OPELINSIGNIASEB20A', 'Opel Insignia 2.0 benzin automatic', 'SEDAN',
'Benzin', 2000, 170,4, 1	UNION ALL
SELECT 'OPEL', 'OPELINSIGNIASED20M', 'Opel Insignia 2.0 diesel manual', 'SEDAN',
'Diesel', 2000, 150,4, 0	UNION ALL
SELECT 'OPEL', 'OPELINSIGNIASED20A', 'Opel Insignia 2.0 diesel automatic', 'SEDAN',
'Diesel', 2000, 150,4, 1	UNION ALL
SELECT 'OPEL', 'OPELASTRAHCOB14M', 'Opel Astra H 1.4 benzin manual', 'COUPE',
'Benzin', 1400, 110,4, 0	UNION ALL
SELECT 'OPEL', 'OPELASTRAHCOB16M', 'Opel Astra H 1.6 benzin manual', 'COUPE',
'Benzin', 1600, 130,4, 0	UNION ALL
SELECT 'OPEL', 'OPELASTRAHHAB14M', 'Opel Astra H 1.4 benzin manual', 'HATCHBACK',
'Benzin', 1400, 110,4, 0	UNION ALL
SELECT 'OPEL', 'OPELASTRAHHAB16M', 'Opel Astra H 1.6 benzin manual', 'HATCHBACK',
'Benzin', 1600, 130,4, 0	UNION ALL
--Opel
SELECT 'VW', 'VWGOLF7HAB16M', 'VOLKSWAGEN GOLF VII 1.6 benzin manual', 'HATCHBACK',
'Benzin', 1600, 120,4, 0	UNION ALL
SELECT 'VW', 'VWGOLF7HAB18M', 'VOLKSWAGEN GOLF VII 1.8 benzin manual', 'HATCHBACK',
'Benzin', 1800, 140,4, 0	UNION ALL
SELECT 'VW', 'VWGOLF7HAB20M', 'VOLKSWAGEN GOLF VII 2.0 benzin manual', 'HATCHBACK',
'Benzin', 2000, 170,4, 0	UNION ALL
SELECT 'VW', 'VWGOLF7SEB20A', 'VOLKSWAGEN GOLF VII 2.0 benzin automatic', 'HATCHBACK',
'Benzin', 2000, 170,4, 1	UNION ALL
SELECT 'VW', 'VWPOLO7COB14M', 'VOLKSWAGEN Polo VII 1.4 benzin manual', 'HATCHBACK',
'Benzin', 1400, 100,4, 0	UNION ALL
SELECT 'VW', 'VWPOLO7COB16M', 'VOLKSWAGEN Polo VII 1.6 benzin manual', 'HATCHBACK',
'Benzin', 1600, 115,4, 0	
) AS M(xMod_BraCode, Mod_Code, Mod_Name, Mod_VehicleType,
Mod_EngineType, ModEngineDisplacement, Mod_EngineHorsePower,
Mod_NumberOfDoors, Mod_AutomaticGearBox)
		INNER JOIN Brand AS B  ON M.xMod_BraCode=B.Bra_Code

--truncate table [dbo].[EmployeePosition]
--EmployePosition
INSERT INTO [dbo].[EmployeePosition]
(EPo_PositionName)
SELECT PositionName FROM
(SELECT 'CEO' UNION ALL
SELECT 'Board Assistant' UNION ALL
SELECT 'Chief Accountant' UNION ALL
SELECT 'Sales Director' UNION ALL
SELECT 'Marketing Manager' UNION ALL
SELECT 'Marketing Specialist' UNION ALL
SELECT 'Key Account Manager' UNION ALL
SELECT 'Sales assistant' UNION ALL
SELECT 'Mechanic' UNION ALL
SELECT 'IT Support'   ) as P(PositionName)

--EmployeeTeam
INSERT INTO [dbo].[EmployeeTeam]
(ETe_TeamName)
Select TeamName FROM
(SELECT 'Management' UNION ALL
SELECT 'Marketing'	UNION ALL
SELECT 'Sales'		UNION ALL
SELECT 'IT'			UNION ALL
SELECT 'Car Repair'
) AS T(TeamName)

--Employee
INSERT INTO [dbo].[Employee]
(Emp_Login, Emp_FirstName, Emp_LastName,
Emp_TelephoneNo, Emp_Email, Emp_PESEL)
SELECT Emp_Login, Emp_FirstName, Emp_LastName,
Emp_TelephoneNo, Emp_Email, Emp_PESEL FROM
(SELECT TOP (20)
LEFT(LastName,1)+FirstName     
      ,[FirstName]
      ,[LastName]
	  ,STUFF(STUFF(LEFT(CAST(RAND(CHECKSUM(NEWID())) * 100000000000 as bigint), 9), 4 ,0, '-'), 8, 0,'-')
	  ,LEFT(LOWER(FirstName),1)+'.'+LOWER(LastName)+'@carsale.com'
	  ,LEFT(CAST(RAND(CHECKSUM(NEWID())) * 1000000000000 as bigint), 11)      
  FROM [AdventureWorks2016CTP3].[Person].[Person]
  ORDER BY NEWID()) AS P(Emp_Login, Emp_FirstName, Emp_LastName,
Emp_TelephoneNo, Emp_Email, Emp_PESEL)



--Customer

--DELETE FROM Customer
--TRUNCATE TABLE Customer
--SELECT * FROM Customer

WITH CTE(Cus_Code, Cus_FirstName, Cus_LastName, Cus_TelephoneNo,
Cus_Email, Cus_City, Cus_Address, Cus_IDCardNumber) AS (
SELECT TOP (1500)
      ROW_NUMBER() OVER (Order by (SELECT NULL))
	  ,[FirstName]
      ,[LastName]
	  ,STUFF(STUFF(LEFT(CAST(RAND(CHECKSUM(NEWID())) * 100000000000 as bigint), 9), 4 ,0, '-'), 8, 0,'-')
	  ,LEFT(LOWER(FirstName),1)+'.'+LOWER(LastName)+'@gmail.com'
	  ,A.City
	  ,A.AddressLine1
	  ,LEFT(REPLACE(NEWID(),'-',''),9)
  FROM [AdventureWorks2016CTP3].[Person].[Person] P
  JOIN [AdventureWorks2016CTP3].[Person].[BusinessEntityAddress] Bea on P.BusinessEntityID=Bea.BusinessEntityID
  JOIN [AdventureWorks2016CTP3].[Person].[Address] A on Bea.AddressID=A.AddressID
  ORDER BY NEWID()
  )
  INSERT INTO [dbo].[Customer]
(Cus_Code, Cus_FirstName, Cus_LastName, Cus_TelephoneNo,
Cus_Email, Cus_City, Cus_Address, Cus_IDCardNumber)

  SELECT 'C'+FORMAT(ROW_NUMBER() OVER (ORDER BY Cus_Code), '000000000') as Cus_Code,
  Cus_FirstName, Cus_LastName, Cus_TelephoneNo,
Cus_Email, Cus_City, Cus_Address, Cus_IDCardNumber FROM CTE


--EmployeeToPosition
--TRUNCATE TABLE EmployeeToPosition
WITH CTEEmp AS 
(Select Row_Number() OVER (ORDER BY Emp_Id) as Number, Emp_Id From Employee)

INSERT INTO [dbo].[EmployeeToPosition] (ETP_EmpId, ETP_EPoId, ETP_DateFrom, ETP_DateTo)
SELECT Emp_Id, P.EPo_Id, DateFrom, DateTo FROM
(
SELECT 'CEO' as PositionName,	Emp_Id as Emp_Id, '2008-01-01' as DateFrom, '9999-12-31' as DateTo	FROM CTEEmp WHERE Number=1			UNION ALL
SELECT 'Board Assistant',		Emp_Id			, '2008-01-01', '9999-12-31'	FROM CTEEmp WHERE Number=2				UNION ALL
SELECT 'Chief Accountant',		Emp_Id			, '2008-01-01', '9999-12-31'	FROM CTEEmp WHERE Number=3				UNION ALL
SELECT 'Sales Director',		Emp_Id			, '2008-01-01', '9999-12-31'	FROM CTEEmp WHERE Number=4				UNION ALL
SELECT 'Marketing Manager',		Emp_Id			, '2008-01-01', '9999-12-31'	FROM CTEEmp WHERE Number=5				UNION ALL
SELECT 'Marketing Specialist',	Emp_Id			, '2008-01-01', '9999-12-31'	FROM CTEEmp WHERE Number>=6 and Number<=7 UNION ALL
SELECT 'Key Account Manager',	Emp_Id			, '2008-01-01', '9999-12-31'	FROM CTEEmp WHERE Number>=8 and Number<=10 UNION ALL
SELECT 'Sales assistant',		Emp_Id			, '2008-01-01', '9999-12-31'	FROM CTEEmp WHERE Number>=11 and Number<=15 UNION ALL
SELECT 'Mechanic',				Emp_Id			, '2008-01-01', '9999-12-31'	FROM CTEEmp WHERE Number>=16 and Number<=19 UNION ALL
SELECT 'IT Support',			Emp_Id			, '2008-01-01', '9999-12-31'	FROM CTEEmp WHERE Number>=20 and Number<=20 
) as E JOIN [dbo].[EmployeePosition] P ON E.PositionName=P.EPo_PositionName

--select * from EmployeeToPosition

--EmployeeToTeam
--TRUNCATE TABLE EmployeeToTeam
WITH CTE (Emp_Id, TeamName)
AS (
SELECT Emp_Id as Emp_Id, 
CASE EP.EPo_PositionName
WHEN 'CEO' 					THEN 'Management'
WHEN 'Board Assistant'		THEN 'Management'
WHEN 'Chief Accountant'		THEN 'Management'
WHEN 'Sales Director'		THEN 'Sales'
WHEN 'Marketing Manager'	THEN 'Marketing'
WHEN 'Marketing Specialist'	THEN 'Marketing'
WHEN 'Key Account Manager'	THEN 'Sales'
WHEN 'Sales assistant'		THEN 'Sales'
WHEN 'Mechanic'				THEN 'Car Repair'
WHEN 'IT Support'			THEN 'IT' END As Team
From Employee E 
JOIN EmployeeToPosition ETP on E.Emp_Id=ETP.ETP_EmpId
JOIN EmployeePosition EP on ETP.ETP_EPoId=EP.EPo_Id
)
INSERT INTO EmployeeToTeam(ETT_EmpId, ETT_ETeId)
SELECT C.Emp_Id, ET.ETe_Id FROM CTE C JOIN EmployeeTeam ET on C.TeamName=ET.ETe_TeamName



--EmployeeSalary

--TRUNCATE TABLE EmployeeSalary
INSERT INTO [dbo].[EmployeeSalary]
(ESa_EmpId, ESa_Salary, ESa_DateFrom, ESa_DateTo)
SELECT Emp_Id, 
CASE EP.EPo_PositionName
WHEN 'CEO'					THEN 12000
WHEN 'Board Assistant'		THEN 8700
WHEN 'Chief Accountant'		THEN 5000	
WHEN 'Sales Director'		THEN 7000	
WHEN 'Marketing Manager'	THEN 4500		
WHEN 'Marketing Specialist'	THEN 2300
WHEN 'Key Account Manager'	THEN 4000
WHEN 'Sales assistant'		THEN 2500
WHEN 'Mechanic'				THEN 1800
WHEN 'IT Support'			THEN 3000 END as Salary,
DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 360), '2016-01-01') as DateFrom, 
DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 31), '2018-01-01') as DateTo FROM Employee 
 as E JOIN [dbo].[EmployeeToPosition] ETP ON E.Emp_Id=ETP.ETP_EmpId
JOIN [dbo].[EmployeePosition] EP on ETP.ETP_EPoId=EP.EPo_Id


-- podwyżka 15%
INSERT INTO [dbo].[EmployeeSalary]
(ESa_EmpId, ESa_Salary, ESa_DateFrom, ESa_DateTo)
SELECT ESa_EmpId, ESa_Salary*1.15, 
ESa_DateTo,
'9999-12-31'
 FROM EmployeeSalary


INSERT INTO [ServiceOrderStatus]
(SOS_Code, SOS_StatusName)
SELECT 'S00', 'Other' UNION ALL
SELECT 'S10', 'Offer' UNION ALL
SELECT 'S11', 'Waiting for acceptance' UNION ALL
SELECT 'S20', 'Offer accepted' UNION ALL
SELECT 'S21', 'Offer rejected' UNION ALL
SELECT 'S30', 'Invoice' UNION ALL
SELECT 'S31', 'Correcting invoice' UNION ALL
SELECT 'S40', 'Order completed' UNION ALL
SELECT 'S41', 'Order canceled'

--Select * FROM [ServiceOrderStatus]


-- ModelPrice
INSERT INTO ModelPrice
( Mpr_ModId, MPr_NetValue, Mpr_VatRate,
Mpr_DateStart, Mpr_DateEnd)
SELECT Mod_Id, 
40000 +
(CASE B.Bra_Code
WHEN 'AUDI'		THEN 20000
WHEN 'BMW'		THEN 25000
WHEN 'FORD'		THEN 10000
WHEN 'HONDA'	THEN 8000
WHEN 'MAZDA'	THEN 11000
WHEN 'OPEL'		THEN 6000
WHEN 'VW'		THEN 7000 END) +
(M.Mod_EngineDisplacement * 2) +
(CASE M.Mod_VehicleType
WHEN 'COUPE' 	 THEN 5000
WHEN 'ESTATE'	 THEN 4000
WHEN 'HATCHBACK' THEN 2000
WHEN 'SEDAN'	 THEN 3000 END) +
(M.Mod_AutomaticGearBox * 3000) As MPr_NetValue,
23.00 as MPr_VatRate,
DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 100), '2016-01-01') as MPr_DateStart, DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 50), '2017-01-01') as MPr_DateEnd
FROM Model M JOIN Brand B on M.Mod_BraId=B.Bra_Id

-- podwyżka o 15%
INSERT INTO ModelPrice
(Mpr_ModId, MPr_NetValue, Mpr_VatRate,
Mpr_DateStart, Mpr_DateEnd)
SELECT Mpr_ModId, MPr_NetValue*1.15, Mpr_VatRate,
Mpr_DateEnd, '9999-12-31' From ModelPrice

--select distinct mod_braid, Brand.Bra_Code from Model join Brand on Model.Mod_BraId=Brand.Bra_Id
--select distinct Mod_VehicleType from Model



--EmployeePayout
--select * from EmployeePayout
DECLARE @StartDate datetime
       ,@EndDate datetime
SELECT @StartDate=MIN(ESa_DateFrom) FROM EmployeeSalary
SELECT @StartDate=DATEFROMPARTS(YEAR(@StartDate), MONTH(@StartDate),1)
SET @EndDate=EOMONTH(GETDATE())

;with AllDates AS
(
    SELECT @StartDate AS DateOf
    UNION ALL
    SELECT DateAdd(month,1,DateOf)
        FROM AllDates
    WHERE DateOf<@EndDate
)
INSERT INTO [dbo].[EmployeePayout](EPa_EmpId, EPa_PayoutAmount, EPa_PayoutType, EPa_DateFrom, EPa_DateTo)
--SELECT * FROM AllDates d
SELECT ESA_EmpId, ESA_Salary, 'Salary' as EPa_PayoutType, DATEFROMPARTS(YEAR(DateOf), MONTH(DateOf), 1) as Epa_DateFrom, EOMONTH(DateOf) as EPa_Dateto FROM AllDates d
JOIN EmployeeSalary ES on d.DateOf>=ES.ESa_DateFrom and d.DateOf<=ES.ESa_DateTo
order by ESa_EmpId, DateOf


--Services
--SELECT * FROM [Services]
INSERT INTO [dbo].[Services]
(Ser_Code, Ser_Name, Ser_NetPrice, Ser_VatRate)
SELECT 'W01', 'Repair broken lamps', 300, 8 UNION ALL
SELECT 'W02', 'Repair suspension', 1500, 8 UNION ALL
SELECT 'W03', 'Repair after accident A', 3000, 8 UNION ALL
SELECT 'W04', 'Repair after accident B', 5000, 8 UNION ALL
SELECT 'W05', 'Repair after accident C', 10000, 8 UNION ALL
SELECT 'W06', 'Tire replacement', 50, 8 UNION ALL
SELECT 'W07', 'Car washing', 30, 8 UNION ALL
SELECT 'W08', 'Computer diagnose', 30, 8 UNION ALL
SELECT 'W09', 'Before buy check-in', 50, 8 UNION ALL
SELECT 'W10', 'Oil+Filters replacement', 50, 8 UNION ALL
SELECT 'S01', 'Vin checking', 20, 8 UNION ALL
SELECT 'S02', 'Car History check+print', 50, 8 UNION ALL
SELECT 'S03', 'Car import', 500, 8 UNION ALL
SELECT 'S04', 'Fleet management A', 300, 8 UNION ALL
SELECT 'S05', 'Fleet management B', 500, 8


/* E2 - Procedury do generowania zamówień */
CREATE PROCEDURE [dbo].[AddRandomCarOrders] @MaxOrders int
AS
BEGIN
	--declare @MaxOrders int = 1500
	declare @lastNumber int;

	SELECT TOP 1 @lastNumber = SUBSTRING(Ord_Code, PATINDEX('%/%', Ord_Code)+1, PATINDEX('%/%', Ord_Code)) from Orders order by Ord_Id desc
	IF @lastNumber is null
	 BEGIN
	 SET @lastNumber=0
	 END 

	;with CTE (Cus_Id, Emp_Id, Model_Id, Date_Start, Rownumber)
	as 
	(select  1, 1, 1, DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 400), '2017-01-01'), 1 union all
	SELECT    
	--ABS(CHECKSUM(NewId())) % @MaxOrders - 0, 
	[dbo].RandomCustomer(),
	[dbo].RandomTeamMember(),
	ABS(CHECKSUM(NewId())) % 98-0,
	DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 400), '2017-01-01'),
	Rownumber+1 from CTE where Rownumber<=@MaxOrders
	) 

	INSERT INTO Orders
	(Ord_Code, Ord_CusId, Ord_EmpId, Ord_ModId,
	Ord_MprId, Ord_SellPrice, Ord_OrderDate, Ord_PlannedPickupDate,
	Ord_IsCompleted, Ord_IsPaid)

	select distinct TOP (@MaxOrders) 
	--cast(YEAR(GETDATE()) as varchar(4))+'/'+cast(@lastNumber as varchar(10))+cast(Rownumber as varchar(10)),
	ISNULL((SELECT MAX(Ord_Id) from Orders),0)+ROW_NUMBER() OVER (ORDER BY (SELECT NULL)),
	Cus_Id  as Cus_ID ,  
	Emp_id,
	M.Mod_Id AS Ord_ModId,
	1 as Mpr_Id,
	MP.MPr_NetValue AS Ord_SellPrice, 
	CTE.Date_Start as MPr_DateStart, 
	NULL AS Ord_PlannedPickupDate,
	(SELECT ABS(CHECKSUM(NewId())) % 2 - 0) AS Ord_IsCompleted, 
	(SELECT ABS(CHECKSUM(NewId())) % 2 - 0) AS Ord_IsPaid 
	 from CTE
	 JOIN Model M on CTE.Model_Id=M.Mod_Id
	 Join ModelPrice MP on M.Mod_Id=MP.Mpr_ModId
	 --JOIN (SELECT MAX(Mpr_Id) FROM ModelPrice GROUP BY Mpr_ModId WHERE ) MP2 on Mp 
	 OPTION (MAXRECURSION 0) 

	 UPDATE Orders SET Ord_PlannedPickupDate=DATEADD(day, 14,Ord_OrderDate) WHERE Ord_PlannedPickupDate is null
END

/*
EXEC [dbo].AddRandomCarOrders 3000

--select 'Select * FROM ['+name+']' from sys.tables
Select * FROM [Services]
Select * FROM [ServiceOrders] -- empty
Select * FROM [ServiceOrderStatus]
Select * FROM [Brand]
Select * FROM [ServiceHistory] -- empty
Select * FROM [Orders] -- empty
Select * FROM [ModelPrice]
Select * FROM [Employee]
Select * FROM [Model]
Select * FROM [Customer]
Select * FROM [EmployeePosition]
Select * FROM [EmployeeTeam]
Select * FROM [EmployeeToTeam]
Select * FROM [EmployeeSalary]
Select * FROM [EmployeePayout]
Select * FROM [EmployeeToPosition]
*/