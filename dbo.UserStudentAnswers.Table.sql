/****** Object:  Table [dbo].[UserStudentAnswers]    Script Date: 3/3/2024 9:17:52 PM ******/
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
