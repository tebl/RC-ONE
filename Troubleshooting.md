# Troubleshooting
When starting out building a system from scratch, there is always the chances that something goes wrong along the way and - for many, even, the very act of troubleshooting and then getting it to work is what is at the heart of the computer-building hobby. Do not be disheartenet however as the RC-ONE is a very simple system, given the time to examine the various parts of the design you'll end up learning a lot more than if it had worked perfectly the first time!

## Visual inspection
Start by doing a visual inspection, does it look like you missed a solder point or do you see one where there might be a hint of solder bridging over to somewhere it shouldn't? Examine the ICs, verify that the alignment matches up with the picture on the board itself and that none of the pins got bent underneath the socket instead of going down into it. Check that you have added all the necessary jumpers in order to make it work, pay especially notice to the following positions:

- **VP_GND** next to the 6502 CPU, this needs to be jumpered in order to make a regular 6502 such as the SY6502, UM6502, R6502 and R65C02 function properly.
- **DEN** next to the address decoders, when not using the computer with a backplane and the 65K expansion then this needs to be jumpered in order to allow the computer to function.
- **K0_EXT** and **K7_EXT** allows the address decoding for RAM and ROM to be transferred to the 65K expansion, when using the computer as a standalone system these need to be jumpered across pins 1-2 (left position).
- **SSD_EN** on the UI module enables the seven segments displays, when using the system normally you want this to be jumpered across pins 1-2 (upper position).
- **TTY_MODE** on the UI module lets the system know you'll be using it in terminal mode, when this is jumpered you won't be able to use the keypad and displays as expected - so leave this unjumpered.
- **SST** switch on the keypad halts the computer after each cycle, make sure that it is in the left position.

When reassembling the system, make sure that the alignment of pins between the CPU and UI modules is correct - messing up on this step might cause issues along the way or even toast some of the ICs, PCB or both.

# Electrical checks
At point you'll need a multimeter, with the meter set to continuity and the computer disconnected from power - check between the two top pins of the UI connector, if it beeps then you have a dead short between VCC and GND and you should fix that before doing anything else. A 2-3 watt power supply might not seem like much, but they'll happily turn the wires on a PCB into ash before shutting down themselves so check that first.

Try powering up the board without the UI module attached, hopefully you'll see no indication anything is going on (no LEDs on it, so no change means nothing started smoking). Put the meter on voltage and check that each IC is powered, you might need to lookup some pinouts to do this to find which pin is VCC and which is the GND pin - on logic chips, with the indent at the top, you'll usually find ground at the bottom left corner and VCC at the top right corner. I've included some of the datasheets as part of my [documentation](https://github.com/tebl/RC-ONE/tree/master/documentation/datasheets).

Next step is checking that the CPU has a clock signal on it's input (Phi0) at pin 37, fourth down from the top right corner of the IC. An oscilloscope does come in handy here as it provides a clearer indication that the clock looks correct, but as a quick check with a multimeter instead you should see it average somewhere in the middle with around 2.5v (stuck at 0v or 5v is a clear indication of a problem). The rest of the system relies on a second clock signal, usually called Phi2, that is generated by the CPU - you'll find this on pin 39. On a multimeter it should look the same as the clock input, if it doesn't look right you should try changing the CPU.

From this point on you'll need to start pouring over the schematics for each of the modules, as most of the basics should be covered at this point. Even if you're not familiar with schematics and know instinctively what each part does, just start where you suspect the fault lies and starting working your way from there - it'll make sense in no time!

# STop and SST
The slide-switch marked SST is for single-stepping programs, it's deactivated in the left position. The STop key halts the program currently running and returns you to the monitor program.

Neither of these keys will work directly as instended, this is because you'll need to manually configure a couple of memory addresses with the expected values in order to have these function properly. These are the CPU initialization vectors, for settings these up you can refer to the following excerpt from the excellent [*The First book of KIM*](https://archive.org/details/The_First_Book_of_KIM) by Jim Butterfield:

![Vectors](https://github.com/tebl/RC-ONE/raw/master/documentation/images/kim_vectors.png)
