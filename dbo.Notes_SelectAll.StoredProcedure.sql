/****** Object:  StoredProcedure [dbo].[Notes_SelectAll]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Notes_SelectAll]
AS 
BEGIN
	SELECT	Id
			,Title
			,Description
			,Isvisible

	FROM dbo.Notes
END
GO
