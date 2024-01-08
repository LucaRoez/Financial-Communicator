USE [BankingTrasactionsSqlAppDB];

GO

CREATE TABLE [Data.Transactions]
(
	[Id] BIGINT IDENTITY(1,1) PRIMARY KEY,
	[Date] DATETIME NOT NULL,
	[Client_Id] BIGINT NOT NULL,
	[Bank_Id] INT NOT NULL,
	[Amount] DECIMAL(18,6) NOT NULL,
	[Type_Id] INT NOT NULL,
	[State_Id] INT NOT NULL,
	[Error_Id] INT,
	[IBTC_Id] BIGINT,
	[Expiration Date] DATETIME
)