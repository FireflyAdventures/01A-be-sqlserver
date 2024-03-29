USE [master]
GO
/****** Object:  Database [FireFly]    Script Date: 1/19/2024 11:10:10 PM ******/
CREATE DATABASE [FireFly]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FireFly', FILENAME = N'/var/opt/mssql/data/FireFly.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%),
( NAME = N'FireFlies', FILENAME = N'/var/opt/mssql/data/FireFlies.ndf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'FireFly_log', FILENAME = N'/var/opt/mssql/data/FireFly_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [FireFly] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FireFly].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FireFly] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FireFly] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FireFly] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FireFly] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FireFly] SET ARITHABORT OFF 
GO
ALTER DATABASE [FireFly] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FireFly] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FireFly] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FireFly] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FireFly] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FireFly] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FireFly] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FireFly] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FireFly] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FireFly] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FireFly] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FireFly] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FireFly] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FireFly] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FireFly] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FireFly] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FireFly] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FireFly] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FireFly] SET  MULTI_USER 
GO
ALTER DATABASE [FireFly] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FireFly] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FireFly] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FireFly] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FireFly] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FireFly] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [FireFly] SET QUERY_STORE = OFF
GO
USE [FireFly]
GO
/****** Object:  Table [dbo].[QAPairs]    Script Date: 1/19/2024 11:10:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QAPairs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](255) NOT NULL,
	[Answer] [nvarchar](2000) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedBy] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QAPairsCategories]    Script Date: 1/19/2024 11:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QAPairsCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_QAPairsCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoryLines]    Script Date: 1/19/2024 11:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoryLines](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StepNum] [int] NOT NULL,
	[NarrativeStep] [nvarchar](max) NOT NULL,
	[Media] [varbinary](max) NULL,
	[Question] [nvarchar](max) NOT NULL,
	[QuestionTypeID] [int] NOT NULL,
	[GradeLevel] [int] NOT NULL,
	[Qoption1] [nvarchar](50) NOT NULL,
	[Qoption2] [nvarchar](50) NOT NULL,
	[Qoption3] [nvarchar](50) NULL,
	[Qoption4] [nvarchar](50) NULL,
	[Qoption5] [nvarchar](50) NULL,
	[Qoption6] [nvarchar](50) NULL,
	[Qoption7] [nvarchar](50) NULL,
	[Qoption8] [nvarchar](50) NULL,
	[Qoption9] [nvarchar](50) NULL,
	[Qoption10] [nvarchar](max) NULL,
	[CorrectAnswerOption] [int] NOT NULL,
	[IsStudentCorrect] [bit] NULL,
	[NextStepIfCorrect] [int] NULL,
	[NextStepIfWrong] [int] NULL,
	[StoryID] [int] NOT NULL,
	[StepCCSSReference] [nvarchar](50) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedById] [int] NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedById] [int] NULL,
 CONSTRAINT [PK_StoryLines] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoryMARC]    Script Date: 1/19/2024 11:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoryMARC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StoryName] [nvarchar](50) NULL,
	[Authors] [nvarchar](50) NULL,
	[PublicationDate] [datetime2](7) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedById] [int] NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedById] [int] NULL,
 CONSTRAINT [PK_Stories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoryQuestionCategories]    Script Date: 1/19/2024 11:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoryQuestionCategories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_QuestionTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserStudentAnswers]    Script Date: 1/19/2024 11:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserStudentAnswers](
	[Id] [int] NULL,
	[StoryId] [int] NULL,
	[UseDate] [datetime2](7) NULL,
	[QuestionId] [int] NULL,
	[IsStudentCorrect] [bit] NULL,
	[CreatedDate] [datetime2](7) NULL,
	[CreatedById] [int] NULL,
	[ModifiedDate] [datetime2](7) NULL,
	[ModifiedById] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StoryLines] ADD  CONSTRAINT [DF_StoryLines_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[StoryLines] ADD  CONSTRAINT [DF_StoryLines_ModifiedDate]  DEFAULT (getutcdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[StoryMARC] ADD  CONSTRAINT [DF_StoryAuthors_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[StoryMARC] ADD  CONSTRAINT [DF_StoryAuthors_ModifiedDate]  DEFAULT (getutcdate()) FOR [ModifiedDate]
GO
/****** Object:  StoredProcedure [dbo].[QAPairs_Delete]    Script Date: 1/19/2024 11:10:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Thane Thompson
-- Create date: 19 JAN 2024
-- Description:  Delete one QAPair by QAPairId
-- Code Reviewer: 

-- MODIFIED BY:   
-- MODIFIED DATE: 
-- Code Reviewer: 
-- Note:
-- =============================================

CREATE proc [dbo].[QAPairs_Delete]
@Id int

AS

/* TEST
	Declare @Id int= 1, /*CHANGE VALUE*/
	Execute dbo.QAPairs_Delete
*/

BEGIN

DELETE 

FROM dbo.QAPairs
WHERE Id = @Id;

END
GO
/****** Object:  StoredProcedure [dbo].[QAPairs_Insert]    Script Date: 1/19/2024 11:10:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[QAPairs_Select_ByCategoryId]    Script Date: 1/19/2024 11:10:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[QAPairs_SelectAll]    Script Date: 1/19/2024 11:10:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[QAPairs_Update]    Script Date: 1/19/2024 11:10:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[StoryLines_BibloRef_SelectAll]    Script Date: 1/19/2024 11:10:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[StoryLines_Step_Insert]    Script Date: 1/19/2024 11:10:12 PM ******/
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
/****** Object:  StoredProcedure [dbo].[StoryLines_Step_SelectAll]    Script Date: 1/19/2024 11:10:12 PM ******/
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
USE [master]
GO
ALTER DATABASE [FireFly] SET  READ_WRITE 
GO
