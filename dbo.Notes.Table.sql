/****** Object:  Table [dbo].[Notes]    Script Date: 3/3/2024 9:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notes](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Isvisible] [bit] NOT NULL,
 CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Notes] ([Id], [Title], [Description], [Isvisible]) VALUES (N'63de0c57-afcf-45d2-9b3b-20966fd8c5d2', N'More notes', N'More desc', 1)
INSERT [dbo].[Notes] ([Id], [Title], [Description], [Isvisible]) VALUES (N'e52a7a6d-6ead-456c-9d6c-7aa4ca66dd5c', N'Note on story', N'Observeation of note', 1)
INSERT [dbo].[Notes] ([Id], [Title], [Description], [Isvisible]) VALUES (N'5f24f3a8-181f-488b-aa7c-c290b1b9be7a', N'Note on story', N'Observeation of note', 1)
GO
ALTER TABLE [dbo].[Notes] ADD  CONSTRAINT [DF_Note_Id]  DEFAULT (newid()) FOR [Id]
GO
