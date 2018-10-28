CREATE TABLE [dbo].[Orders] (
    [Ord_Id]                INT             IDENTITY (1, 1) NOT NULL,
    [Ord_Code]              VARCHAR (12)    NOT NULL,
    [Ord_CusId]             INT             DEFAULT ((-1)) NOT NULL,
    [Ord_EmpId]             INT             DEFAULT ((-1)) NOT NULL,
    [Ord_ModId]             INT             DEFAULT ((-1)) NOT NULL,
    [Ord_MprId]             INT             DEFAULT ((-1)) NOT NULL,
    [Ord_SellPrice]         DECIMAL (18, 2) NOT NULL,
    [Ord_OrderDate]         DATE            NOT NULL,
    [Ord_PlannedPickupDate] DATE            NULL,
    [Ord_IsCompleted]       BIT             DEFAULT ((0)) NOT NULL,
    [Ord_IsPaid]            BIT             NOT NULL,
    CONSTRAINT [PK_OrdId] PRIMARY KEY CLUSTERED ([Ord_Id] ASC),
    CONSTRAINT [DF_OrdSellPrice] CHECK ([Ord_SellPrice]>(0)),
    CONSTRAINT [FK_CusId] FOREIGN KEY ([Ord_CusId]) REFERENCES [dbo].[Customer] ([Cus_Id]) ON DELETE SET DEFAULT,
    CONSTRAINT [FK_EmpId] FOREIGN KEY ([Ord_EmpId]) REFERENCES [dbo].[Employee] ([Emp_Id]) ON DELETE SET DEFAULT,
    CONSTRAINT [FK_ModId] FOREIGN KEY ([Ord_ModId]) REFERENCES [dbo].[Model] ([Mod_Id]) ON DELETE SET DEFAULT,
    CONSTRAINT [FK_MPrId] FOREIGN KEY ([Ord_MprId]) REFERENCES [dbo].[ModelPrice] ([MPr_Id]) ON DELETE SET DEFAULT,
    CONSTRAINT [UQ_OrdCode] UNIQUE NONCLUSTERED ([Ord_Code] ASC)
);







