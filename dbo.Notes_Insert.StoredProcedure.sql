/****** Object:  StoredProcedure [dbo].[Notes_Insert]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Notes_Insert]
    @Title NVARCHAR(250),
    @Description NVARCHAR(MAX),
    @Isvisible BIT,
    @Id INT OUTPUT

AS
BEGIN

INSERT INTO [dbo].[Notes]
           (
		   [Title]
           ,[Description]
           ,[Isvisible]
		   )
		   OUTPUT INSERTED.Id
     VALUES
           (
		   @Title
           ,@Description
           ,@Isvisible
		   )
SET @Id = SCOPE_IDENTITY();

END
GO
