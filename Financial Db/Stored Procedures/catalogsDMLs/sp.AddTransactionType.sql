CREATE PROCEDURE [sp.AddTransactionType]
	@transactionType varchar(30)
AS
BEGIN
	IF @transactionType <> '' OR @transactionType IS NOT NULL
	BEGIN
		INSERT INTO [Catalog.TransactionTypes]([Type]) VALUES (@transactionType)
	END
	ELSE
	BEGIN
		RETURN 'Some data must be sent as the Transaction Type name'
	END
END