USE [FireFly]
GO
/****** Object:  Table [dbo].[QAPairs]    Script Date: 1/19/2024 11:13:54 PM ******/
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
