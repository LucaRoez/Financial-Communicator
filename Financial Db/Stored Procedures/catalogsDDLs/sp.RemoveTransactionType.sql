﻿CREATE PROCEDURE [sp.RemoveTransactionType]
	@transactionType varchar(30),
	@ID int
AS
BEGIN
	-- Check if there're actually transaction types already loaded
	IF (SELECT COUNT(Id) FROM [Catalog.TransactionTypes]) > 0
	BEGIN
		-- Check if the ID parameter exists
		IF EXISTS (SELECT 1 FROM [Catalog.TransactionTypes] WHERE Id = @ID)
		BEGIN
			DELETE FROM [Catalog.TransactionTypes] WHERE Id = @ID
		END

		ELSE IF EXISTS (SELECT 1 FROM [Catalog.TransactionTypes] WHERE [Type] = @transactionType)
		BEGIN
			DELETE FROM [Catalog.TransactionTypes] WHERE [Type] = @transactionType
		END

		ELSE
		BEGIN
			RETURN 'The input data is not in our records'
		END
	END

	ELSE
	BEGIN
		RETURN 'There is not any transaction type to delete'
	END
END