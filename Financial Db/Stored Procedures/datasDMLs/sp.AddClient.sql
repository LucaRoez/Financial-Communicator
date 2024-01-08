CREATE PROCEDURE [sp.AddClient]
	@firstName VARCHAR(50) NOT NULL,
	@fatherName VARCHAR(50) NOT NULL,
	@motherName VARCHAR(50) NOT NULL,
	@birthDate DATE NOT NULL,
	@phoneNumber VARCHAR(30),
	@account VARCHAR(30) NOT NULL,
	@bankKey VARCHAR(18) NOT NULL,
	@cardNumber INT NOT NULL,
	@signUpDate DATETIME NOT NULL
AS
IF @firstName IS NOT NULL OR @fatherName IS NOT NULL OR @motherName IS NOT NULL
OR @birthDate IS NOT NULL OR @phoneNumber IS NOT NULL OR @account IS NOT NULL
OR @bankKey IS NOT NULL OR @cardNumber IS NOT NULL OR @signUpDate IS NOT NULL
BEGIN
	INSERT INTO [Data.Clients](
	[First Name], [Father Name],
	[Mother Name], [Birth Date],
	[Phone Number], [Account],
	[Bank Key], [Card Number],
	[Sign Up Date])
	VALUES (
	@firstName, @fatherName,
	@motherName, @birthDate,
	@phoneNumber, @account,
	@bankKey, @cardNumber,
	@signUpDate)
END
ELSE
BEGIN
	RETURN 'Remember introduce mandatorily the first name first, then father name,
	mother name, birth date, phone number, account name, banking key, card number and
	the sign up date in this order.'
END
