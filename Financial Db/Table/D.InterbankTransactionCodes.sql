CREATE TABLE [dbo].[D.InterbankTransactionCodes]
(
	[Id] BIGINT IDENTITY(1,1) PRIMARY KEY,
	[Transaction_Id] BIGINT NOT NULL, FOREIGN KEY (Transaction_Id) REFERENCES [dbo].[D.Transactions](Id),
	[Code] VARCHAR(50) NOT NULL
)
