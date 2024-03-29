/****** Object:  StoredProcedure [dbo].[QAPairs_SelectAll]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author: Thane Thompson
-- Create date: 19 JAN 2024
-- Description:  Select all QAPairss with associated QAPairsCategories & User that created
-- Code Reviewer 

-- MODIFIED BY: 
-- MODIFIED DATE:
-- Code Reviewer:
-- Note:
-- =============================================

/* TEST EXECUTION
	EXEC QAPairs_SelectAll
*/
CREATE proc [dbo].[QAPairs_SelectAll]
AS 
BEGIN
	SELECT	q.Id
			,q.Question
			,q.Answer
			,c.Id AS QCategoryId
			,c.Name AS QCategory
			,q.SortOrder

	FROM dbo.QAPairs AS q
	INNER JOIN dbo.QAPairsCategories AS c ON q.CategoryId = c.Id
	/*Changed from to provide sorted object. Prev ORDER BY q.Id*/
	ORDER BY QCategory, q.SortOrder
END
GO
