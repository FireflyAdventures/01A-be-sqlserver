/****** Object:  Table [dbo].[Events]    Script Date: 3/3/2024 9:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[startDate] [datetime2](7) NOT NULL,
	[endDate] [datetime2](7) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[location] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[createDate] [datetime2](7) NOT NULL,
	[createId] [int] NOT NULL,
	[modifyDate] [datetime2](7) NOT NULL,
	[modifyId] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Events] ON 

INSERT [dbo].[Events] ([id], [startDate], [endDate], [title], [location], [description], [createDate], [createId], [modifyDate], [modifyId]) VALUES (1, CAST(N'2024-01-24T00:00:00.0000000' AS DateTime2), CAST(N'2024-03-05T00:00:00.0000000' AS DateTime2), N'Task', N'Remote', N'Do Work', CAST(N'2024-02-09T00:00:00.0000000' AS DateTime2), 1, CAST(N'2024-02-09T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Events] ([id], [startDate], [endDate], [title], [location], [description], [createDate], [createId], [modifyDate], [modifyId]) VALUES (3, CAST(N'2024-02-04T00:00:00.0000000' AS DateTime2), CAST(N'2024-06-04T00:00:00.0000000' AS DateTime2), N'Task 2', N'Remote', N'More Work', CAST(N'2024-02-09T00:00:00.0000000' AS DateTime2), 1, CAST(N'2024-02-09T00:00:00.0000000' AS DateTime2), 1)
INSERT [dbo].[Events] ([id], [startDate], [endDate], [title], [location], [description], [createDate], [createId], [modifyDate], [modifyId]) VALUES (4, CAST(N'2024-08-06T00:00:00.0000000' AS DateTime2), CAST(N'2024-09-05T00:00:00.0000000' AS DateTime2), N'Task 2', N'Onsite', N'Present WOrk', CAST(N'2024-02-09T00:00:00.0000000' AS DateTime2), 1, CAST(N'2024-02-09T00:00:00.0000000' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Events] OFF
GO
