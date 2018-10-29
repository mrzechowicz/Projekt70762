CREATE TABLE [dbo].[EmployeeSalary] (
    [ESa_Id]         INT             IDENTITY (1, 1) NOT NULL,
    [ESa_EmpId]      INT             NOT NULL,
    [ESa_Salary]     DECIMAL (18, 2) NOT NULL,
    [ESa_DateFrom]   DATE            NOT NULL,
    [ESa_DateTo]     DATE            NULL,
    [ESa_InsertDate] DATETIME        DEFAULT (getdate()) NOT NULL,
    [ESa_UpdateDate] DATETIME        NULL,
    CONSTRAINT [PK_ESaId] PRIMARY KEY CLUSTERED ([ESa_Id] ASC)
);

