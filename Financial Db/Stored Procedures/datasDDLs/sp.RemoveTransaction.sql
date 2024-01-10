CREATE PROCEDURE [sp.RemoveTransaction]
	@clientId BIGINT,
	@date DATETIME
AS
	IF (SELECT COUNT(Id) FROM [Data.Clients]) > 0
	BEGIN
		IF COALESCE(@clientId, 0) = 0 AND (SELECT Id FROM [Data.Clients]) = @ID
		BEGIN
			DELETE FROM [Data.Clients] WHERE Id = @ID
		END

		ELSE IF @date IS NOT NULL AND (SELECT Account FROM [Data.Clients]) = @account
		BEGIN
			DELETE FROM [Data.Clients] WHERE Account = @account
		END
		
		ELSE
		BEGIN
			RETURN "You must enter some value, the ID first, or
			second the account name or third your first name, in that order."
		END
	END
	ELSE
	BEGIN
		RETURN "Our data base doesn't have any registered client to delete yet."
	END
