USE [FireFly]
GO
/****** Object:  Table [dbo].[StoryLines]    Script Date: 1/19/2024 11:13:54 PM ******/
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
ALTER TABLE [dbo].[StoryLines] ADD  CONSTRAINT [DF_StoryLines_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[StoryLines] ADD  CONSTRAINT [DF_StoryLines_ModifiedDate]  DEFAULT (getutcdate()) FOR [ModifiedDate]
GO
