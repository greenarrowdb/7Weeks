
Vehicle := Object clone
Car := Vehicle clone
ferrari := Car clone

Car description := "Thing go fast"
ferrari description := "Thing go faster"
ferrari drive := method("Vroom" println)

Car description println
ferrari drive

"COLLECTIONS" println

toDos := list("thing1", "thing2")
toDos size println
toDos append("Find my present") println
list(1, 2, 3, 4) average println

elvis := Map clone
elvis atPut("home", "Graceland")
elvis proto slotNames println
elvis atPut("style", "rock and roll")
elvis asObject println



#### Day 1


### FIND
## Sample problems:
# https://gist.github.com/jezen/7972975
# https://stackoverflow.com/questions/15687033/io-language-fibonacci-problems

## Io Community:
# https://stackoverflow.com/questions/tagged/iolanguage

## Style Guide:
# https://en.wikibooks.org/wiki/Io_Programming/Io_Style_Guide



### ANSWER

## Typing
# Skip

## Truthyness
# Io> true and 0
# ==> true
# Io> true and nil
# ==> false
# Io> true and ""
# ==> true

## How can you tell what slots a prototype supports?
Vehicle proto slotNames println

## Difference between = and := and ::=
# =	   Assigns value to slot if it exists, otherwise raises exception
# :=   Creates slot, assigns value
# ::=  Creates slot, creates setter, assigns value
