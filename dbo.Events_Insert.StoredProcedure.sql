/****** Object:  StoredProcedure [dbo].[Events_Insert]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Thane Thompson
-- Create date: 9 FEB 2024
-- Description:  Insert new event
-- Code Reviewer  

-- MODIFIED BY: 
-- MODIFIED DATE:  
-- Code Reviewer: 
-- Note:
-- =============================================

/* TEST EXECUTION
-- Example values

EXEC [dbo].[Events_Insert]

FILL IN

*/


CREATE PROC [dbo].[Events_Insert]
		@startDate DateTime,
		@endDate DateTime,
		@title NVARCHAR(50),
		@location NVARCHAR(50),
		@description NVARCHAR(MAX),
		@createId Int,
		@modifyId Int,
		@ID INT OUTPUT
AS
BEGIN

	INSERT INTO [dbo].[Events]
	(
		[startDate],
		[endDate],
		[title],
		[location],
		[description],
		[createId],
		[modifyId]
	)
	VALUES
	(
		@startDate,
		@endDate,
		@title,
		@location,
		@description,
		@createId,
		@modifyId
	)

	SET @ID = SCOPE_IDENTITY()

END
GO
