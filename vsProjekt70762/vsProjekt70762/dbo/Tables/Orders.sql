CREATE TABLE [dbo].[Orders] (
    [Ord_Id]                INT          IDENTITY (1, 1) NOT NULL,
    [Ord_Code]              VARCHAR (12) NOT NULL,
    [Ord_CustId]            INT          NOT NULL,
    [Ord_EmpId]             INT          NOT NULL,
    [Ord_ModId]             INT          NOT NULL,
    [Ord_MprId]             INT          NOT NULL,
    [Ord_OrderDate]         DATE         NOT NULL,
    [Ord_PlannedPickupDate] DATE         NULL,
    [Ord_IsCompleted]       BIT          DEFAULT ((0)) NOT NULL,
    [Ord_IsPaid]            BIT          NOT NULL,
    CONSTRAINT [PK_OrdId] PRIMARY KEY CLUSTERED ([Ord_Id] ASC),
    CONSTRAINT [UQ_OrdCode] UNIQUE NONCLUSTERED ([Ord_Code] ASC)
);



