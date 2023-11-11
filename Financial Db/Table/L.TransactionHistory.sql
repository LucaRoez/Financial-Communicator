﻿CREATE TABLE [dbo].[L.TransactionHistory]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[Transaction_Id] INT NOT NULL, FOREIGN KEY (Transaction_Id) REFERENCES [dbo].[D.Transactions](Id),
	[State_Id] INT NOT NULL, FOREIGN KEY (State_Id) REFERENCES [dbo].[C.TransactionStates](Id),
	[Date] DATETIME NOT NULL,
	[Message] VARCHAR(255)
)
