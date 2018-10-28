CREATE TABLE [dbo].[CustomerToPosition] (
    [CTP_Id]       INT  IDENTITY (1, 1) NOT NULL,
    [CTP_CusId]    INT  NOT NULL,
    [CTP_CupId]    INT  NOT NULL,
    [CTP_DateFrom] DATE NOT NULL,
    [CTP_DateTo]   DATE NULL,
    CONSTRAINT [PK_CTPId] PRIMARY KEY CLUSTERED ([CTP_Id] ASC)
);

