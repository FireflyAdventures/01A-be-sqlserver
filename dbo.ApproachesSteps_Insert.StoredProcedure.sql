/****** Object:  StoredProcedure [dbo].[ApproachesSteps_Insert]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ApproachesSteps_Insert]
    
    @ApproachName NVARCHAR(MAX),
    @ApproachId INT,
    @StepName NVARCHAR(MAX),
    @StepId INT,
    @StepDomainsId INT,
    @StepCategoryId INT,
    @StepDescription NVARCHAR(MAX),
    @StepDescriptionPromptPackage NVARCHAR(MAX),
    @StepCompletionCount INT,
    @StepNextIfCompleteTrue NVARCHAR(MAX),
    @StepNextIfCompleteFalse NVARCHAR(MAX),
    @StepNextIfInconclusive NVARCHAR(MAX),
    @CreatedBy NVARCHAR(MAX),
    @ModifiedBy NVARCHAR(MAX)
    
AS
BEGIN
    INSERT INTO [dbo].[ApproachesSteps]
    (
    
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
        [ModifiedBy]
    )
    VALUES
    (
    
        @ApproachName,
        @ApproachId,
        @StepName,
        @StepId,
        @StepDomainsId,
        @StepCategoryId,
        @StepDescription,
        @StepDescriptionPromptPackage,
        @StepCompletionCount,
        @StepNextIfCompleteTrue,
        @StepNextIfCompleteFalse,
        @StepNextIfInconclusive,
        @CreatedBy,
        @ModifiedBy
    )
END
GO
