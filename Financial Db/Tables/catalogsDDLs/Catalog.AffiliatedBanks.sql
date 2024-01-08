USE [BankingTrasactionsSqlAppDB];

GO

CREATE TABLE [Catalog.AffiliatedBanks]
(
	[Id] INT Identity(1,1) PRIMARY KEY,
	[Corporation Name] VARCHAR(50) NOT NULL
)
