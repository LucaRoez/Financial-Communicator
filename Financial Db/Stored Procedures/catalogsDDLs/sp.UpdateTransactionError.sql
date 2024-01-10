CREATE PROCEDURE [sp.UpdateTransactionError]
	@errorType varchar(30),
	@errorMessage varchar(250),
	@search varchar(30)
AS
BEGIN
	IF COALESCE(@errorType, '') = ''
	BEGIN
		IF COALESCE(@search, '') = ''
		BEGIN
			IF COALESCE(@errorMessage, '') = ''
			BEGIN
				UPDATE [Catalog.TransactionErrors] SET [Type] = @errorType, [Message] = @errorMessage WHERE [Type] = @search;
			END

			ELSE
			BEGIN
				UPDATE [Catalog.TransactionErrors] SET [Type] = @errorType WHERE [Type] = @search;
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