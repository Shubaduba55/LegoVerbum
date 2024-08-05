CREATE TABLE [dbo].[speech_category]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[speech_part_id] INT NOT NULL, 
	[name] NVARCHAR(30) NOT NULL, 
	[english_name] VARCHAR(30)
	 
	CONSTRAINT [FK_speech_category_to_speech_part] 
	FOREIGN KEY ([speech_part_id]) REFERENCES [dbo].[speech_part](id)

)
