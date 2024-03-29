/****** Object:  StoredProcedure [dbo].[StoryLines_Step_SelectAll]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[StoryLines_Step_SelectAll]
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
END
GO
