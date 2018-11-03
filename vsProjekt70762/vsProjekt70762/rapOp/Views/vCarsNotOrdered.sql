CREATE VIEW [rapOP].[vCarsNotOrdered] AS
SELECT M.Mod_Id, M.Mod_Code, M.Mod_VehicleType, M.Mod_EngineType, M.Mod_EngineDisplacement, M.Mod_AutomaticGearBox
 FROM [Model] M WITH (NOLOCK) LEFT Join [Orders] O WITH (NOLOCK) on M.Mod_Id=Ord_ModId
WHERE O.Ord_Id Is null