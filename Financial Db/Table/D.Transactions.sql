CREATE TABLE [dbo].[D.Transactions]
(
	[Id] BIGINT IDENTITY(1,1) PRIMARY KEY,
	[Date] DATETIME NOT NULL,
	[Client_Id] INT NOT NULL, FOREIGN KEY (Client_Id) REFERENCES [dbo].[D.CLients](Id),
	[Bank_Id] INT NOT NULL, FOREIGN KEY (Bank_ID) REFERENCES [dbo].[C.AffiliatedBanks](Id),
	[Amount] DECIMAL(18,6) NOT NULL,
	[Type_Id] INT NOT NULL, FOREIGN KEY (Type_Id) REFERENCES [dbo].[C.TransactionTypes](Id),
	[State_Id] INT NOT NULL, FOREIGN KEY (State_Id) REFERENCES [dbo].[C.TransactionStates](Id),
	[Error_Id] INT, FOREIGN KEY (Error_Id) REFERENCES [dbo].[C.TransactionErrors](Id),
	[IBTC_Id] BIGINT, FOREIGN KEY (IBTC_Id) REFERENCES [dbo].[D.InterbankTransactionCodes](Id),
	[Expiration Date] DATETIME
)
