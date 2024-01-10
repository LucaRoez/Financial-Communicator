CREATE PROCEDURE [sp.AddInterbankTransactionCode]
	@transactionId BIGINT NOT NULL,
	@code VARCHAR(50) NOT NULL
AS
BEGIN
	IF @transactionId <> 0 OR @transactionId IS NOT NULL AND @code <> 0 OR @code IS NOT NULL
	BEGIN
		INSERT INTO [Data.InterbankTransactionCodes](Transaction_Id, Code) VALUES (@transactionId, @code)
	END
	ELSE
	BEGIN
		RETURN 'Both transaction id and interbank transaction code must be inserted.'
	END
END
