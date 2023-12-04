CREATE PROCEDURE [sp.AddTransactionError]
	@errorType varchar(30),
	@errorMessage varchar(250)
AS
BEGIN
	IF @errorType <> '' OR @errorType IS NOT NULL
	BEGIN
		INSERT INTO [Catalog.TransactionErrors]([Type], [Message]) VALUES (@errorType, @errorMessage)
	END
	ELSE
	BEGIN
		RETURN 'Some data must be sent as the Transaction Error name type'
	END
END