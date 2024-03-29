/****** Object:  Table [dbo].[StoryMARC]    Script Date: 3/3/2024 9:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoryMARC](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StoryName] [nvarchar](50) NULL,
	[Authors] [nvarchar](50) NULL,
	[PublicationDate] [datetime2](7) NULL,
	[FormatMARC] [nvarchar](50) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[CreatedById] [int] NULL,
	[ModifiedDate] [datetime2](7) NOT NULL,
	[ModifiedById] [int] NULL,
 CONSTRAINT [PK_Stories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StoryMARC] ADD  CONSTRAINT [DF_StoryAuthors_CreatedDate]  DEFAULT (getutcdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[StoryMARC] ADD  CONSTRAINT [DF_StoryAuthors_ModifiedDate]  DEFAULT (getutcdate()) FOR [ModifiedDate]
GO
