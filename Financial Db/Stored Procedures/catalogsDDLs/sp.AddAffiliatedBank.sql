CREATE PROCEDURE [sp.AddAffiliatedBank]
	@BankName varchar(30)
AS
BEGIN
	IF COALESCE(@BankName, '') = ''
	BEGIN
		INSERT INTO [Catalog.AffiliatedBanks]([Corporation Name]) VALUES (@BankName)
	END
	ELSE
	BEGIN
		RETURN 'Must to be sent some data as Associated Bank name'
	END
END