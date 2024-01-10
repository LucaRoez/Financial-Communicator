CREATE PROCEDURE [sp.RemoveTransactionError]
	@errorType varchar(30),
	@ID int
AS
BEGIN
	-- Check if there're actually transaction errors already loaded
	IF (SELECT COUNT(Id) FROM [Catalog.TransactionErrors]) > 0
	BEGIN
		-- Check if the ID parameter exists
		IF EXISTS (SELECT 1 FROM [Catalog.TransactionErrors] WHERE Id = @ID)
		BEGIN
			DELETE FROM [Catalog.TransactionErrors] WHERE Id = @ID;
		END

		ELSE IF EXISTS (SELECT 1 FROM [Catalog.TransactionErrors] WHERE [Type] = @errorType)
		BEGIN
			DELETE FROM [Catalog.TransactionErrors] WHERE [Type] = @errorType;
		END

		ELSE
		BEGIN
			RETURN 'The input data is not in our records'
		END
	END

	ELSE
	BEGIN
		RETURN 'There is no transaction error to delete'
	END
END