/****** Object:  StoredProcedure [dbo].[StoryLines_BibloRef_SelectAll]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Thane Thompson
-- Create date: 18 JAN 2024
-- Description:  Select all Stories with associated StoryAuthors & StoryQuestionCategories
-- Code Reviewer  

-- MODIFIED BY: 
-- MODIFIED DATE:  
-- Code Reviewer: 
-- Note:
-- =============================================

/* TEST EXECUTION
	EXEC StoryLines_SelectAll
*/
CREATE proc [dbo].[StoryLines_BibloRef_SelectAll]
AS 
BEGIN
	SELECT 
		s.ID AS storyID
		,s.StepNum
		,s.NarrativeStep
		,s.Media
		,s.Question
		,s.QuestionTypeID
		,s.GradeLevel
		,s.Qoption1
		,s.Qoption2
		,s.Qoption3
		,s.Qoption4
		,s.Qoption5
		,s.Qoption6
		,s.Qoption7
		,s.Qoption8
		,s.Qoption9
		,s.Qoption10
		,s.CorrectAnswerOption
		,s.IsStudentCorrect
		,s.NextStepIfCorrect
		,s.NextStepIfWrong
		,s.StoryID
		,s.StepCCSSReference
		,s.CreatedDate
		,s.CreatedById
		,s.ModifiedDate
		,s.ModifiedById
		,c.ID AS CategoryId
		,c.Name AS CategoryName
		,a.Id
		,a.StoryName
		,a.Authors
		,a.PublicationDate
		,a.CreatedDate
		,a.CreatedById
		,a.ModifiedDate
		,a.ModifiedById

	FROM dbo.StoryLines AS s 
	INNER JOIN dbo.StoryQuestionCategories AS c ON s.QuestionTypeID = c.ID
	INNER JOIN dbo.StoryMARC AS a ON s.StoryId = a.ID
	ORDER BY s.storyID, s.StepNum
END
GO
