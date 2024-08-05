CREATE TABLE [dbo].[source]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[tab_id] INT NULL,
	[parent_source_id] INT NULL,
	[is_end_source] BIT NOT NULL,
	[title] NVARCHAR(100) NOT NULL,
	[description] NVARCHAR(255),
	[depth] TINYINT NOT NULL,

	CONSTRAINT FK_source_to_tab 
	FOREIGN KEY ([tab_id]) REFERENCES [dbo].[tab](id),
	
	CONSTRAINT FK_source_to_source
	FOREIGN KEY (parent_source_id) REFERENCES [dbo].[source](id),

	CONSTRAINT CHECK_either_source_or_tab_is_null CHECK (
		(parent_source_id IS NULL AND tab_id IS NOT NULL) 
		OR
		(parent_source_id IS NOT NULL AND tab_id IS NULL) 
	)
)
