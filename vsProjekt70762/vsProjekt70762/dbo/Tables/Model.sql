CREATE TABLE [dbo].[Model] (
    [Mod_Id]                 INT             IDENTITY (1, 1) NOT NULL,
    [Mod_Code]               VARCHAR (20)    NOT NULL,
    [Mod_Name]               VARCHAR (100)   NOT NULL,
    [Mod_BraId]              SMALLINT        NOT NULL,
    [Mod_EngineType]         VARCHAR (10)    NULL,
    [Mod_EngineDisplacement] DECIMAL (18, 2) NULL,
    [Mod_EngineHorsePower]   SMALLINT        NULL,
    [Mod_NumberOfDoors]      TINYINT         NULL,
    [Mod_AutomaticGearBox]   BIT             NULL,
    [Mod_InsertDate]         DATETIME        DEFAULT (getdate()) NOT NULL,
    [Mod_UpdateDate]         DATETIME        NULL,
    CONSTRAINT [PK_ModId] PRIMARY KEY CLUSTERED ([Mod_Id] ASC),
    CONSTRAINT [UQ_ModCode] UNIQUE NONCLUSTERED ([Mod_Code] ASC)
);

