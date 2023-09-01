
﻿CREATE TABLE [dbo].[FaqTable]
(
	[userId] INT NOT NULL , 
    [Timestamp] TIME NULL, 
    [Question] NVARCHAR(5000) NULL, 
    [Answer] NVARCHAR(5000) NULL, 
    [Intent] NVARCHAR(5000) NULL, 
    [Confidence Score] INT NULL
)
