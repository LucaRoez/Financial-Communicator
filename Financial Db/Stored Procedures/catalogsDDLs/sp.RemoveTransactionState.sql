CREATE PROCEDURE [sp.RemoveTransactionState]
	@stateName varchar(30),
	@ID int
AS
BEGIN
	-- Check if there're actually transaction states already loaded
	IF (SELECT COUNT(Id) FROM [Catalog.TransactionStates]) > 0
	BEGIN
		-- Check if the ID parameter exists
		IF EXISTS (SELECT 1 FROM [Catalog.TransactionStates] WHERE Id = @ID)
		BEGIN
			DELETE FROM [Catalog.TransactionStates] WHERE Id = @ID
		END

		ELSE IF EXISTS (SELECT 1 FROM [Catalog.TransactionStates] WHERE [State] = @stateName)
		BEGIN
			DELETE FROM [Catalog.TransactionStates] WHERE [State] = @stateName
		END

		ELSE
		BEGIN
			RETURN 'The input data is not in our records'
		END
	END

	ELSE
	BEGIN
		RETURN 'There is no transaction state to delete'
	END
END