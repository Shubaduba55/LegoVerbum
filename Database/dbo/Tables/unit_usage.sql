CREATE TABLE [dbo].[unit_usage]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[excerpt_id] INT NOT NULL,
	[vocabulary_unit_id] int NOT NULL, 
	[start] TINYINT NOT NULL,
	[end] TINYINT NOT NULL

	CONSTRAINT [FK_unit_usage_to_excerpt] 
	FOREIGN KEY (excerpt_id) REFERENCES [dbo].[excerpt](id),

	CONSTRAINT [FK_unit_usage_to_vocabulary_unit] 
	FOREIGN KEY (vocabulary_unit_id) REFERENCES [dbo].[vocabulary_unit](id),

	CONSTRAINT [CHECK_start_is_less_than_end]
	CHECK ([start] <= [end])

)


GO

CREATE TRIGGER [dbo].[Trigger_end_id_is_less_than_excerpt_size]
    ON [dbo].[unit_usage]
    FOR INSERT, UPDATE
    AS
    BEGIN
        SET NoCount ON;

		 -- Check if any row violates the condition
		IF EXISTS (
			SELECT 1
			FROM inserted i
			JOIN excerpt e ON e.id = i.excerpt_id
			WHERE i.[end] > LEN(e.text)
		)
		BEGIN
			-- Raise an error for all problematic rows
			RAISERROR (
				'One or more rows have an end id that exceeds the length of the corresponding excerpt.',
				16,
				1
			);
        
			-- Optionally, you can use a rollback to revert changes
			ROLLBACK TRANSACTION;
		END

    END


