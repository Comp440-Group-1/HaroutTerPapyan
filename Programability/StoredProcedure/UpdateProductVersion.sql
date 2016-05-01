-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE UpdateProductVersion
	-- Add the parameters for the stored procedure here
	@ProductId int,
	@PlatformId int,
	@ReleaseId decimal(2,1),
	@ProductVersionId decimal(2,1)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	BEGIN TRY
		UPDATE ReleaseVersion SET ProductVersionId = @ProductVersionId
		WHERE ProductId = @ProductId AND ReleaseId = @ReleaseId AND PlatformId = @PlatformId
	END TRY
	BEGIN CATCH
		PRINT 'Not a valid version number'
	END CATCH
END
GO

Execute UpdateProductVersion 1,1,1.1,1.3
