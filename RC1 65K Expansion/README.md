# RC-ONE

Among the years I've built quite a few computers, some bought as kits from various vendors and some I even designed myself based on available designs describes in books and other technical resources - above all, there was one I really wanted above all of them; the KIM-1! The [RC-ONE](https://github.com/tebl/RC-ONE) is a functional replica designed in a modular fashion, for the specifics seaddresse specific module.

## 65K Expansion
The original KIM-1 computer as well as RC-ONE base system only has around 1K of RAM available as well as 2K of ROM, it also limits the entire address space available to the 6502 CPU to 8K where most of it has already been taken up. The RC-ONE by comparison uses the same address decoding scheme, but actually has 32K of RAM and 8K of ROM on the base system, most of it simply isn't accessible by the base system. The addition of the 65K Expansion allows the computer to access up to 29K of RAM , the full 8K of ROM as well as increases the total address space to the 64K limit set by the 6502 processor.

![65K Expansion](https://github.com/tebl/RC-ONE/raw/master/RC1%2065K%20Expansion/gallery/2019-10-21%2021.01.39.jpg)

For a complete overview of the addressing used with the computer, see [Memory Map](https://github.com/tebl/RC-ONE/raw/master/documentation/memory_map.pdf) ([ODS-format](https://github.com/tebl/RC-ONE/raw/master/documentation/memory_map.ods)) for a comparison between the relevant systems - preview of the main bits below as well!

![Memory Map](https://github.com/tebl/RC-ONE/raw/master/documentation/images/memory_map.PNG)

The 65K Expansion expands upon the address decoding performed by the [CPU-board](https://github.com/tebl/RC-ONE/tree/master/RC1%20CPU) so that more of the address space is both freed up, my implementation on it is for the most part functionally the same as the one described in the [KIM-1 Programming Manual](http://users.telenet.be/kim1-6502/6502/proman.html) (which is why it's called the *65K Expansion*).

Given that since the 65K Expansion changes the address decoding, the *DEN* jumper on the CPU module needs to be removed in order for the computer to function with the 65K Expansion taking over the heavy lifting on the address decoding. Likewise, the *RAM_EXT* and *ROM_EXT* configuration must be changed so that pins 2-3 on them are jumpered in order for the additional RAM and ROM to be accessible.

The original KIM-1 computer came with two 6530s, one dedicated to the user interface and the other available to do with as you please. The RC-ONE base system only has the one 6532 replacing the former, the latter has been added to the 65K Expansion so that you don't have to go without it if you don't actually want to! Quite a lot of the books written for the KIM-1 depend on the additional I/O lines in order to control fun little hardware experiments and I think it's worth getting the extra 6532 for this purpuse.

## Configuration
| Reference  | Position | Description                                              |
| ---------- | -------- | -------------------------------------------------------- |
| DEN     *  | o o **   | **Remove** jumper when using 65K Expansion               |
| RAM_EXT *  | 1-2      | Jumper when **NOT** using with 65K Expansion             |
|            | 2-3 **   | RAM decoding performed by 65K Expansion                  |
| ROM_EXT *  | 1-2      | Jumper when **NOT** using with 65K Expansion             |
|            | 2-3 **   | ROM decoding performed by 65K Expansion                  |
| LOW MEMORY | 1-2      | 1K low memory size ($0000 - $03FF)                       |
|            | 3-4      | 2K low memory size ($0000 - $07FF)                       |
|            | 5-6      | 4K low memory size ($0000 - $0FFF)                       |
|            | 7-8 **   | 5K low memory size ($0000 - $13FF)                       |
| RAM_8K1    | o o      | Enable 8K RAM size ($2000 - $3FFF)                       |
| RAM_8K2    | o o      | Enable 8K RAM ($4000 - $5FFF)                            |
| RAM_8K3    | o o      | Enable 8K RAM ($6000 - $7FFF)                            |
| RIOT_IO3   | 1-2 **   | Enable RIOT chip                                         |
|            | 2-3      | RIOT chip disabled                                       |
| RIOT_IRQ   | 1-2      | RIOT chip IRQ line connected to BUS                      |
|            | 2-3 **   | RIOT chip IRQ line not connected                         |
| RIOT_A4    | 1-2 **   | Invert A4 to match 6532 registers to 6530                |
|            | 2-3      | 6532 registers according to 6532 datasheet               |

*) These jumpers are found on the CPU board
**) Marks the default jumpered positions for a RC-ONE system, but mostly these are suggestions meant to get you started with a computer functionally equivalent to a 65K expanded KIM-1 with a 4K RAM expansion installed.

## Connectors
The following additional headers break out additional signals. *EXTRA* and *K1-K4* allows a convenient hookup point for decoded memory segments for use in other projects as they don't conflict with any other expansions present on the same backplane (pin 1 is on the top). Application I/O is numbered odd-even, see reverse side of PCB or this [image](https://github.com/tebl/RC-ONE/raw/master/RC1%2065K%20Expansion/gallery/application_io.png) for reference.

| Reference       | Pins              | Description                                              |
| --------------- | ----------------- | -------------------------------------------------------- |
| Application I/O | 1 (bottom left)   | GND                                                      |
|                 | 2 (top left)      | GND                                                      |
|                 | 3                 | PB7                                                      |
|                 | 4                 | PA7                                                      |
|                 | 5                 | PB6                                                      |
|                 | 6                 | PA6                                                      |
|                 | 7                 | PB5                                                      |
|                 | 8                 | PA5                                                      |
|                 | 9                 | PB4                                                      |
|                 | 10                | PA4                                                      |
|                 | 11                | PB3                                                      |
|                 | 12                | PA3                                                      |
|                 | 13                | PB2                                                      |
|                 | 14                | PA2                                                      |
|                 | 15                | PB1                                                      |
|                 | 16                | PA1                                                      |
|                 | 17                | PB0                                                      |
|                 | 18                | PA0                                                      |
|                 | 19 (bottom right) | GND                                                      |
|                 | 20 (top right)    | VCC                                                      |
| EXTRA           | 1 (top)           | 8K4    ($8000 - $9FFF)                                   |
|                 | 2                 | 8K5    ($A000 - $BFFF)                                   |
|                 | 3                 | 8K6    ($C000 - $DFFF)                                   |
| K1-K4           | 1 (top)           | 8K0 K1 ($0400 - $07FF)                                   |
|                 | 2                 | 8K0 K2 ($0800 - $0BFF)                                   |
|                 | 3                 | 8K0 K3 ($0C00 - $0FFF)                                   |
|                 | 4                 | 8K0 K4 ($1000 - $13FF)                                   |

# Schematic
The supplied KiCad files should be sufficient as both a schematic and as a starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/RC-ONE/raw/master/RC1%20Keypad%20MX/export/RC1%20Keypad%20MX.pdf) so that you print it out and hang it on your office wall, excellent conversation starter at any technology-oriented business worth working at (or so I keep telling myself)!

# BOM
This is the part list as it stands now, most should be easy to get a hold of from your local electronic component shop though you might have to consider other sources depending on the quality of your local vendor.

| Reference          | Item                                     | Count |
| ------------------ | ---------------------------------------- | ----- |
| PCB                | Fabricate yourself using Gerber files    |     1 |
| D1                 | 5mm LED                                  |     1 |
| J1                 | 2x8 straight pin header                  |     1 |
| SW1-SW22,SW23,SW24 | 3 or 5 pin Cherry MX key switches *      |    23 |
| SST                | 1-position DIP switch                    |     1 |
| Keycaps            | Blank 1U keycaps **                      |    23 |
| Keypad cable       | 2x8 pin JTAG cable                       |     1 |

*) Any type of Cherry MX compatible switches can be used, these can be either of the 3 or pin variety. Personally I bought the green Gateron MX switches and they work great though you'd probably want to buy the non-green version if you don't like the clicky sound.