# Deconstructing IDs:
## - Enitity IDs are five digits (ie; #10132)
#### - An entity is a non-player object that can dynamically change and be interacted with (ie; Items and NPCs)
#### - First digit represents the type
#### - 0 is item
#### - 1 is NPC
#### - 2 through 9 are reserved for future entity types
## - Location IDs are four characters split into two letter/number pairs by a hyphen (ie; S2-B3)
#### - The letter in the first pair is the general area (ie; Living Room, Kitchen, etc.)
#### - The number in the first pair relates to the subsection of the area (ie; Cabinet, Microwave, etc.)
#### - The letter/number in the second pair is the coordinate of the subsection, which is mapped out by a grid (think of the board game Battleship)
## - Player IDs are the exact same as their Discord ID 
#### - Once you have enabled developer options, you can right click a person's name to open up a menu with the option to "Copy ID"
