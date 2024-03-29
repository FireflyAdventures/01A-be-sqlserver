/****** Object:  Table [dbo].[Approaches]    Script Date: 3/3/2024 9:17:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Approaches](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[DomainId] [int] NULL,
	[ReferencesId] [int] NULL,
	[ImplementationMethodId] [int] NULL,
	[DesignMethodId] [int] NULL,
	[OtherClassificationId] [int] NULL,
 CONSTRAINT [PK_Approaches] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
