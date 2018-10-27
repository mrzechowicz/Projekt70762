CREATE TABLE [dbo].[Employee] (
    [Emp_Id]          INT           IDENTITY (1, 1) NOT NULL,
    [Emp_Login]       VARCHAR (50)  NOT NULL,
    [Emp_FirstName]   VARCHAR (50)  NOT NULL,
    [Emp_LastName]    VARCHAR (50)  NOT NULL,
    [Emp_TelephoneNo] VARCHAR (50)  NULL,
    [Emp_Email]       VARCHAR (100) NULL,
    [Emp_InsertDate]  DATETIME      DEFAULT (getdate()) NOT NULL,
    [Emp_UpdateDate]  DATETIME      NULL,
    CONSTRAINT [PK_EmpLogin] PRIMARY KEY CLUSTERED ([Emp_Login] ASC)
);

