/****** Object:  StoredProcedure [dbo].[QAPairs_Delete]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Thane Thompson
-- Create date: 19 JAN 2024
-- Description:  Delete one QAPair by QAPairId
-- Code Reviewer: 

-- MODIFIED BY:   
-- MODIFIED DATE: 
-- Code Reviewer: 
-- Note:
-- =============================================

CREATE proc [dbo].[QAPairs_Delete]
@Id int

AS

/* TEST
	Declare @Id int= 1, /*CHANGE VALUE*/
	Execute dbo.QAPairs_Delete
*/

BEGIN

DELETE 

FROM dbo.QAPairs
WHERE Id = @Id;

END
GO
