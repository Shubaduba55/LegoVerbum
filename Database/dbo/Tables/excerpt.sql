CREATE TABLE [dbo].[excerpt]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[source_id] INT NOT NULL,
	[text] NVARCHAR(180) NOT NULL,
	[topic] NVARCHAR(30) NULL,
	[user_translation] NVARCHAR(180) NULL,
	[user_note] NVARCHAR(255) NULL

	CONSTRAINT FK_excerpt_to_source 
	FOREIGN KEY (source_id) REFERENCES [dbo].[source](id),

)

GO

CREATE TRIGGER [dbo].[Trigger_is_end_source]
ON [dbo].[excerpt]
FOR INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Ensure the trigger handles multiple rows
    IF NOT EXISTS (
        SELECT 1 
        FROM inserted i
        JOIN source s ON i.source_id = s.id
        WHERE s.is_end_source = 1
    )
    BEGIN
        -- Optionally, use RAISEERROR to generate an error message
        RAISERROR ('No data was inserted because none of the sources are marked as end sources.', 16, 1);
        ROLLBACK TRANSACTION;
    END

END;
GO