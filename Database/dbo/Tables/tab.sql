CREATE TABLE [dbo].[tab]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[title] NVARCHAR(50) NOT NULL,
	[creation_date] DATE NOT NULL,
	[description] NVARCHAR(255) NULL
)
