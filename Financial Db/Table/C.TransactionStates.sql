CREATE TABLE [dbo].[C.TransactionStates]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[State] VARCHAR(20) NOT NULL,
	[Description] VARCHAR(50)
)
