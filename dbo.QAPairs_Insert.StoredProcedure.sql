USE [FireFly]
GO
/****** Object:  StoredProcedure [dbo].[QAPairs_Insert]    Script Date: 1/19/2024 11:13:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Thane Thompson
-- Create date: 19 JAN 2024
-- Description:  Insert one new QAPair
-- Code Reviewer:  

-- MODIFIED BY: 
-- MODIFIED DATE:
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
           ,[CategoryId]
           ,[SortOrder]
           ,[CreatedBy]
           ,[ModifiedBy]
		   )
     VALUES
           (
		   @Question
           ,@Answer
           ,@CategoryId
           ,@SortOrder
           ,@CreatedBy
           ,@ModifiedBy
		   )
SET @Id = SCOPE_IDENTITY()

END


/*TEST BUILD

CREATE PROC [dbo].[QAPairs_Insert]
    @Question NVARCHAR(255),
    @Answer NVARCHAR(2000),
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
           ,[CategoryId]
           ,[SortOrder]
           ,[CreatedBy]
           ,[ModifiedBy]
		   )
     VALUES
           (
		   @Question
           ,@Answer
           ,@CategoryId
           ,@SortOrder
           ,@CreatedBy
           ,@ModifiedBy
		   )
SET @Id = SCOPE_IDENTITY()

END

*/
GO
