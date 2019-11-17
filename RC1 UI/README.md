# RC-ONE

Among the years I've built quite a few computers, some bought as kits from various vendors and some I even designed myself based on available designs describes in books and other technical resources - above all, there was one I really wanted above all of them; the KIM-1! The [RC-ONE](https://github.com/tebl/RC-ONE) is a functional replica designed in a modular fashion, for the specifics see the specific module.

## User Interface (UI)
The *User Interface (UI)* board has been created to stack on top of the CPU-board, see below for an indication of how that'll look on a completed revision B system - I'm using M3 nylon standoffs to support the boards.

![Assembled UI Board](https://github.com/tebl/RC-ONE/raw/master/RC1%20UI/gallery/2019-10-24%2020.45.43.jpg)
![Stacked boards](https://github.com/tebl/RC-ONE/raw/master/gallery/2019-10-24%2020.45.34.jpg)

The UI board takes care of all the various ways that the user can interact with the computer, it should functionally include all the functions found on the original computer such as 7-segment displays, keypad connector, a simplified tape interface as well as the ability to connect with a serial terminal.

The displays function the same way as the original displays, but the output hardwareas well as the logic dealing with device selection has been changed to replace some of the ICs that I could not reliably obtain - unfortunately at an increased chip-count, but that is the cost of doing increasingly outdated projects. The 6532 compared to the original 6530 IC has an extra I/O line, I've connected that up to the decimal point of the displays though the bahaviour of these is not supported by the original monitor program so I've added jumpers to enable/disable this functionality.

The tape interface was one created by Daniel Metzger and was featured in the book *22 micro-computer projects - to build, learn and learn*, I don't have an original KIM-1 so I can't compare the two though it is the only one I've seen that only use 5v (3.5mm jack has both audio in and out, I designed it for use with a ZX Spectrum +3 tape cables that people are still selling). 

The serial interface is now TTL level and is intended for use with USB TTL serial adapters, *USE_COM* must be jumpered when resetting the computer so that the computer knows to attempt communication over serial instead of using the displays/keypad. After starting up, the computer will await the receipt of the *ENTER* key in order to determine the baud rate that should be used when communicating with the terminal (-program).


## Jumpers
| Reference | Position | Description                                               |
| ----------| -------- | --------------------------------------------------------  |
| DP_EN     | 1-2      | Decimal point (DP) on displays connected to 6532 PB6 line |
|           | 2-3 *    | DP on displays disabled as original                       |
| DP4_EN    | 1-2 *    | DP on display 4 always on                                 |
|           | 2-3      | DP on display 4 connected to 6532 PB6 line                |
| SSD_EN    | 1-2 *    | Enable Seven Segment Displays (SSD)                       |
|           | 2-3      | Disable Seven Segment Displays (SSD)                      |
| TTY_MODE  | o-o      | Jumper to enable TTY-mode, disabled keypad/displays       |
| CTS - RTS | o-o *    | Shorts serial CTS to RTS to disable flow control          |
| COM_PWR   | o-o      | Jumpering allows the computer to be powered over the serial connection *INSTEAD* of connecting power to the CPU board |

\*) Marks the default jumpered positions for a standalone RC-ONE system.


# Schematic
The supplied KiCad files should be sufficient as both a schematic and as a starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/RC-ONE/raw/master/RC1%20UI/export/RC1%20UI.pdf) so that you print it out and hang it on your office wall, excellent conversation starter at any technology-oriented business worth working at (or so I keep telling myself)!

If you require more assistance, there is also a separate [Troubleshooting](https://github.com/tebl/RC-ONE/blob/master/documentation/Troubleshooting.md) guide as part of the supplied documentation. Also make sure to have a read through the [Manual](https://github.com/tebl/RC-ONE/blob/master/documentation/Manual.md) to see if it's a *feature* instead!


# BOM
This is the part list as it stands now, most should be easy to get a hold of from your local electronic component shop though you might have to consider other sources depending on the quality of your local vendor. Values in parenthesis are optional components that might not be needed depending on what you want, here it's mostly the tape interface.

Some vendors will have the same ICs in different form factors, the ones you want will often be specified as being in the form of a DIP/PDIP package. For the pin headers, you probably won't find the exact pin count so just buy the 40 pin versions and snip off the parts you don't need.

| Reference       | Item                                  | Count |
| --------------- | ------------------------------------- | ----- |
| PCB             | Fabricate yourself using Gerber files |     1 |
| C7,C9           | 50nF ceramic capacitor                |    (2)|
| C8              | 68nF ceramic capacitor                |    (1)|
| C1-C6           | 100nF ceramic capacitor               |     6 |
| C11             | 100nF ceramic capacitor               |    (1)|
| D4              | 5mm LED                               |    (1)|
| D1-D3           | 1N4148 small signal diode             |     3 |
| D5-D7           | 1N4148 small signal diode             |    (3)|
| J1              | 2x8 straight pin header               |     1 |
| J2              | 2x20 straight pin header              |     1 |
| J3              | 1x6 right-angle pin header            |     1 |
| J4 Audio        | 3.5mm 5pin green audio socket (PJ307) |    (1)|
| JP1,JP3         | 1x2 straight pin header               |     2 |
| JP4-JP6         | 1x3 straight pin header               |     3 |
| JP2             | 1x2 right-angle pin header            |     1 |
| Q1-Q6           | 2N3904 TO-92 transistor               |     6 |
| Q7-Q9           | 2N3904 TO-92 transistor               |    (3)|
| R7,R8,R14-R20   | 100 ohm resistor                      |     9 |
| R10             | 100 ohm resistor                      |    (1)|
| R13             | 220 ohm resistor                      |     1 |
| R22,R23,R25,R26 | 1k ohm resistor                       |     3 |
| R29-R31         | 1k ohm resistor                       |    (3)|
| R11,R33         | 1k5 (1500) ohm resistor               |    (2)|
| R36             | 2k2 (2200) ohm resistor               |    (1)|
| R27             | 2k7 (2700) ohm resistor               |    (1)|
| R32             | 6k8 (6800) ohm resistor               |    (1)|
| R1-R6,R21       | 10k ohm resistor                      |     7 |
| R9,R28,R34      | 10k ohm resistor                      |    (3)|
| R35             | 51k ohm resistor                      |    (1)|
| U1,U2           | 74LS138 (DIP-16)                      |     2 |
| U3              | 74LS01 (DIP-14) **                    |    (1)|
| U4              | 74LS00 (DIP-14)                       |     1 |
| U5              | 74LS04 (DIP-14)                       |     1 |
| U6              | 74LS244 (DIP-20)                      |     1 |
|                 | Jumpers for settings (CAP headers)    |     4 |

*) These values depend on the color of the seven segment displays you bought, 100 was a bit dim on the green displays though red ones should be good. Personally I'd bump it up a notch on the blue displays. Test on a breadboard first if the brightness is important to you, if in doubt use 100 ohm.

**) The 74LS01 is not stocked everywhere, but it seems the NTE74LS01 is still being produced. The computer will mostly function without it, but you won't be able to single-step code or use the serial interface so it's wort getting one!