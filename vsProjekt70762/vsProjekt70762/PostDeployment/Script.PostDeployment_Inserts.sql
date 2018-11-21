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
GO

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
GO
		
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
GO

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
GO

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
GO


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
GO

--EmployeeToPosition
--TRUNCATE TABLE EmployeeToPosition
;WITH CTEEmp AS 
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
GO

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
GO


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
GO

-- podwyżka 15%
INSERT INTO [dbo].[EmployeeSalary]
(ESa_EmpId, ESa_Salary, ESa_DateFrom, ESa_DateTo)
SELECT ESa_EmpId, ESa_Salary*1.15, 
ESa_DateTo,
'9999-12-31'
 FROM EmployeeSalary
GO

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
GO
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
GO

-- podwyżka o 15%
INSERT INTO ModelPrice
(Mpr_ModId, MPr_NetValue, Mpr_VatRate,
Mpr_DateStart, Mpr_DateEnd)
SELECT Mpr_ModId, MPr_NetValue*1.15, Mpr_VatRate,
Mpr_DateEnd, '9999-12-31' From ModelPrice
GO
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
GO

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
GO


EXEC [dbo].AddRandomCarOrders 3000

UPDATE Orders Set Ord_SellPrice=Ord_SellPrice*0.85
FROM Orders O WHERE Ord_Id in (
SELECT TOP 3 PERCENT Ord_Id FROM Orders)

UPDATE Orders Set Ord_SellPrice=Ord_SellPrice*0.9
FROM Orders O WHERE Ord_Id in (
SELECT TOP 2 PERCENT Ord_Id FROM Orders)

UPDATE Orders Set Ord_SellPrice=Ord_SellPrice*0.95
FROM Orders O WHERE Ord_Id in (
SELECT TOP 5 PERCENT Ord_Id FROM Orders)
GO


EXEC [dbo].RandomServiceOrders 400
GO




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


/* Denormalize scripts  Part F, G */

IF EXISTS (SELECT * FROM sys.databases WHERE name = N'PROJEKT70762_DEN')
    BEGIN
	USE [master]
	ALTER DATABASE [PROJEKT70762_DEN] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    END;
GO
IF EXISTS (SELECT * FROM sys.databases WHERE name = N'PROJEKT70762_DEN')
    BEGIN
		DROP DATABASE [PROJEKT70762_DEN]
	END
GO
CREATE DATABASE [PROJEKT70762_DEN]
GO

USE	PROJEKT70762_DEN
GO

if exists (select * from sysobjects where name='DenCustomer' and xtype='U')
    drop table DenCustomer
select * INTO DenCustomer from PROJEKT70762..Customer WITH(NOLOCK)
ALTER TABLE DenCustomer ADD CONSTRAINT PK_DCusId PRIMARY KEY (Cus_Id)

if exists (select * from sysobjects where name='DenModel' and xtype='U')
    drop table DenModel
    
select M.Mod_Id, M.Mod_Code, M.Mod_Name, M.Mod_VehicleType, M.Mod_EngineType, M.Mod_EngineDisplacement, M.Mod_EngineHorsePower, M.Mod_NumberOfDoors, M.Mod_AutomaticGearBox,
B.Bra_Code as Mod_BrandCode, B.Bra_Name as Mod_BrandName, B.Bra_Origin as Mod_BrandOrigin
Into DenModel
from PROJEKT70762..Model M WITH(NOLOCK) Join PROJEKT70762..Brand B WITH(NOLOCK) on M.Mod_BraId=B.Bra_Id
ALTER TABLE DenModel ADD CONSTRAINT PK_ModId PRIMARY KEY (Mod_Id)

if exists (select * from sysobjects where name='DenModelPrice' and xtype='U')
    drop table DenModelPrice
select * INTO DenModelPrice from PROJEKT70762..ModelPrice WITH(NOLOCK)
ALTER TABLE DenModelPrice ADD CONSTRAINT PK_MprId PRIMARY KEY (Mpr_Id)
ALTER TABLE DenModelPrice ADD CONSTRAINT FK_MprId FOREIGN KEY (Mpr_ModId) REFERENCES DenModel(Mod_Id)

