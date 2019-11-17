# RC-ONE
Among the years I've built quite a few computers, some bought as kits from various vendors and some I even designed myself based on available designs describes in books and other technical resources - above all, there was one I really wanted above all of them; the KIM-1! Originally created by MOS in order to show off their new 6502-processor, it was a success that tapped into a market they probably never knew themselves was growing into a force to be reckoned with - the homecomputing market! Later bought up by little-known typewriter-manufacturer *Commodore*, the KIM-1 is an iconic piece of hardware and since I can't afford to buy one I'll build one instead.

The original unit cost 245$ assembled with everything you needed to get started, it had six segment displays for outputting information and a 24-key keypad onboard. CPU ran at an incredible 1 Mhz, it had a complete monitor in 2K of ROM, 1K of static RAM as well as an additional 128 bytes of RAM. You got 15 additional I/O lines to play with, all on a single PCB.

I however don't have that amount of money to play with, PCB prices skyrocket past 100x100 mm so I've separated functionality into separate boards so that each version would cost only around 5$ per piece instead. It means it's no longer a single board computer, but if it means more people can build it as a fun project then that's a plus in my book. The main setup does not include the additional 15 I/O lines due to space requirements, but you can add those back to the system by including the 65K Expansion (in addition to the backplane module) if you want to. If you just want to play around with the system and try your hand at machine language coding, you can get started with the CPU board, UI board and a keypad module.

![RC-ONE Standalone](https://github.com/tebl/RC-ONE/raw/master/gallery/2019-10-24%2020.47.25.jpg)

As a classic microcomputer, I've gone ahead and created the obligatory memory map for your perusal - the highlights are shown below, but you'll find the complete set of information in the documentation section ([ODS](https://github.com/tebl/RC-ONE/raw/master/documentation/memory_map.ods)- or [PDF](https://github.com/tebl/RC-ONE/raw/master/documentation/memory_map.pdf)-format). Some of the functions have been shifted physically, but in the end the system should be functionally identical to an original system and able to run code without requireing changes.

![Expanded system](https://github.com/tebl/RC-ONE/raw/master/gallery/2019-10-06%2013.52.26.jpg)

The system is highly expandable, with the 65K expansion in place you'll get better utilization of the components already on the CPU board as well as the ability to add additional modules to the system with an additional backplane also in place. See *System modules* below for a list of modules required for a complete system, optional modules available as well as modules for other systems that are compatible with the RC-ONE computer.

A lot of the work I've done couldn't have been completed without the work previously done by Ruud Baltissen, you can compare the schematics he did for the original KIM-1 computer and his more modern recreation of it by studying his [Build your own KIM-1](http://www.baltissen.org/newhtm/buildkim.htm) page.

## Project status
The RC-ONE computer is operational, it can be used to enter and run code via the keypad and can output to the displays as expected and for many this will be all that's needed to have fun with it as a replica of the KIM-1. Some sections are still being worked on, mainly those that deal with the TTY mode and tape functionality - see [TODO](https://github.com/tebl/RC-ONE/blob/master/TODO.md) for an overview of things I'd like to see done sometime in the future!

## System modules
As mentioned earlier there are a few different modules available for the system, some will be required to make the system function and others is considered optional and can be added if you want that extra piece of 70s-technology to play around with. There may be additional modules in the project files, but the ones I've added here are the ones that can be considered ready. As modules are being worked on over time, I've also added an order link to the modules so that you can get the last version I know worked. For more information about the specific module, including schematic and a list of parts you'd need to build it - click the name of the module!

Note that due to the similarities with the [RC6502  Apple 1 Replica](https://github.com/tebl/RC6502-Apple-1-Replica), quite a few of the modules developed for that system will also work with the RC-ONE - the ones I've tested and use with the system have also been linked below.

| Module    | RC-ONE | RC-ONE 65K | Order |
| --------- | ------ | ---------- | ----- |
| [CPU](https://github.com/tebl/RC-ONE/tree/master/RC1%20CPU) | required | required | |
| [User Interface](https://github.com/tebl/RC-ONE/tree/master/RC1%20UI) | required | required | |
| [Keypad](https://github.com/tebl/RC-ONE/tree/master/RC1%20Keypad) | required * | required * | |
| [Keypad MX](https://github.com/tebl/RC-ONE/tree/master/RC1%20Keypad%20MX) | required * | required * | |
| [65K Expansion](https://github.com/tebl/RC-ONE/tree/master/RC1%2065K%20Expansion) |  | required | |
| [RC6502 Backplane](https://github.com/tebl/RC6502-Apple-1-Replica/tree/master/RC6502%20Backplane)  |  | required | [PCBWay](https://www.pcbway.com/project/shareproject/RC6502_Apple_1_Replica__Backplane_module_revision_A_.html?inviteid=88707) |
| [RC6502 Prototyping module](https://github.com/tebl/RC6502-Apple-1-Replica/tree/master/RC6502%20Prototyping) |  | optional | [PCBWay](https://www.pcbway.com/project/shareproject/RC6502_Apple_1_Replica__Module_prototyping_board_.html?inviteid=88707) |

*) Only one Keypad module is required, the MX version is a lot more comfortable to use though it comes at an increased cost.

If you would like to have a copy of one or more modules (usually 5$ per module), consider using the order links in order to support the development of these boards while doing so. You can alternatively zip up the contents of the export directory for each module and give that to your favourite PCB fabrication plant (I use [PCBWay](https://www.pcbway.com/setinvite.aspx?inviteid=88707) instead, but not that these files may have changes not yet tested on my part.