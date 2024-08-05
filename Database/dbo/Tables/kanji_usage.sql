CREATE TABLE [dbo].[kanji_usage]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[vocabulary_unit_id] INT NOT NULL,
	[kanji_id] INT NOT NULL,

	CONSTRAINT [FK_kanji_usage_to_vocabulary_unit]
	FOREIGN KEY (vocabulary_unit_id) REFERENCES [dbo].[vocabulary_unit](id),

	CONSTRAINT [FK_kanji_usage_to_kanji]
	FOREIGN KEY (kanji_id) REFERENCES [dbo].[kanji](id)
)
