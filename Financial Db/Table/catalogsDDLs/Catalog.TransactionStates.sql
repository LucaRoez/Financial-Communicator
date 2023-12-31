USE [BankingTrasactionsSqlAppDB];

GO

CREATE TABLE [Catalog.TransactionStates]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[State] VARCHAR(30) NOT NULL,
	[Description] VARCHAR(250)
)
