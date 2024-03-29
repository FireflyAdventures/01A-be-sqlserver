/****** Object:  StoredProcedure [dbo].[StoryLines_Step_SelectByStoryIdStepId]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Thane Thompson
-- Create date: 28 JAN 2024
-- Description:	Gets a single story step.  SelectById
-- =============================================

/* TEST
	Declare @Id =  1,
	Execute dbo.StoryLines_Step_SelectByStoryIdStepId
*/

CREATE PROCEDURE [dbo].[StoryLines_Step_SelectByStoryIdStepId]
(
@StoryID INT
,@ID INT
)

AS 
BEGIN
	SELECT 
		ID
		,StepNum
		,NarrativeStep
		,Media
		,Question
		,QuestionTypeID
		,GradeLevel
		,Qoption1
		,Qoption2
		,Qoption3
		,Qoption4
		,Qoption5
		,Qoption6
		,Qoption7
		,Qoption8
		,Qoption9
		,Qoption10
		,CorrectAnswerOption
		,IsStudentCorrect
		,NextStepIfCorrect
		,NextStepIfWrong
		,StoryID
		,StepCCSSReference
		,CreatedDate
		,CreatedById
		,ModifiedDate
		,ModifiedById

	FROM dbo.StoryLines
	WHERE StoryID = @StoryID and ID = @ID
END
GO
