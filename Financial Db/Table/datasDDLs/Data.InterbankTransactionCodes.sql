USE [BankingTrasactionsSqlAppDB];

GO

CREATE TABLE [Data.InterbankTransactionCodes]
(
	[Id] BIGINT IDENTITY(1,1) PRIMARY KEY,
	[Transaction_Id] BIGINT NOT NULL,
	[Code] VARCHAR(50) NOT NULL
)
