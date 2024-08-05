CREATE PROCEDURE [dbo].[drop_database]
AS
	DROP TABLE IF EXISTS dbo.unit_description;
	DROP TABLE IF EXISTS dbo.speech_category;
	DROP TABLE IF EXISTS dbo.speech_part;

	DROP TABLE IF EXISTS dbo.kanji_usage;
	DROP TABLE IF EXISTS dbo.kanji;

	DROP TABLE IF EXISTS dbo.unit_usage;

	DROP TABLE IF EXISTS dbo.vocabulary_unit;
	DROP TABLE IF EXISTS dbo.[state];
	
	DROP TABLE IF EXISTS dbo.dictionary;
	DROP TABLE IF EXISTS dbo.[language];

	DROP TABLE IF EXISTS dbo.excerpt;
	DROP TABLE IF EXISTS dbo.[source];
	DROP TABLE IF EXISTS dbo.tab;

	
RETURN 0
