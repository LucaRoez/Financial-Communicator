CREATE PROCEDURE [sp.UpdateTransactionType]
	@transactionType varchar(30),
	@search varchar(30)
AS
BEGIN
	IF COALESCE(@transactionType, '') = ''
	BEGIN
		IF COALESCE(@search, '') = ''
		BEGIN
			UPDATE [Catalog.TransactionTypes] SET [Type] = @transactionType WHERE [Type] = @search;
		END

		ELSE
		BEGIN
			UPDATE [Catalog.TransactionTypes] SET [Type] = @transactionType;
		END
	END

	ELSE
	BEGIN
		RETURN 'Some data must be sent as the Transaction Type name'
	END
END