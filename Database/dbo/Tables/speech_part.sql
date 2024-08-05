CREATE TABLE [dbo].[speech_part]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[language_id] INT NOT NULL,
	[name] NVARCHAR(30) NOT NULL, 
	[english_name] VARCHAR(30)
	 
	CONSTRAINT [FK_speech_part_to_language] 
	FOREIGN KEY ([language_id]) REFERENCES [dbo].[language](id)
)
