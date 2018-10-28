CREATE TABLE [dbo].[ServiceHistory] (
    [SHi_Id]         INT  IDENTITY (1, 1) NOT NULL,
    [SHi_SOrId]      INT  NOT NULL,
    [SHi_SOSId]      INT  NOT NULL,
    [SHi_EmpId]      INT  NOT NULL,
    [SHi_ChangeDate] DATE NOT NULL,
    CONSTRAINT [PK_SHiId] PRIMARY KEY CLUSTERED ([SHi_Id] ASC)
);

