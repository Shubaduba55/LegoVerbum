CREATE TABLE [dbo].[vocabulary_unit]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[language_id] INT NOT NULL,
	[class] VARCHAR(12) NOT NULL,
	[value] NVARCHAR(80) NOT NULL,
	[pronunciation] NVARCHAR(80) NOT NULL,
	[meaning] NVARCHAR(200) NULL,
	[translation] NVARCHAR(80) NULL,
	[proficiency_level] CHAR(2) NULL,
	[state_id] INT NOT NULL,
	[user_note] NVARCHAR(255) NULL,
	[times_repeated] TINYINT NULL DEFAULT(0),
	[last_time_repeated] DATETIME NULL

	CONSTRAINT [FK_vocabulary_unit_to_language] 
	FOREIGN KEY (language_id) REFERENCES [dbo].[language](id),

    CONSTRAINT [CHECK_enum_class] CHECK ([class] IN('Word','Construction')),

	CONSTRAINT [FK_vocabulary_unit_to_state_id]
	FOREIGN KEY (state_id) REFERENCES [dbo].[state](id)

)
