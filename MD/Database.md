# How Database of the LegoVerbum is structured?

![DB Structure Draft](Images/DB%20Structure%20draft.png)

LegoVerbum's Database presumably will consinst of 2 parts: LegoVerbum's functionality DB (FDB) and Referential Translations and Meanings DB (RTMDB).

## Functionality DB
This part describes a core structure of the application through DB. The RTMDB should be connected to this Functionality DB. 

Right now I have a vague vision of how User can interact with the app. Basically, when LegoVerbum is launched, the User is presented with 2 Tabs: Sources and Dictionaries. The first one lets User create custom Tabs for different Sources (for instance, we can create Tab "Music", where we add 2 Sources: "Nirvana - Drain You" and "Mai Yamane - The Real Folk Blues". For each of them we add References(lyrics), that we may use to study English and Japanese. Note that the app is also intented to have the ability to combine multiple languages in one source). The second one lets User look at Dictionaries. I will expand on the functionalities further in the doc. 


### Entities and their description
#### 1. SourcesTab
- Purpose: To contain Sources, created by User.
#### 2. Source
- Purpose: To implicitly contain other Sources.
- Note: Self referential Entity, meaning that its FK parent_source_id reffers to id of the other Source.
- TODO: Figure out how to know that it is the END Source, that can be reference by Reference Entity.
#### 3. Reference
- Purpose: To be a basic source unit from which app derives words and phrases.
- TODO: Figure out how long it should be 
- TODO: Figure out whether it should be limited to one sentence (yes, it should be limited)
#### 4. Word
- Purpose: To be a basic learning unit which is used to train User
- Note: Must have states: Known, Learning, Leave For Later
- TODO: Work out how to have differente columns for different languages
#### 5. Phrase
Leave for future consideration
- Purpose: To be a combination of words like phrasal verb or word expression
- Note: Must have states: Known, Learning, Leave For Later
- TODO: Find out how to highlight exact symbols in the Reference
- TODO: Should I have different Phrase Entity or merge it with Word?
#### 6. WordToReference
- Purpose: To link together Word and Reference
- TODO: Find a way to connect word to the exact symbols
#### 7. Kanji
- Purpose: To be additional learning Unit for Japanese and probaly Chinese in the future
#### 8. KanjiToWord
- Purpose: To link Kanji and Word together
#### 9. PhraseToReference
Leave for future consideration
#### 10. State
- Purpose: To store learning states for learning units
- Note: Possible states: Known, Learning, Leave For Later
#### 11. Language
- Purpose: To store some generic info on each language
- TODO: Figure out what 
#### 12. Dictionary
- Purpose: To be a control element through wich Words, Kanjis and References can be retrieved by Language or by Source
- Note: Must exist 2 types of dictionaries: Language and Source dictionary.
- TODO: Implement 2 type of the dictionary
#### 13. Custom Set of Words for practicing?

## Referential Translations and Meanings DB
This section is yet to be designed. I have some ideas, however I am not sure that they will satisfy my needs. 
