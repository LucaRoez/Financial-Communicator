CREATE PROCEDURE [sp.UpdateTransactionState]
	@stateName varchar(30),
	@description varchar(250),
	@search varchar(30)
AS
BEGIN
	IF COALESCE(@stateName, '') = ''
	BEGIN
		IF COALESCE(@search, '') = ''
		BEGIN
			IF COALESCE(@description, '') = ''
			BEGIN
				UPDATE [Catalog.TransactionStates] SET [State] = @stateName, [Description] = @description WHERE [State] = @search;
			END

			ELSE
			BEGIN
				UPDATE [Catalog.TransactionStates] SET [State] = @stateName WHERE [State] = @search;
			END
		END

		ELSE
		BEGIN
			IF COALESCE(@description, '') = ''
			BEGIN
				UPDATE [Catalog.TransactionStates] SET [State] = @stateName, [Description] = @description;
			END

			ELSE
			BEGIN
				UPDATE [Catalog.TransactionStates] SET [State] = @stateName;
			END
		END
	END

	ELSE
	BEGIN
		RETURN 'Some data must be sent as the Transaction State name'
	END
END