/****** Object:  Table [dbo].[ArchiveOfProblemSolvingDesigns]    Script Date: 3/3/2024 9:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArchiveOfProblemSolvingDesigns](
	[Id] [int] NOT NULL,
	[StateCurrent] [nvarchar](255) NOT NULL,
	[StateDesired] [nvarchar](255) NOT NULL,
	[Problem] [nvarchar](255) NOT NULL,
	[Approach] [nvarchar](255) NOT NULL,
	[Plan] [nvarchar](255) NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[ModifiedBy] [int] NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
