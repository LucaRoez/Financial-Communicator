CREATE TABLE [dbo].[Catalog.TransactionErrors]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Type] VARCHAR(20) NOT NULL,
	[Message] VARCHAR(255) NOT NULL
)
