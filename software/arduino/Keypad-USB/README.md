# Keypad to USB adapter

While not actually a part of the RC-ONE computer, I wanted to a way to use the keypad on a modern computer - this is implemented by using an Arduino Pro Micro, a version of the board with USB host functionality.

This project folder contains an Arduino sketch with the necessary code to do so, code was originally based on routines by Dave Curran and his [ZX81 USB Keyboard](http://blog.tynemouthsoftware.co.uk/2012/02/zx81-usb-keyboard-source.html) though changes were made and bugs were probably introduced.

## Arduino-module
For assistance on getting going with the Pro Micro on common tasks such as uploading code and communicating with the module, I found the drivers guides on [learn.sparkfun.com](https://learn.sparkfun.com/tutorials/pro-micro--fio-v3-hookup-guide#hardware-overview-pro-micro) to be of great help (the board I purchased and used for the project was a DIY MORE Arduino Pro Micro). The following is what I have selected as board type, make sure that you pick the one that corresponds to your module as Pro Micro will have to be reset using the module if you have problems.

![Arduino board configuration](https://github.com/tebl/RC-ONE/raw/master/software/arduino/Keypad-USB/arduino_settings.png)