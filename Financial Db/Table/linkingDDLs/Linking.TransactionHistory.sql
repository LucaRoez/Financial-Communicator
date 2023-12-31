USE [BankingTrasactionsSqlAppDB];

GO

CREATE TABLE [dbo].[Linking.TransactionHistory]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Transaction_Id] BIGINT NOT NULL,
	[State_Id] INT NOT NULL,
	[Date] DATETIME NOT NULL,
	[Message] VARCHAR(255)
)
