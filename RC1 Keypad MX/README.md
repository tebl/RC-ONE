# RC-ONE

Among the years I've built quite a few computers, some bought as kits from various vendors and some I even designed myself based on available designs describes in books and other technical resources - above all, there was one I really wanted above all of them; the KIM-1! The [RC-ONE](https://github.com/tebl/RC-ONE) is a functional replica designed in a modular fashion, for the specifics see the specific module.

## Keypad MX
The RC-ONE has a keypad with the same key layout as the one found on the original KIM-1 computer, it has been designed so that it can be connected to the computer using a cheap 2x8 pin JTAG cable.

![RC-ONE with Keypad MX](https://github.com/tebl/RC-ONE/raw/master/gallery/2019-10-24%2020.47.25.jpg)
![Keypad MX](https://github.com/tebl/RC-ONE/raw/master/RC1%20Keypad%20MX/gallery/2019-10-24%2020.49.02.jpg)

This is the MX version of the keypad, it uses Cherry MX key switches as well as suitable keycaps for that ultimate RC-ONE experience. I built mine using cheaper Gateron clone switches, they're really comfortable for the price and when using the green ones you also get that traditional clicky sound. I was out of white on clear tape for my label printer so 0-F was blank when I took the picture, but overall it's a good look! Add some bumpon rubber feet to the bottom to save the desk from the sharp solder points on the underside.

The Keypad MX might be part of the ultimate RC-ONE experience, but it is a rather expensive build due to the PCB size and components used - the standard [Keypad](https://github.com/tebl/RC-ONE/tree/master/RC1%20Keypad) uses ordinary tactile switches and is a lot cheaper to build. On the other hand, both of these can be connected to your main computer as a USB keyboard by adding the [Keypad USB Adapter](https://github.com/tebl/RC-ONE/tree/master/RC1%20Keypad%20to%20USB) along with an Arduino Pro Micro.

# Schematic
The supplied KiCad files should be sufficient as both a schematic and as a starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/RC-ONE/raw/master/RC1%20Keypad/export/RC1%20Keypad.pdf) so that you print it out and hang it on your office wall, excellent conversation starter at any technology-oriented business worth working at (or so I keep telling myself)!

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