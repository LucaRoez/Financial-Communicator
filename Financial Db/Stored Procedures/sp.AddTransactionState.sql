CREATE PROCEDURE [sp.AddTransactionState]
	@stateName varchar(30),
	@description varchar(250)
AS
BEGIN
	IF @stateName <> '' OR @stateName IS NOT NULL
	BEGIN
		INSERT INTO [Catalog.TransactionStates]([State], [Description]) VALUES (@stateName, @description)
	END
	ELSE
	BEGIN
		RETURN 'Some data must be sent as the Transaction State name'
	END
END