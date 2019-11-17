# RC-ONE

Among the years I've built quite a few computers, some bought as kits from various vendors and some I even designed myself based on available designs describes in books and other technical resources - above all, there was one I really wanted above all of them; the KIM-1! The [RC-ONE](https://github.com/tebl/RC-ONE) is a functional replica designed in a modular fashion, for the specifics see the specific module.

## Keypad
The RC-ONE has a keypad with the same key layout as the one found on the original KIM-1 computer, it has been designed so that it can be connected to the computer using a cheap 2x8 pin JTAG cable.

![Keypad PCB and assembled unit](https://github.com/tebl/RC-ONE/raw/master/RC1%20Keypad/gallery/2019-10-14%2019.17.51.jpg)

To avoid punching a lot of tiny holes into the desk underneath the keypad, I recommend getting some M3 nylon standoffs to create some space under the solder points. Using a proper 2x8 pin IDC connector also ensures you don't plug the cable in the wrong way. The SST switch can be pin headers and a jumper to be moved around or a 3-position slide switch.

While the keypad is perfectly sufficient for getting started with the RC-ONE, it's not the most ergonomic piece of keyboard I've ever used and entering longer programs may prove a somewhat painful process. For that reason, and I really wanted to build one, the [Keypad MX](https://github.com/tebl/RC-ONE/tree/master/RC1%20Keypad%20MX) version was also designed - it uses Cherry MX (or cheaper clones) key switches for that ultimate RC-ONE build! The keypad itself can also be used as an ordinary USB keyboard by adding the [Keypad USB Adapter](https://github.com/tebl/RC-ONE/tree/master/RC1%20Keypad%20to%20USB) along with an Arduino Pro Micro.

# Schematic
The supplied KiCad files should be sufficient as both a schematic and as a starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/RC-ONE/raw/master/RC1%20Keypad/export/RC1%20Keypad.pdf) so that you print it out and hang it on your office wall, excellent conversation starter at any technology-oriented business worth working at (or so I keep telling myself)!

# BOM
This is the part list as it stands now, most should be easy to get a hold of from your local electronic component shop though you might have to consider other sources depending on the quality of your local vendor.

| Reference    | Item                                     | Count |
| ------------ | ---------------------------------------- | ----- |
| PCB          | Fabricate yourself using Gerber files    |     1 |
| D1           | 5mm LED                                  |     1 |
| J1           | 2x8 straight pin header                  |     1 |
| SW           | Momentary push button                    |    23 |
| SST          | 3-position slide switch *                |     1 |
| Keypad cable | 2x8 pin JTAG cable                       |     1 |

*) You can install one of those handy 3-position slide switches, these are sold from China and have a 2.54mm pin spacing - if you use them, I recommend testing it with a continuity meter after soldering it in to make sure that it functions properly and does not permanently bridge the connections (had some problems with them). Alternatively, you can use anything that is able to short the two right-most pins as long as it fits or can be made to fit.