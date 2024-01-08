USE [BankingTrasactionsSqlAppDB];

GO

ALTER TABLE [Data.Transactions]
ADD CONSTRAINT FK_Transactions_Clients
FOREIGN KEY ([Client_Id])
REFERENCES [Data.Clients]([Id]);

ALTER TABLE [Data.Transactions]
ADD CONSTRAINT FK_Transactions_AffiliatedBanks
FOREIGN KEY ([Bank_Id])
REFERENCES [Catalog.AffiliatedBanks]([Id]);

ALTER TABLE [Data.Transactions]
ADD CONSTRAINT FK_Transactions_TransactionTypes
FOREIGN KEY ([Type_Id])
REFERENCES [Catalog.TransactionTypes]([Id]);

ALTER TABLE [Data.Transactions]
ADD CONSTRAINT FK_Transactions_TransactionStates
FOREIGN KEY ([State_Id])
REFERENCES [Catalog.TransactionStates]([Id]);

ALTER TABLE [Data.Transactions]
ADD CONSTRAINT FK_Transactions_TransactionErrors
FOREIGN KEY ([Error_Id])
REFERENCES [Catalog.TransactionErrors]([Id]);

ALTER TABLE [Data.Transactions]
ADD CONSTRAINT FK_Transactions_InterbankTransactionCodes
FOREIGN KEY ([IBTC_Id])
REFERENCES [Data.InterbankTransactionCodes]([Id]);