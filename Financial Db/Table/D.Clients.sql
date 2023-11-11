CREATE TABLE [dbo].[D.Clients]
(
	[Id] INT IDENTITY(1,1) PRIMARY KEY,
	[First Name] VARCHAR(50) NOT NULL,
	[Father Name] VARCHAR(50) NOT NULL,
	[Mother Name] VARCHAR(50) NOT NULL,
	[Birth Date] DATE NOT NULL,
	[Phone Number] VARCHAR(30),
	[Account] VARCHAR(30) NOT NULL,
	[Bank Key] VARCHAR(18) NOT NULL,
	[Card Number] INT CHECK([Card Number] < 16) NOT NULL,
	[Sign Up Date] DATETIME NOT NULL
)
