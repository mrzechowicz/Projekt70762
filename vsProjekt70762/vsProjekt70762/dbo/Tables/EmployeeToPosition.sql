CREATE TABLE [dbo].[EmployeeToPosition] (
    [ETP_Id]       INT  IDENTITY (1, 1) NOT NULL,
    [ETP_EmpId]    INT  NOT NULL,
    [ETP_EPoId]    INT  NOT NULL,
    [ETP_DateFrom] DATE NOT NULL,
    [ETP_DateTo]   DATE NULL,
    CONSTRAINT [PK_ETPId] PRIMARY KEY CLUSTERED ([ETP_Id] ASC)
);

