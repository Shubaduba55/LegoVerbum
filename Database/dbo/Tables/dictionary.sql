CREATE TABLE [dbo].[dictionary]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[type] VARCHAR(20) NOT NULL,
	[language_id] INT NULL,
	[tab_id] INT NULL,
	[source_id] INT NULL,
	[name] NVARCHAR(20)

	CONSTRAINT [FK_dictionary_to_language]
	FOREIGN KEY (language_id) REFERENCES [dbo].[language](id),

	CONSTRAINT [FK_dictionary_to_tab]
	FOREIGN KEY (tab_id) REFERENCES [dbo].tab(id),

	CONSTRAINT [FK_dictionary_to_source]
	FOREIGN KEY (source_id) REFERENCES [dbo].source(id),

	CONSTRAINT [CHECK_only_one_not_null]
	CHECK(
		(language_id IS NOT NULL AND tab_id IS NULL AND source_id IS NULL)
		OR
		(language_id IS NULL AND tab_id IS NOT NULL AND source_id IS NULL)
		OR
		(language_id IS NULL AND tab_id IS NULL AND source_id IS NOT NULL)
	)
	
)
