﻿CREATE TABLE [dbo].[Customer] (
    [Cus_Id]           INT           IDENTITY (1, 1) NOT NULL,
    [Cus_Code]         VARCHAR (50)  NOT NULL,
    [Cus_FirstName]    VARCHAR (50)  NOT NULL,
    [Cus_LastName]     VARCHAR (50)  NOT NULL,
    [Cus_TelephoneNo]  VARCHAR (50)  NULL,
    [Cus_Email]        VARCHAR (100) NULL,
    [Cus_City]         VARCHAR (100) NULL,
    [Cus_Address]      VARCHAR (200) NULL,
    [Cus_InsertDate]   DATETIME      DEFAULT (getdate()) NOT NULL,
    [Cus_UpdateDate]   DATETIME      NULL,
    [Cus_IDCardNumber] VARCHAR (9)   NULL,
    CONSTRAINT [PK_CusId] PRIMARY KEY CLUSTERED ([Cus_Id] ASC),
    CONSTRAINT [UQ_CusCode] UNIQUE NONCLUSTERED ([Cus_Code] ASC),
    CONSTRAINT [UQ_CusIDCardNumber] UNIQUE NONCLUSTERED ([Cus_IDCardNumber] ASC)
);





