CREATE PROCEDURE [sp.AddTransaction]
	@date DATETIME NOT NULL,
	@clientId BIGINT NOT NULL,
	@bankId INT NOT NULL,
	@amount DECIMAL(16,6) NOT NULL,
	@typeID INT NOT NULL,
	@stateId INT NOT NULL,
	@errorId INT,
	@IBTC_Id BIGINT,
	@expirationDate DATETIME
AS
IF @date IS NOT NULL OR @clientId IS NOT NULL OR @bankId IS NOT NULL
OR @amount IS NOT NULL OR @typeID IS NOT NULL OR @stateId IS NOT NULL
OR @errorId OR @IBTC_Id OR @expirationDate
BEGIN
	INSERT INTO [Data.Transactions](
	Date, Client_Id, Bank_Id, Amount, Type_Id,
	State_Id, Error_Id, IBTC_Id, [Expiration Date])
	VALUES (
	@date, @clientId, @bankId, @amount,
	@typeID, @stateId, @errorId, @IBTC_Id, @expirationDate)
END
ELSE
BEGIN
	RETURN 'Remember introduce mandatorily its date first, then the client id,
	bank id, amount, type id, state id, error id, IBTC id and
	the expiration date if there is one, in this order.'
END