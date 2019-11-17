# RC-ONE CPU
Among the years I've built quite a few computers, some bought as kits from various vendors and some I even designed myself based on available designs describes in books and other technical resources - above all, there was one I really wanted above all of them; the KIM-1! Originally created by MOS in order to show off their new 6502-processor, it was a success that tapped into a market they probably never knew themselves was growing into a force to be reckoned with - the homecomputing market! Later bought up by little-known typewriter-manufacturer *Commodore*, the KIM-1 is an iconic piece of hardware and since I can't afford to buy one I'll build one instead.

![Assembled CPU Board](https://github.com/tebl/RC-ONE/raw/master/RC1%20CPU/gallery/2019-10-24%2020.31.04.jpg)

The CPU board has been created to stack with the UI-board, see below for an indication of how that'll look on a completed revision B system - I'm using M3 nylon standoffs to support the boards.

![Stacked boards](https://github.com/tebl/RC-ONE/raw/master/gallery/2019-10-24%2020.45.34.jpg)

The CPU board is actually a complete SBC (Single Board Computer) by itself, meaning that it can be used standalone - the only thing missing is an automatic reset, which the KIM-1 originally also lacked. The design follows the original KIM-1 schematics and has the exact same specifications as the original system (1Mhz, 1K RAM and 2K ROM), you can compare the [memory map](https://github.com/tebl/RC-ONE/raw/master/documentation/memory_map.pdf) for the specifics.

Some of the ICs however have been changed out with components that should be easier to source for a lot less money, the result of this is that the system actually instead has 32K of RAM and 8K ROM on the board though only 1K of RAM 2K of ROM will be accessible by the CPU board without additional hardware. The [65K Expansion](https://github.com/tebl/RC-ONE/tree/master/RC1%2065K%20Expansion) allows you to utilize most of the the memory (29K maximum) and the full 8K of ROM.

The *DEN* jumper must jumpered when **NOT** using together with a [65K Expansion board](https://github.com/tebl/RC-ONE/tree/master/RC1%2065K%20Expansion), *RAM_EXT* and *ROM_EXT* likewise must be jumpered across pins 1-2 when not using the expansion (these transfer the address decoding to the 65K-card, without it there is no decoding done and the computer will not work).


## Jumpers
| Reference | Position | Description                                       |
| --------- | -------- | ------------------------------------------------  |
| DEN       | o-o *    | Jumper when NOT using with 65K Expansion          |
| RAM_EXT   | 1-2 *    | Jumper when NOT using with 65K Expansion          |
|           | 2-3      | RAM decoding handled by 65K Expansion             |
| ROM_EXT   | 1-2 *    | Jumper when NOT using with 65K Expansion          |
|           | 2-3      | ROM decoding handled by 65K Expansion             |
| VP_GND    | o-o *    | Jumpered when UM6502, R6502 and SY6502 processors |

\*) Marks the default jumpered positions for a standalone RC-ONE system with a common 6502 processor (ie. not 65c02).


# Schematic
The supplied KiCad files should be sufficient as both a schematic and as a starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/RC-ONE/raw/master/RC1%20CPU/export/RC1%20CPU.pdf) so that you print it out and hang it on your office wall, excellent conversation starter at any technology-oriented business worth working at (or so I keep telling myself)!

If you require more assistance, there is also a separate [Troubleshooting](https://github.com/tebl/RC-ONE/blob/master/documentation/Troubleshooting.md) guide as part of the supplied documentation. Also make sure to have a read through the [Manual](https://github.com/tebl/RC-ONE/blob/master/documentation/Manual.md) to see if it's a *feature* instead!


# BOM
This is the part list as it stands now, most should be easy to get a hold of from your local electronic component shop though you might have to consider other sources depending on the quality of your local vendor.

Some vendors will have the same ICs in different form factors, the ones you want will often be specified as being in the form of a DIP/PDIP package. Usually you'll want sockets for each of the ICs as well, a bag of assorted sockets should be easily available without setting you back more than a couple bucks. With the sockets in place, you don't need to dread having to remove an IC later, this leads to easier fault finding and you can easily "borrow" them for other projects later! For the pin headers, you probably won't find the exact pin count so just buy the 40 pin versions and snip off the parts you don't need.

| Reference    | Item                                  | Count |
| ------------ | ------------------------------------- | ----- |
| PCB          | Fabricate yourself using Gerber files |     1 |
| C1-C9        | 100nF ceramic capacitor               |     9 |
| C10-C11      | 220nF ceramic capacitor               |     2 |
| J1           | 39p right angle pin header            |     1 |
| J2           | 2x20 pin straight header              |     1 |
| J3           | 2.1mm x 5.5mm barrel plug             |     1 |
| JP1,JP2      | Single row, 2 pin straight header     |     2 |
| JP3,JP4      | Single row, 3 pin straight  header    |     2 |
| R1-R3,R6-R7  | 3k3 (3300) ohm resistor               |     5 |
| R9-R10       | 1k ohm resistor                       |     2 |
| R11-R12      | 47k ohm resistor                      |     2 |
| RN1          | 4k7 ohm bussed resistor array (SIP-9) |    (1)|
| U1           | 6502 CPU (DIP-40)                     |     1 |
| U2           | 62256 Static RAM (DIP-28)             |     1 |
| U3           | 28C64/28C256 EEPROM (DIP-28)          |     1 |
| U4           | 6532 RIOT (DIP-40)                    |     1 |
| U5,U9        | 74LS00 (DIP-14)                       |     2 |
| U6           | LM556 (DIP-14)                        |     1 |
| U7,U8        | 74LS138 (DIP-16)                      |     2 |
| X1           | 1.000Mhz TTL Oscillator, (DIP 14)     |     1 |
|              | Jumpers for settings (CAP headers)    |     3 |
