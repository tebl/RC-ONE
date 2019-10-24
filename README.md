# RC-ONE
Among the years I've built quite a few computers, some bought as kits from various vendors and some I even designed myself based on available designs describes in books and other technical resources - above all, there was one I really wanted above all of them; the KIM-1! Originally created by MOS in order to show off their new 6502-processor, it was a success that tapped into a market they probably never knew themselves was growing into a force to be reckoned with - the homecomputing market! Later bought up by little-known typewriter-manufacturer *Commodore*, the KIM-1 is an iconic piece of hardware and since I can't afford to buy one I'll build one instead.

The original unit cost 245$ assembled with everything you needed to get started, it had six segment displays for outputting information and a 24-key keypad onboard. CPU ran at an incredible 1 Mhz, it had a complete monitor in 2K of ROM, 1K of static RAM as well as an additional 128 bytes of RAM. You got 15 additional I/O lines to play with, all on a single PCB.

I however don't have that amount of money to play with, PCB prices skyrocket past 100x100 mm so I've separated functionality into separate boards so that each version would cost only around 5$ per piece instead. It means it's no longer a single board computer, but if it means more people can build it as a fun project then that's a plus in my book. The main setup does not include the additional 15 I/O lines due to space requirements, but you can add those back to the system by adding a 65K Expansion and a backplane module if you want to. If you just want to play around with the system and try your hand at machine language coding, you can get started with the CPU board, UI board and a keypad module.

As a classic microcomputer, I've gone ahead and created the obligatory memory map for your perusal - the highlights are shown below, but you'll find the complete set of information in the documentation section ([ODS](https://github.com/tebl/RC-ONE/raw/master/documentation/memory_map.ods)- or [PDF](https://github.com/tebl/RC-ONE/raw/master/documentation/memory_map.pdf)-format). Some of the functions have been shifted, but the end result should be functionally identical to an original system

## Modules
As previously mentioned there are a few modules available for the system, some are required to make the system work and some can be considered optional if you want that extra piece of functionality to play around with. There may be more modules among the files, but the ones I've added here are the ones that can be considered ready. As modules are being worked on over time, I've also added an order link to the modules so that you can get the last version I know worked. For more information about the specific module, including schematic and a list of parts needed to build it - click the name of the module.

In order to build a working RC-ONE computer, you'll need the following modules:
- [CPU](https://github.com/tebl/RC-ONE/tree/master/RC1%20CPU)
- [User Interface](https://github.com/tebl/RC-ONE/tree/master/RC1%20UI)
- [Keypad](https://github.com/tebl/RC-ONE/tree/master/RC1%20Keypad) or [Keypad MX](https://github.com/tebl/RC-ONE/tree/master/RC1%20Keypad%20MX)

Optional modules:
- [65K Expansion](https://github.com/tebl/RC-ONE/tree/master/RC1%2065K%20Expansion)
- [Backplane](https://github.com/tebl/RC6502-Apple-1-Replica/tree/master/RC6502%20Backplane) ([order](https://www.pcbway.com/project/shareproject/RC6502_Apple_1_Replica__Backplane_module_revision_A_.html?inviteid=88707))
- [Prototyping module](https://github.com/tebl/RC6502-Apple-1-Replica/tree/master/RC6502%20Prototyping) ([order](https://www.pcbway.com/project/shareproject/RC6502_Apple_1_Replica__Module_prototyping_board_.html?inviteid=88707))

If you would like to have a copy of one or more modules (usually 5$ per module), consider using the order links in order to support the development of these boards while doing so. You can alternatively zip up the contents of the export directory for each module and give that to your favourite PCB fabrication plant (I use [PCBWay](https://www.pcbway.com/setinvite.aspx?inviteid=88707) instead, but not that these files may have changes not yet tested on my part.