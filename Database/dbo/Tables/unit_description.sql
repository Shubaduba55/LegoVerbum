CREATE TABLE [dbo].[unit_description]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[vocabulary_unit_id] INT NOT NULL,
	[speech_category_id] INT NOT NULL

	CONSTRAINT [FK_unit_description_to_vocabulary_unit]
	FOREIGN KEY (vocabulary_unit_id) REFERENCES [dbo].[vocabulary_unit](id)

	CONSTRAINT [FK_unit_description_to_speech_category]
	FOREIGN KEY (speech_category_id) REFERENCES [dbo].[speech_category](id)

)
GO


CREATE TRIGGER [dbo].[Trigger_is_language_consistent]
    ON [dbo].[unit_description]
    FOR INSERT, UPDATE
    AS
    BEGIN
        SET NoCount ON;

		IF NOT EXISTS (
			SELECT 1 FROM inserted i
			JOIN vocabulary_unit vu ON vu.id = i.vocabulary_unit_id
			JOIN speech_category sc ON sc.id = i.speech_category_id
			JOIN speech_part sp ON sp.id = sc.speech_part_id
			WHERE vu.language_id = sp.language_id
		)
		BEGIN 
		RAISERROR ('Inconsistency with speech part`s language and vocabulary unit`s language has been found in one or more insertions',16,1);
		ROLLBACK TRANSACTION;
		END

    END