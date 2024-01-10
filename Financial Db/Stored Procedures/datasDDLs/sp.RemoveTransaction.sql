CREATE PROCEDURE [sp.RemoveTransaction]
	@clientId BIGINT,
	@date DATETIME
AS
	IF (SELECT COUNT(Id) FROM [Data.Transactions]) > 0
	BEGIN
		IF COALESCE(@clientId, 0) = 0 AND EXISTS (SELECT 1 FROM [Data.Transactions] WHERE Client_Id = @clientId)
		BEGIN
			DELETE FROM [Data.Transactions] WHERE Client_Id = @clientId
		END

		ELSE IF @date IS NOT NULL AND EXISTS (SELECT 1 FROM [Data.Transactions] WHERE [Date] = @date)
		BEGIN
			DELETE FROM [Data.Transactions] WHERE [Date] = @date
		END
		
		ELSE
		BEGIN
			RETURN "You must enter some value, the associated client ID first or
			second the issued date, in that order."
		END
	END
	ELSE
	BEGIN
		RETURN "Our data base doesn't have any registered transaction to delete yet."
	END
