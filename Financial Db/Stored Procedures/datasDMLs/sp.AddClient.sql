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
	IF @firstName IS NULL OR @fatherName IS NULL OR @motherName IS NULL
	OR @birthDate IS NULL OR @phoneNumber IS NULL OR @account IS NULL
	OR @bankKey IS NULL OR @cardNumber IS NULL OR @signUpDate IS NULL
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
RETURN 0