if exists (select * from sysobjects where name='DenEmployee' and xtype='U')
    drop table DenEmployee
select E.Emp_Id, E.Emp_Login, E.Emp_FirstName, E.Emp_LastName, E.Emp_TelephoneNo, E.Emp_Email, E.Emp_PESEL,
EP.EPo_PositionName as Emp_PositionName, ET.ETe_TeamName as Emp_TeamName
Into DenEmployee
from PROJEKT70762..Employee E WITH(NOLOCK) JOIN PROJEKT70762..EmployeeToPosition ETP WITH(NOLOCK) on E.Emp_Id=ETP.ETP_EmpId JOIN PROJEKT70762..EmployeePosition EP on ETP.ETP_EPoId=EP.EPo_Id
JOIN PROJEKT70762..EmployeeToTeam ETT WITH(NOLOCK) on E.Emp_Id=ETT.ETT_EmpId JOIN PROJEKT70762..EmployeeTeam ET WITH(NOLOCK) on ETT.ETT_ETeId=ET.ETe_Id
ALTER TABLE DenEmployee ADD CONSTRAINT PK_EmpId PRIMARY KEY (Emp_Id)


if exists (select * from sysobjects where name='DenOrders' and xtype='U')
    drop table DenOrders 
SELECT * INTO  DenOrders FROM PROJEKT70762..Orders WITH(NOLOCK)
--select * from PROJEKT70762..Orders
ALTER TABLE DenOrders  ADD CONSTRAINT PK_DOrdID PRIMARY KEY (Ord_Id)
ALTER TABLE DenOrders  ADD CONSTRAINT FK_CusID FOREIGN KEY (Ord_CusId) REFERENCES DenCustomer(Cus_Id)
ALTER TABLE DenOrders  ADD CONSTRAINT FK_EmpID FOREIGN KEY (Ord_EmpId) REFERENCES DenEmployee(Emp_Id)
ALTER TABLE DenOrders  ADD CONSTRAINT FK_ModID FOREIGN KEY (Ord_ModId) REFERENCES DenModel(Mod_Id)
CREATE NONCLUSTERED INDEX IX_DOrdID on DenOrders(Ord_Id)
CREATE NONCLUSTERED INDEX IX_DCusId on DenOrders(Ord_CusId)
CREATE NONCLUSTERED INDEX IX_DEmpID on DenOrders(Ord_EmpId)
CREATE NONCLUSTERED INDEX IX_DModId on DenOrders(Ord_ModId)

 CREATE NONCLUSTERED COLUMNSTORE INDEX [IDXCS_Orders_ColumnStore]
 ON [DenOrders]
 (Ord_SellPrice, Ord_ModId, Ord_CusId)


 GO
 CREATE SCHEMA [rapAn]

 GO
 CREATE FUNCTION dbo.rap_fnBrandsSoldByQuaterMonth(@year int) -- for 2017
 RETURNS TABLE 
 AS
 RETURN
 (
 SELECT  Year(Ord_OrderDate) as [Year], DatePart(q,Ord_Orderdate) as Quater, DatePart(m,Ord_Orderdate) as [Month], M.Mod_BrandName, COUNT(*) as CarsSold from DenOrders O WITH(NOLOCK) JOIN DenModel M WITH(NOLOCK) on O.Ord_ModId=M.Mod_Id
 WHERE O.Ord_OrderDate>=DATEFROMPARTS(@year,1,1) and O.Ord_OrderDate<=DATEFROMPARTS(@year,12,31)
 --GROUP BY M.Mod_BrandName, M.Mod_BrandOrigin,  M.Mod_Name WITH ROLLUP
 GROUP BY CUBE(M.Mod_BrandName, Year(Ord_OrderDate), DatePart(q,Ord_Orderdate), DatePart(m,Ord_Orderdate) )
 )

 GO
 select * from [dbo].rap_fnBrandsSoldByQuaterMonth(2017)
 
 GO
 CREATE PROCEDURE dbo.rap_spCarsSoldQuaterByQuater @year int
 AS
 BEGIN
  SELECT  Year(Ord_OrderDate) as [Year], DatePart(q,Ord_Orderdate) as Quater, COUNT(*) as CarsSold,
 ISNULL(LAG(count(Ord_Id),1) OVER (ORDER BY Year(Ord_OrderDate), DatePart(q,Ord_Orderdate)) , 0)as PreviousQuater,
 ISNULL(COUNT(*)-LAG(count(Ord_Id),1) OVER (ORDER BY Year(Ord_OrderDate), DatePart(q,Ord_Orderdate)), 0) as [QuaterDelta]
 from DenOrders O WITH(NOLOCK) JOIN DenModel M WITH(NOLOCK) on O.Ord_ModId=M.Mod_Id
 WHERE O.Ord_OrderDate>=DATEFROMPARTS(@year,1,1) and O.Ord_OrderDate<=DATEFROMPARTS(@year,12,31)
 --GROUP BY M.Mod_BrandName, M.Mod_BrandOrigin,  M.Mod_Name WITH ROLLUP
 GROUP BY Year(Ord_OrderDate), DatePart(q,Ord_Orderdate)--, Ord_OrderDate
 --GROUP BY CUBE(Year(Ord_OrderDate), DatePart(q,Ord_Orderdate), DatePart(m,Ord_Orderdate), LAG(SUM(Count(Ord_Id)),1) OVER ( ORDER BY Ord_OrderDate))--PARTITION BY Year(Ord_OrderDate), DatePart(q,Ord_Orderdate), DatePart(m,Ord_Orderdate) )
