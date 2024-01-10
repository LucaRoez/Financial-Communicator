CREATE PROCEDURE [sp.RemoveInterbankTransactionCode]
	@transactionID BIGINT,
	@code VARCHAR(50)
AS
	IF (SELECT COUNT(Id) FROM [Data.InterbankTransactionCodes]) > 0
	BEGIN
		IF COALESCE(@transactionID, 0) = 0 AND EXISTS (SELECT 1 FROM [Data.InterbankTransactionCodes] WHERE Transaction_Id = @transactionID)
		BEGIN
			DELETE FROM [Data.InterbankTransactionCodes] WHERE Transaction_Id = @transactionID;
		END

		ELSE IF @code IS NOT NULL AND EXISTS (SELECT 1 FROM [Data.InterbankTransactionCodes] WHERE Code = @code)
		BEGIN
			DELETE FROM [Data.InterbankTransactionCodes] WHERE Code = @code
		END
		
		ELSE
		BEGIN
			RETURN "You must enter some value, the associated transaction ID first or
			second the issued date, in that order."
		END
	END

	ELSE
	BEGIN
		RETURN "Our data base doesn't have any registered transaction to delete yet."
	END
