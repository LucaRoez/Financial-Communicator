CREATE PROCEDURE [sp.UpdateAffiliatedBank]
	@bankName varchar(30),
	@search varchar(30)
AS
BEGIN
	IF COALESCE(@bankName, '') = ''
	BEGIN
		IF COALESCE(@search, '') = ''
		BEGIN
			UPDATE [Catalog.AffiliatedBanks] SET [Corporation Name] = @bankName WHERE [Corporation Name] = @search;
		END

		ELSE
		BEGIN
			UPDATE [Catalog.AffiliatedBanks] SET [Corporation Name] = @bankName;
		END
	END

	ELSE
	BEGIN
		RETURN 'Must to be sent some data as Associated Bank name'
	END
END
