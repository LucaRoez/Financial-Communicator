CREATE PROCEDURE [sp.RemoveClient]
	@ID INT,
	@account VARCHAR(30),
	@firstName VARCHAR(50)
AS
	IF (SELECT COUNT(Id) FROM [Data.Clients]) > 0
	BEGIN
		IF COALESCE(@ID, 0) = 0 AND EXISTS (SELECT 1 FROM [Data.Clients] WHERE Id = @ID)
		BEGIN
			DELETE FROM [Data.Clients] WHERE Id = @ID
		END

		ELSE IF COALESCE(@account, '') = '' AND EXISTS (SELECT 1 FROM [Data.Clients] WHERE Account = @account)
		BEGIN
			DELETE FROM [Data.Clients] WHERE Account = @account
		END

		ELSE IF COALESCE(@firstName, '') = '' AND EXISTS (SELECT 1 FROM [Data.Clients] WHERE [First Name] = @firstName)
		BEGIN
			DELETE FROM [Data.Clients] WHERE [First Name] = @firstName
		END
		
		ELSE
		BEGIN
			RETURN "You must enter some value, the ID first, or
			second the account name, or third your first name, in that order."
		END
	END
	ELSE
	BEGIN
		RETURN "Our data base doesn't have any registered client to delete yet."
	END
