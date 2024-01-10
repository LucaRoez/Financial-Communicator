CREATE PROCEDURE [sp.AddTransactionError]
	@errorType varchar(30),
	@errorMessage varchar(250)
AS
BEGIN
	IF COALESCE(@errorType, '') = ''
	BEGIN
		IF COALESCE(@errorMessage, '') = ''
		BEGIN
			IF COALESCE(@errorMessage, '') = ''
			BEGIN
				UPDATE [Catalog.TransactionErrors] SET [Type] = @errorType, [Message] = @errorMessage WHERE [Type] = @errorMessage;
			END
			ELSE
			BEGIN
				UPDATE [Catalog.TransactionErrors] SET [Type] = @errorType WHERE [Type] = @errorMessage;
			END
		END
		ELSE
		BEGIN
			IF COALESCE(@errorMessage, '') = ''
			BEGIN
				UPDATE [Catalog.TransactionErrors] SET [Type] = @errorType, [Message] = @errorMessage;
			END
			ELSE
			BEGIN
				UPDATE [Catalog.TransactionErrors] SET [Type] = @errorType;
			END
		END
	END
	ELSE
	BEGIN
		RETURN 'Some data must be sent as the Transaction Error name type'
	END
END