# Movit
The program *Movit* was originally written by Lew Edwards, the version I started out with was found in the book *The First Book of Kim* by Jim Butterfield, Stan Ockers and Eric Rehnke. I've included the relevant pages here in [PDF-format](https://github.com/tebl/RC-ONE/raw/master/software/examples/FBK-Movit/movit.pdf), a complete copy of the book can also be found on [archive.org](https://archive.org/details/The_First_Book_of_KIM).

I've somewhat subverted the program to serve my own purposes, mainly it has been altered so that it runs from an address ordinarily associated with ExRAM expansion ($3F70). Running it directly will set things up in order to copy data from $2200 to $0200, filling up the entire 5k static
RAM as supported when using the 65K Expansion.

The program can still also be used in it's original form by running it from $2790; old start address goes in $d0 & $d1, old end address in $d2 & $d3 and finally the new start address goes in $d4 & $d5.

