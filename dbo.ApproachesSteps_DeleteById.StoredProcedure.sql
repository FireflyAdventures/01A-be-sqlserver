/****** Object:  StoredProcedure [dbo].[ApproachesSteps_DeleteById]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ApproachesSteps_DeleteById]
    @Id INT
AS
BEGIN
    DELETE FROM [dbo].[ApproachesSteps]
    WHERE [Id] = @Id
END
GO
