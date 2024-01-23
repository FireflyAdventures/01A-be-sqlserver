USE [FireFly]
GO
/****** Object:  Table [dbo].[UserStudentAnswers]    Script Date: 1/19/2024 11:13:54 PM ******/
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
