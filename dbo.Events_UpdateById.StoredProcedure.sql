/****** Object:  StoredProcedure [dbo].[Events_UpdateById]    Script Date: 3/3/2024 9:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Thane Thompson
-- Create date: 9 FEB 2024
-- Description:  Update an event by ID
-- Code Reviewer  

-- MODIFIED BY: 
-- MODIFIED DATE:  
-- Code Reviewer: 
-- Note:
-- =============================================

/* TEST EXECUTION
-- Example values

EXEC [dbo].[Events_UpdateById]
    @ID = 12345,
    @startDate = '2024-02-09 08:00:00',
    @endDate = '2024-02-09 17:00:00',
    @title = 'Updated Event Title',
    @location = 'Updated Event Location',
    @description = 'Updated Event Description',
    @modifyDate = GETDATE(),
    @modifyId = 456
*/

CREATE PROC [dbo].[Events_UpdateById]
    @ID INT,
    @startDate DateTime,
    @endDate DateTime,
    @title NVARCHAR(50),
    @location NVARCHAR(50),
    @description NVARCHAR(MAX),
    @modifyDate DateTime,
    @modifyId Int
AS
BEGIN
    UPDATE [dbo].[Events]
    SET
        [startDate] = @startDate,
        [endDate] = @endDate,
        [title] = @title,
        [location] = @location,
        [description] = @description,
        [modifyDate] = @modifyDate,
        [modifyId] = @modifyId
    WHERE
        [ID] = @ID
END
GO
