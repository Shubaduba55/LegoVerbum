CREATE TABLE [dbo].[language]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[native_name] NVARCHAR(25) NULL,
	[english_name] VARCHAR(25) NOT NULL,
	[iso_639_3] CHAR(3) NOT NULL
)
