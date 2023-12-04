CREATE TABLE [dbo].[Data.Transactions]
(
	[Id] BIGINT IDENTITY(1,1) PRIMARY KEY,
	[Date] DATETIME NOT NULL,
	[Client_Id] INT NOT NULL, FOREIGN KEY (Client_Id) REFERENCES [dbo].[Data.CLients](Id),
	[Bank_Id] INT NOT NULL, FOREIGN KEY (Bank_ID) REFERENCES [dbo].[Catalog.AffiliatedBanks](Id),
	[Amount] DECIMAL(18,6) NOT NULL,
	[Type_Id] INT NOT NULL, FOREIGN KEY (Type_Id) REFERENCES [dbo].[Catalog.TransactionTypes](Id),
	[State_Id] INT NOT NULL, FOREIGN KEY (State_Id) REFERENCES [dbo].[Catalog.TransactionStates](Id),
	[Error_Id] INT, FOREIGN KEY (Error_Id) REFERENCES [dbo].[Catalog.TransactionErrors](Id),
	[IBTC_Id] BIGINT, FOREIGN KEY (IBTC_Id) REFERENCES [dbo].[Data.InterbankTransactionCodes](Id),
	[Expiration Date] DATETIME
)
