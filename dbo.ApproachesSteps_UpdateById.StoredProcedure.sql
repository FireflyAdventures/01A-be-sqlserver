/****** Object:  StoredProcedure [dbo].[ApproachesSteps_UpdateById]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ApproachesSteps_UpdateById]
    @Id INT,
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
    @ModifiedBy NVARCHAR(MAX),
    @ModifiedDate DATETIME
AS
BEGIN
    UPDATE [dbo].[ApproachesSteps]
    SET 
        [ApproachName] = @ApproachName,
        [ApproachId] = @ApproachId,
        [StepName] = @StepName,
        [StepId] = @StepId,
        [StepDomainsId] = @StepDomainsId,
        [StepCategoryId] = @StepCategoryId,
        [StepDescription] = @StepDescription,
        [StepDescriptionPromptPackage] = @StepDescriptionPromptPackage,
        [StepCompletionCount] = @StepCompletionCount,
        [StepNextIfCompleteTrue] = @StepNextIfCompleteTrue,
        [StepNextIfCompleteFalse] = @StepNextIfCompleteFalse,
        [StepNextIfInconclusive] = @StepNextIfInconclusive,
        [ModifiedBy] = @ModifiedBy,
        [ModifiedDate] = @ModifiedDate
    WHERE 
        [Id] = @Id
END
GO
