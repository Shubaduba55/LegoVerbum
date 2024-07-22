# LegoVerbum App Ideas

## Problem
The LegoVerbum App aims to solve the problem I encountered during learning Japanese and English.
Oftentimes, I may encounter unknown vocabulary in the book or manga I read. Usually to learn it
you have to manually writedown new material, understand it, use and memorize. It takes time to go
through with everything. Besides, keeping info in the physical form (vocabulary notebooks) can be
not very convenient in the long-term run. 

## Goal
Main goal of this app is to make the process of learning language from external sources easier. 
By sources I mean literature (e.g. books, manga), music lyrics, movies (script, dialogue) etc.

## How to achieve this goal?
Mentioned problem can be resolved through digitalization of personal dictionary. This is a core
element of the App around which new functionalities can be developed. 

## Hierarchy
Due to heavy reliance on sources, the MVP version of the LegoVerbum App must be able to create 
source themed dictionaries. Within dictionary there can be established a hierachy of the source
(example: Book Name -> Chapter -> Page; Manga Name -> Chapter -> Page). On the end node of the
hierachy User must be able to add actual reference text (a paragraph, a sentence, a phrase), 
from which App with the help of the User retrieves the words of their interest and adds them to 
the Dictionary.


## MVP requirements 
1. Create Source themed Dictionary (Displayed through Tab).

1. User can: Add Tab for storing sources
2. Add hierarchy for Source (sub sources).
3. Add final reference for the Source Tab. 
4. Get data from the reference and add it to the dictionary. (words or phrases)
5. Add notes to the words or phrases. 
6. Review dictionary itself (all of the data, based on the page active: main, source, subsource)
5. Mark words that you know?
6. Add phrases (combination of words) 
7. Practice your knowledge with: review? repetion of words, forward and backward translation. The practice button must be available with all (усім) dictionary, source dictionary and maybe its subsources. 

### Maybe:
1. Add chunk of text for word analysis based on your knowledge. 
2. Create a subset of words to practice with? 

## For now
- figure out how the database will work. What kind of db should I use? Think about entities. 
- Think on the classes, interfaces


## Future possibilities
It would be great to make this app support reading books and manga, but this turns it into a reading
app, which I do not intend right now.

In future LegoVerbum may also be able to use SpeechToText and ImageToText technologies for achieving
goals of learning.