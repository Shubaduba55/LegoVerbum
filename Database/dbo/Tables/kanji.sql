CREATE TABLE [dbo].[kanji]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[state_id] INT,
	[text] NCHAR(1) NOT NULL,
	[meaning] VARCHAR(20) NOT NULL,
	[jlpt_level] CHAR(2) NULL,
	[user_note] VARCHAR(50) NULL,

	CONSTRAINT [FK_kanji_to_state]
	FOREIGN KEY (state_id) REFERENCES [dbo].[state](id)
)
