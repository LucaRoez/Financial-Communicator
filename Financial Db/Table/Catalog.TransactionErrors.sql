﻿CREATE TABLE [dbo].[Catalog.TransactionErrors]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Type] VARCHAR(30) NOT NULL,
	[Message] VARCHAR(250) NOT NULL
)
