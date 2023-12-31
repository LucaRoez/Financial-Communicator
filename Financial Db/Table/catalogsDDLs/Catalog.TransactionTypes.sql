USE [BankingTrasactionsSqlAppDB];

GO

CREATE TABLE [dbo].[Catalog.TransactionTypes]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Type] VARCHAR(6) NOT NULL CHECK(Type = 'Input' OR Type = 'Output')
)
