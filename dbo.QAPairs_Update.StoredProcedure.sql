/****** Object:  StoredProcedure [dbo].[QAPairs_Update]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Thane Thompson
-- Create date: 19 JAN 2024
-- Description:  Update one QAPair with new data
-- Code Reviewer: 

-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================

CREATE proc [dbo].[QAPairs_Update]
	(
	@Id INT
	,@Question NVARCHAR(255)
	,@Answer NVARCHAR (2000)
	,@CategoryId INT
	,@SortOrder INT
	,@ModifiedBy INT
	)
AS 
/* TEST
	Declare 
		@Id int = 5
		,@Question nvarchar(255) = '2 x Question UPdater'
		,@Answer nvarchar(200) = 'Updated Answer'
		,@CategoryId int = 1
		,@SortOrder int = 4
		,@ModifiedBy int = 1
	Execute dbo.QAPairs_Update
		@Id
		,@Question
		,@Answer
		,@CategoryId
		,@SortOrder
		,@ModifiedBy
*/
BEGIN
	UPDATE dbo.QAPairs
	SET 	
		Question = @Question
		,Answer = @Answer
		,CategoryId = @CategoryId
		,SortOrder = @SortOrder
		,ModifiedBy = @ModifiedBy
	WHERE Id = @Id
END
GO
