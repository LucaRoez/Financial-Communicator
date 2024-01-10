CREATE TRIGGER AddTransactionHistory
ON [Data.Transactions]
AFTER INSERT
AS
BEGIN
	INSERT INTO [Linking.TransactionHistory](Transaction_Id, State_Id, Date)
	SELECT
		T.Id,
		S.State_Id,
		GETDATE() as Date
	FROM inserted T
	RIGHT JOIN
		[Catalog.TransactionStates] S ON S.State = 'Requested'	-- verbose way to put this value
END;