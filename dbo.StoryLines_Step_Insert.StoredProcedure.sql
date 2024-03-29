/****** Object:  StoredProcedure [dbo].[StoryLines_Step_Insert]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Thane Thompson
-- Create date: 18 JAN 2024
-- Description:  Insert new Story step
-- Code Reviewer  

-- MODIFIED BY: 
-- MODIFIED DATE:  
-- Code Reviewer: 
-- Note:
-- =============================================

/* TEST EXECUTION
-- Example values

DECLARE @NewStoryStepId INT

EXEC [dbo].[StoryLines_Step_Insert]
    @StepNum = 1, -- Example value
    @NarrativeStep = N'Introduction to the story', -- NVARCHAR(MAX)
    @Media = NULL, -- VARBINARY(MAX), assuming no media for this example
    @Question = N'What is the main theme?', -- NVARCHAR(MAX)
    @QuestionTypeID = 2,
    @GradeLevel = 5,
    @Qoption1 = N'Option 1',
    @Qoption2 = N'Option 2',
    @Qoption3 = N'Option 3',
    @Qoption4 = N'Option 4',
    @Qoption5 = N'Option 5',
    @Qoption6 = N'Option 6',
    @Qoption7 = N'Option 7',
    @Qoption8 = N'Option 8',
    @Qoption9 = N'Option 9',
    @Qoption10 = N'Extended Option 10', -- NVARCHAR(MAX)
    @CorrectAnswerOption = 3,
    @NextStepIfCorrect = 1, -- BIT (0 or 1)
    @NextStepIfWrong = 4,
    @StoryID = 123,
    @StepCCSSReference = N'CC.2.1',
    @CreatedById = 456,
    @ID = @NewStoryStepId OUTPUT -- This will capture the new ID generated

-- @NewStoryStepId contains the ID of the newly inserted story step.

PRINT 'New Story Step ID: ' + CAST(@NewStoryStepId AS NVARCHAR(10))

*/


CREATE PROC [dbo].[StoryLines_Step_Insert]
		@StepNum INT,
		@NarrativeStep NVARCHAR(MAX),
		@Media VARBINARY(MAX),
		@Question NVARCHAR(MAX),
		@QuestionTypeID INT,
		@GradeLevel INT,
		@Qoption1 NVARCHAR(50),
		@Qoption2 NVARCHAR(50),
		@Qoption3 NVARCHAR(50),
		@Qoption4 NVARCHAR(50),
		@Qoption5 NVARCHAR(50),
		@Qoption6 NVARCHAR(50),
		@Qoption7 NVARCHAR(50),
		@Qoption8 NVARCHAR(50),
		@Qoption9 NVARCHAR(50),
		@Qoption10 NVARCHAR(MAX),
		@CorrectAnswerOption INT,
		@NextStepIfCorrect BIT,
		@NextStepIfWrong INT,
		@StoryID INT,
		@StepCCSSReference NVARCHAR(50),
		@CreatedById INT,
		@ID INT OUTPUT
AS
BEGIN

	INSERT INTO [dbo].[StoryLines]
	(
		[StepNum],
		[NarrativeStep],
		[Media],
		[Question],
		[QuestionTypeID],
		[GradeLevel],
		[Qoption1],
		[Qoption2],
		[Qoption3],
		[Qoption4],
		[Qoption5],
		[Qoption6],
		[Qoption7],
		[Qoption8],
		[Qoption9],
		[Qoption10],
		[CorrectAnswerOption],
		[NextStepIfCorrect],
		[NextStepIfWrong],
		[StoryID],
		[StepCCSSReference],
		[CreatedById]
	)
	VALUES
	(
		@StepNum,
		@NarrativeStep,
		@Media,
		@Question,
		@QuestionTypeID,
		@GradeLevel,
		@Qoption1,
		@Qoption2,
		@Qoption3,
		@Qoption4,
		@Qoption5,
		@Qoption6,
		@Qoption7,
		@Qoption8,
		@Qoption9,
		@Qoption10,
		@CorrectAnswerOption,
		@NextStepIfCorrect,
		@NextStepIfWrong,
		@StoryID,
		@StepCCSSReference,
		@CreatedById
	)

	SET @ID = SCOPE_IDENTITY()

END
GO
