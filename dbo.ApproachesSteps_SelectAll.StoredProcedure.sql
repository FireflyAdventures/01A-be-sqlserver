/****** Object:  StoredProcedure [dbo].[ApproachesSteps_SelectAll]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ApproachesSteps_SelectAll]
AS
BEGIN
    SELECT 
        [Id],
        [ApproachName],
        [ApproachId],
        [StepName],
        [StepId],
        [StepDomainsId],
        [StepCategoryId],
        [StepDescription],
        [StepDescriptionPromptPackage],
        [StepCompletionCount],
        [StepNextIfCompleteTrue],
        [StepNextIfCompleteFalse],
        [StepNextIfInconclusive],
        [CreatedBy],
        [CreatedDate],
        [ModifiedBy],
        [ModifiedDate]
    FROM 
        [dbo].[ApproachesSteps]
END
GO
