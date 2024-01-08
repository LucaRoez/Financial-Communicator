USE [BankingTrasactionsSqlAppDB];

GO

ALTER TABLE [Linking.TransactionHistory]
ADD CONSTRAINT FK_TransactionHistory_Transactions
FOREIGN KEY ([Transaction_Id])
REFERENCES [Data.Transactions]([Id]);

ALTER TABLE [Linking.TransactionHistory]
ADD CONSTRAINT FK_TransactionHistory_TransactionStates
FOREIGN KEY ([State_Id])
REFERENCES [Catalog.TransactionStates]([Id]);