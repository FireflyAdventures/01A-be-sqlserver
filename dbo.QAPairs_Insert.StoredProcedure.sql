/****** Object:  StoredProcedure [dbo].[QAPairs_Insert]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Thane Thompson
-- Create date: 19 JAN 2024
-- Description:  Insert one new QAPair
-- Code Reviewer:  

-- MODIFIED BY:  Thane Thompson 
-- MODIFIED DATE:  19 FEB 2024
-- Code Reviewer:
-- Note:
-- =============================================

/*  TEST DATA INSERT
DECLARE @Id int

EXEC [dbo].[QAPairs_Insert]
    @Question = 'What is the helpdesk phone number?',
    @Answer = 'Resolvely has an email helpdesk',
    @CategoryId = 1,
    @SortOrder = 3,
    @CreatedBy = 2,
    @ModifiedBy = 3,
    @Id = @Id OUTPUT

SELECT @Id
*/



CREATE PROC [dbo].[QAPairs_Insert]
    @Question NVARCHAR(255),
    @Answer NVARCHAR(2000),
	@AnswerEvaluation NVARCHAR(2000),
	@AnswerPurpose NVARCHAR(2000),
	@QuestionContext NVARCHAR(MAX),
	@QuestionDataSetsId INT,
    @CategoryId INT,
    @SortOrder INT,
    @CreatedBy INT,
    @ModifiedBy INT,
    @Id INT OUTPUT

AS
BEGIN

INSERT INTO [dbo].[QAPairs]
           (
		   [Question]
           ,[Answer]
		   ,[AnswerEvaluation]
		   ,[AnswerPurpose]
		   ,[QuestionContext]
		   ,[QuestionDataSetsId]
           ,[CategoryId]
           ,[SortOrder]
           ,[CreatedBy]
           ,[ModifiedBy]
		   )
     VALUES
           (
		   @Question
           ,@Answer
		   ,@AnswerEvaluation
		   ,@AnswerPurpose
		   ,@QuestionContext
		   ,@QuestionDataSetsId
           ,@CategoryId
           ,@SortOrder
           ,@CreatedBy
           ,@ModifiedBy
		   )
SET @Id = SCOPE_IDENTITY()

END
GO
