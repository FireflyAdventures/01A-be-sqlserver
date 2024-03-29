/****** Object:  Table [dbo].[ApproachesCategories]    Script Date: 3/3/2024 9:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApproachesCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ApproachesCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ApproachesCategories] ON 

INSERT [dbo].[ApproachesCategories] ([Id], [Name]) VALUES (1, N'Recursion or Iteration')
INSERT [dbo].[ApproachesCategories] ([Id], [Name]) VALUES (2, N'Procedural or Declarative (Non-Procedural)')
INSERT [dbo].[ApproachesCategories] ([Id], [Name]) VALUES (3, N'Serial or Parallel or Distributed')
INSERT [dbo].[ApproachesCategories] ([Id], [Name]) VALUES (4, N'Deterministic or Non-Deterministic')
INSERT [dbo].[ApproachesCategories] ([Id], [Name]) VALUES (5, N'Exact or Approximate')
INSERT [dbo].[ApproachesCategories] ([Id], [Name]) VALUES (6, N'Greedy Method')
INSERT [dbo].[ApproachesCategories] ([Id], [Name]) VALUES (7, N'Divide and Conquer')
INSERT [dbo].[ApproachesCategories] ([Id], [Name]) VALUES (8, N'Dynamic Programming')
INSERT [dbo].[ApproachesCategories] ([Id], [Name]) VALUES (9, N'Linear Programming')
INSERT [dbo].[ApproachesCategories] ([Id], [Name]) VALUES (10, N'Reduction (Transform and Conquer)')
SET IDENTITY_INSERT [dbo].[ApproachesCategories] OFF
GO
