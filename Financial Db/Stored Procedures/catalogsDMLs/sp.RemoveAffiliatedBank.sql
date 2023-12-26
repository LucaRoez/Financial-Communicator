CREATE PROCEDURE [sp.RemoveAffiliatedBank]
	@bankName varchar,
	@ID int
AS
BEGIN
	-- Check if there're actually affiliated banks already loaded
	IF (SELECT COUNT(Id) FROM [Catalog.AffiliatedBanks]) > 0
	BEGIN
		-- Check if the ID parameter exists
		IF (SELECT Id FROM [Catalog.AffiliatedBanks]) = @ID
		BEGIN
			DELETE FROM [Catalog.AffiliatedBanks] WHERE Id = @ID
		END
		ELSE
		BEGIN
		IF (SELECT [Corporation Name] FROM [Catalog.AffiliatedBanks]) = @bankName
		BEGIN
			DELETE FROM [Catalog.AffiliatedBanks] WHERE [Corporation Name] = @bankName
		END
		ELSE
		BEGIN
			RETURN 'The input data is not in our records'
		END
		END
	END
	ELSE
	BEGIN
		RETURN 'There is no associeted banks to delete'
	END
END