END
GO
EXEC [dbo].[rap_spCarsSoldQuaterByQuater] 2017


GO
 CREATE PROCEDURE dbo.rap_spOrdersPagination @year int, @offset int, @noOfRows int
 AS
 BEGIN
  SELECT  Year(Ord_OrderDate) as [Year], Ord_Code, rtrim(ISNULL(E.Emp_FirstName,'') + ' ' +ISNULL(E.Emp_LastName,'')) as SoldBy
 from DenOrders O WITH(NOLOCK) JOIN DenModel M WITH(NOLOCK) on O.Ord_ModId=M.Mod_Id
 JOIN DenEmployee E WITH(NOLOCK) on O.Ord_EmpId=E.Emp_Id
 WHERE O.Ord_OrderDate>=DATEFROMPARTS(@year,1,1) and O.Ord_OrderDate<=DATEFROMPARTS(@year,12,31)
ORDER BY Ord_Id
OFFSET @offset ROWS 
FETCH NEXT @noOfRows ROWS ONLY
END
GO

EXEC [dbo].[rap_spOrdersPagination] 2017, 100, 300

 GO
 CREATE VIEW dbo.rap_vTopSoldModelByPerson
 AS
  WITH CTE(EmpName, ModelCode, SoldCount, [Rank])
 AS(
 SELECT CONCAT(E.Emp_FirstName, ' ', E.Emp_LastName) as EmpName, M.Mod_Code as ModelCode, COUNT(*) as SoldCount,
 ROW_NUMBER() OVER (PARTITION BY CONCAT(E.Emp_FirstName, ' ', E.Emp_LastName) ORDER BY COUNT(*) DESC) as [Rank]
  FROM DenOrders O WITH(NOLOCK) JOIN DenEmployee E WITH(NOLOCK) on O.Ord_EmpId=E.Emp_Id
 JOIN DenModel M WITH(NOLOCK) on O.Ord_ModId=M.Mod_Id 
 GROUP BY M.Mod_Code, CONCAT(E.Emp_FirstName, ' ', E.Emp_LastName)
 )
 SELECT EmpName, ModelCode, SUM(SoldCount) as SoldCount FROM CTE
 WHERE [Rank]=1
 GROUP BY EmpName, ModelCode
-- ORDER BY SoldCount DESC

GO
SELECT * FROM dbo.rap_vTopSoldModelByPerson ORDER BY SoldCount DESC




select * from DenOrders WITH(NOLOCK)
select * from DenEmployee WITH(NOLOCK)
select * from DenModel WITH(NOLOCK)
