USE [BankingTrasactionsSqlAppDB];

GO

ALTER TABLE [Data.InterbankTransactionCodes]
ADD CONSTRAINT FK_InterbankTransactionCodes_Transactions
FOREIGN KEY ([Transaction_Id])
REFERENCES [Data.Transactions]([Id]);