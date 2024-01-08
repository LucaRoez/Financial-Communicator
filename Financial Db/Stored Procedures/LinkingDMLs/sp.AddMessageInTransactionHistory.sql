CREATE PROCEDURE [sp.AddMessageInTransactionHistory]
	@message varchar(255) = 0
AS
BEGIN
	IF @message IS NOT NULL OR @message <> ''
	BEGIN
		INSERT INTO [Linking.TransactionHistory](Message)
		VALUES (@message)
	END
	ELSE
	BEGIN
		RETURN 'A message must be entered.'
	END
END
