CREATE PROCEDURE [sp.RemoveAffiliatedBank]
	@bankName varchar,
	@ID int
AS
BEGIN
	-- Check if there're actually affiliated banks already loaded
	IF (SELECT COUNT(Id) FROM [Catalog.AffiliatedBanks]) > 0
	BEGIN
		-- Check if the ID parameter exists
		IF EXISTS (SELECT 1 FROM [Catalog.AffiliatedBanks] WHERE Id = @ID)
		BEGIN
			DELETE FROM [Catalog.AffiliatedBanks] WHERE Id = @ID
		END

		ELSE IF EXISTS (SELECT 1 FROM [Catalog.AffiliatedBanks] WHERE [Corporation Name] = @bankName)
		BEGIN
			DELETE FROM [Catalog.AffiliatedBanks] WHERE [Corporation Name] = @bankName;
		END

		ELSE
		BEGIN
			RETURN 'The input data is not in our records'
		END
	END

	ELSE
	BEGIN
		RETURN 'There is no associeted banks to delete'
	END
END
