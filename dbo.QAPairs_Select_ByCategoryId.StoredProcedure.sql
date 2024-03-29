/****** Object:  StoredProcedure [dbo].[QAPairs_Select_ByCategoryId]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Thane Thompson
-- Create date: 19 JAN 2024
-- Description:  Select QAPairs by a category by category ID.
-- Code Reviewer: 

-- MODIFIED BY: author
-- MODIFIED DATE:12/1/2020
-- Code Reviewer:
-- Note:
-- =============================================

/* TEST
	Declare @Id int= 1,
	Execute dbo.QAPairs_SelectById
*/

CREATE proc [dbo].[QAPairs_Select_ByCategoryId]
@CategoryId int

AS
BEGIN

SELECT 
	q.Id
	,q.Question
	,q.Answer
	,c.Id AS QCategoryId
	,c.Name AS QCategory
	,q.SortOrder


FROM dbo.QAPairs AS q
INNER JOIN dbo.QAPairsCategories AS c ON q.CategoryId = c.Id
WHERE q.CategoryId = @CategoryId

END



/*  FULL TEST
DECLARE
@Id INT = 1

SELECT 
	q.Id
	,q.Question
	,q.Answer
	,q.CategoryId
	,q.SortOrder
	,q.DateCreated
	,q.DateModified
	,q.CreatedBy
	,q.ModifiedBy
	,c.Id
	,c.Name AS QCategory

FROM dbo.QAPairs AS q
INNER JOIN dbo.QAPairsCategories AS c ON q.CategoryId = c.Id
WHERE q.CategoryId = @Id




*/
GO
