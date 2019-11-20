# RC-ONE Manual
There are manuals and this one is mine, all mine and has all the best words with the exception of the parts actually written by other people. A lot of the best words might also never find a way into this manual, mostly because I never found a natural way of mentioning the Aardvark in a document describing the inner workings of the computer that might one day be known as the *RC-ONE*.

![RC-ONE Standalone](https://github.com/tebl/RC-ONE/raw/master/gallery/2019-10-24%2020.47.25.jpg)

# 1> Introduction
What an *RC-ONE* actually is? Well, that is what this project is all about. Mostly it is functional replica of the original MOS KIM-1, but please keep in mind the *mostly*-part as I'll surely loose my way before long and start implementing features or make changes that weren't supposed to be there in the first place.

If you want the original authenticity and the same identical parts as back in the day, then I recommend one of the primary sources of information used when building the RC-ONE; the [Build your own KIM-1](http://www.baltissen.org/newhtm/buildkim.htm) pages by Ruud Baltissen as well as the pages of [Hans Otten](http://retro.hansotten.nl/6502-sbc/kim-1-manuals-and-software/). Rest asure, however, that the RC-ONE will ultimately be a KIM-1 in spirit (thrown together, cheaply made and open to all manner of hacks)!

Somewhat telling for probably all of the projects I've fiddled with, I've mostly tended towards recreating the type of equipment I could not possibly manage to finance such as the [*RC6502 Apple 1 replica*](https://github.com/tebl/RC6502-Apple-1-Replica) - or - the ones such as the [*RC1802 Cosmac ELF*](https://github.com/tebl/RC1802-Cosmac-ELF), which was chosen based on the already excellent availability of software and documentation so I didn't have to write sufficient amounts of it. The RC-ONE, being based on the KIM-1, fits neatly into both of those categories - I could not buy afford an actual one, but I could read almost all about it!

While we're on the whole *reading bit* and coming back to the topic of this supposedly being called a manual, most of the ancient wordy tomes of knowledge mentioning the computer will probably do a better job of conveying its capabilities through step-by-step guidance - so it is my hope that this manual won't have to be much longer than its actual length.

# 2> History of MOS KIM-1
As the story goes, without going so far as to actually fact-check things before repeating them from a spotty set of memories of someone born half a decade later... MOS was a company originally selling digital calculators, these were mostly constructed using on integrated circuits (ICs) produced by Texas Instrument (TI), but when TI themselves started undercutting the market by producing calculators for themselves they were soon forced to find other ways of earning a profit.

The object therefore was to create a new calculator they could produce themselves, so a new chip responsible for doing the calculations was made. However, the chip that was designed - the 6502 - was much more actually more advanced than what was necessary for a simple calculator due to the foresight of its designer, the legendary Chuck Peddle. It wasn't designed to be a simple chip capable of performing only a set number of calculations, it was a CPU capable of doing a lot more than that - it was able to do CPU-y things!

Anyway, the calculators weren't actually flying off the shelves and the 6502 itself didn't see much third-party use either - mostly because hardware designers didn't know what to do with it either! In order to make 6502 an attractive purchase they needed something to show off it's capabilities, something that buyers could toy around with in order to learn why they needed to base their next product around it - the MOS KIM-1 was what they came up with!

![MOS KIM-1](https://github.com/tebl/RC-ONE/raw/master/documentation/images/876px-MOS_KIM-1_IMG_4211_cropped_scale.jpg)
> **MOS KIM-1 computer. On display at the Musée Bolo, EPFL, Lausanne.**
> Source [Wikipedia](https://en.wikipedia.org/wiki/KIM-1#/media/File:MOS_KIM-1_IMG_4211_cropped_scale.jpg): Rama & Musée Bolore-framing: Tomer T
> CC BY-SA 2.0 fr, https://commons.wikimedia.org/w/index.php?curid=18666108.

The KIM-1, standing for **K**eyboard **I**nput **M**onitor, probably didn't strike people as much more than an ordinary calculator kit though its success was in a market they probably never expected to exist in any substantial form; the home computer market!

![MOS KIM-1, only $245](https://github.com/tebl/RC-ONE/raw/master/documentation/images/835px-KIM-1_Computer_Ad_May_1976.jpg)
> **The introductory advertisement for the KIM-1 microcomputer, May 1976**
> Source [Wikipedia](https://en.wikipedia.org/wiki/KIM-1#/media/File:KIM-1_Computer_Ad_May_1976.jpg): MOS Technology Inc. Norristown, PA. - Scanned from the May 1976 BYTE magazine (page 11) by Michael Holley Swtpc6800 in August 2009
> Public Domain, https://commons.wikimedia.org/w/index.php?curid=8594032

Four paragraphs on overtime, a company called Commodore was struggling to make a satisfactory profit on the steadily declining market for mechanical typewriters, so they ended up buying MOS. The MOS KIM-1 became the Commodore KIM-1, later expanded to become the Commodore PET and so forth until we end up with my favourite computer of all time - the Commodore 64!   

Did you need to know all that? Probably not. 

## 2.1> Specifications
The heart of the KIM-1 computer was always its CPU, a MOS-branded 6502 CPU clocked at a whopping 1 Mhz. Without even attempting to account for the difference in the level of sophistication, but only going by pure clock speed it's at least 2000 times slower than my already ancient laptop. A 3$ Arduino will be actually be a lot faster than what this thing is clocked in at. On the other hand, and this is where it really gets interresting - that's still a million tiny tasks that could potentially be performed every second!

It had a single KB of static memory available, plus 128 words worth of memory giving it a total of 1152 bytes of RAM. I could return to the case of my sad laptop at this point and just mention that it has around 4 million times that, but the 1K wasn't actually all that much back then to be honest. That's after all only a 100 monkeys typing things in for 11.52 seconds before running out, accounting for adressing difficulties due to non-continuous memory and overrunning system memory not accounted for. The system monitor, the software allowing you to interact with the system is stored in 2K of ROM. 

In the category of I/O, you got a bit of everything in the package thanks to the versatility of two 6530 chip originally found on the system. The first one is dedicated to handling the keypad, serial TTY, the tape interface and outputting data to the six seven segment displays. The last 6530 was yours to do with as you wanted, that's 15 bi-directional I/O lines that could be used to change the world - one short-circuit at a time!

Well, that's what you got!

## 3> A brief history of RC-ONE
If you've already read the previous chapters, then the briefest of history for the RC-ONE that I can give has already been given. Read on for the for the slightly less brief history.
    
Still here? Well, then who's a good boy [or girl]? You are, I guess...

The RC-ONE project as my big follow-up to the RC6502, it was my summer of 2017 project with all my hope and slightly more available time poured into it. Thinking it'd be easy now that I've learned the basics of 6502 and basic amateur PCB design, my first and second attempt at creating a compact, functional and affordable version of the KIM-1 - were of course complete failures and thrown into the pile of shame for later part extraction.

Summer of 2019 I threw out the old files and took a new tactic, this time keeping the main components of the 6502 computer on a separate CPU board putting all of the rest of the interface components a separate User Interface board. Divide and conquer, keeping both under the magic $5 limit on most PCB fabrication shops such as PCBway. Also needed a keypad, had to have something suitable for hammering out all my frustrations upon.

![Revision A](https://github.com/tebl/RC-ONE/raw/master/gallery/2019-09-29%2016.26.11.jpg)

The first of the new ones worked with some cutting and patching, the second perished in a fire due to last minute redesigns in order to avoid components that weren't so easy to obtain; I unfortunately live in a small country with a de-facto monopoly on the sale of electronic components to private citizens and they don't believe in stocking any of the older or cheaper components, so until the day Norway leaves the global market (probably january 2020) then my options have been the Chinese vendors via Ebay and AliExpress. Yes, I've gotten a lot of fakes - it's what I've got access to, after that I guess I'll have to consider hobbies not dealing with any sort of technology.

![Revision B](https://github.com/tebl/RC-ONE/raw/master/gallery/2019-10-24%2020.47.25.jpg)

Anyway, third time's the charm! Thankfully, in time before things really start grinding to a halt around here!

## 4> Construction
Welcome to the part where you'll be expected to play along, so get your soldering iron heated up and lets get going. First of though, make sure that you've got all of the components and modules necessary to build at least a basic RC-ONE system. The required modules have been listed in the table below, but for a complete list of available modules including all of the cool extras - see the main project [README](https://github.com/tebl/RC-ONE)!

| Module    | RC-ONE | RC-ONE 65K |
| --------- | ------ | ---------- |
| [CPU](https://github.com/tebl/RC-ONE/tree/master/RC1%20CPU) | required | required |
| [User Interface](https://github.com/tebl/RC-ONE/tree/master/RC1%20UI) | required | required |
| [Keypad](https://github.com/tebl/RC-ONE/tree/master/RC1%20Keypad) | required * | required * |
| [Keypad MX](https://github.com/tebl/RC-ONE/tree/master/RC1%20Keypad%20MX) | required * | required * |
| [65K Expansion](https://github.com/tebl/RC-ONE/tree/master/RC1%2065K%20Expansion) |  | required |
| [RC6502 Backplane](https://github.com/tebl/RC6502-Apple-1-Replica/tree/master/RC6502%20Backplane)  |  | required |
*) Only one Keypad module is required, the MX version is a lot more comfortable to use though it comes at an increased cost.

In order to build each of the modules, you'll need to obtain the pre-requisite number of components as specified - a component list will usually be found in something called a *BOM*, you'll find them separately listed for each of the modules by clicking on them above.

### 4.1> Watch the hot end!
If you turned on your soldering iron at the start of chapter 4, then waited for 2-6 weeks for a delivery from China, then I apologize for not thinking things through. If you've got everything ready, then get ready and turn on your soldering iron **NOW**!

Mentally or physically sort the components in order of height, start with the smallest components and work your way up to make things easy for yourself; do the diodes (not LEDs as those are pretty tall), resistors, monolithic capacitors if you have them and then sockets for all of the ICs. Then, probably the rest of the components as you'll probably have gotten the point by now.

If there is something you're unsure about, which holes to put the component leads into - then it's a good idea to put those aside for now, it'll probably make more sense as the other components slot into place. When doing the connectors, try doing a test-fit to ensure that things slot together like you expect them to (check twice, solder once).

You should already have some practice using a soldering iron before building something like the RC-ONE, but given that we're in the post-YouTube world you can find all manner of excellent tutorials that show you exactly how things are done (just press skip on the video if you encounter the standard arrogant, *you shouldn't do it if you're not already and expert with the best possible tools available* attitude). The short story; heat component lead, add solder to lead and remove the hot end within a second or so (keep fingers away from boiling hot metal).

Take your time, there's no need to hurry things along and build everything in a single night or even a single week - those that don't take things slow are doomed to burn their fingers and accidentally create solder bridges in the wrong places! After you're done, check the default jumper on the various modules so that you have a known good configuration before moving along to the next step.

![UI Module](https://github.com/tebl/RC-ONE/raw/master/gallery/2019-10-24%2020.45.43.jpg)
![CPU Module](https://github.com/tebl/RC-ONE/raw/master/gallery/2019-10-24%2020.31.04.jpg)
![Keypad and Keypad MX](https://github.com/tebl/RC-ONE/raw/master/gallery/2019-11-19%2019.06.00.jpg)

### 4.2> Before applying power
Before powering it up by connecting, there's a few things that should be done in order to minimize the potential for any accidental damage to the system.

#### 4.2.1> Visual inspection
Start by doing a visual inspection of all things soldered and plugged into place, does it look like you missed a solder point? Is there a hint of even a tiny hint of solder that bridges across to somewhere it shouldn't?

Examine the ICs after plugging them in, does the alignment match up with the symbols on the board itself and have you made sure that none of the pins got bent underneath the socket instead of going down into it?

#### 4.2.2> Check for continuity (in all the wrong places)
At point you'll need a multimeter, but given that you've committed to building an actual computer by soldering it together I sort assume you already have one on hand. If you don't, then you don't even need those expensive Fluke thingies - the $10 version from your whatever chain that sells cheap tools, will probably be more than you need.

Find the continuity setting, it's the one that makes an irritating noise every time you touch both of the probes together. If you in a similar fashion to the aforementioned Aardvark, is a nocturnal sort of fellow [or gal] then your significant other'll probably learn to hate it the morning rolls around!

Check out the [datasheets](https://github.com/tebl/RC-ONE/tree/master/documentation/datasheets) found within the documentation-folder, look at the pinouts listed. An example for the 74Ls138 is shown below, the thing I'd like you to note down at the moment is where pin 1 is located (this'll always be your main reference point), the way the pins are numbered and especially for this section of the manual - the location of the pins labelled *VCC* and *GND*.

![74LS138 Pinout](https://github.com/tebl/RC-ONE/raw/master/documentation/images/74ls138_pinouts.png)

Put one of the probes on *VCC* and the other on *GND*, if the multimeter makes a beeping sound then you've got a short in the worst of places. Never attempt to power up a system in this state before finding the short, you'll either overheat the power supply or most likely turn parts of the PCB into a shortlived heater until some of the traces turn into ash (I'm not joking about this part)!

Do this for all of the modules you've built, preferably without them connected together so that any faults of this kind can be narrowed down even further.

**NB!** This is probably the point where you'll slot together the various modules using cables, baling wire and probably not a hammer (I may be judgning you, but only if you let me know you've done it this way). Pay careful attention so that none of the pins are out of alignment, this is very important!

![Pin alignment](https://github.com/tebl/RC-ONE/raw/master/gallery/2019-10-24%2020.45.26.jpg)

#### 4.2.3> Connect the power
Connect a 5V DC power supply, it should have a barrel connector and you must use one that has a positive center pin - there should be an illustration on the power supply itself that makes this perfectly clear. Note however that as a retro-computer afficianado you may have several negative-center power supplies in your collection, this will instantly and more than like permanently kill all the ICs on your boards!

All good so far? Good.

Connect the power, but only do so for a short while at first; observe the board carefully, is something smoking? If so, replace those components before powering it up and attempt to read up on the schematic in order to determine the root cause.

### 4.3 Connect the power (for real this time)
Connect the power as previously described, did something happen? At the very least you should have a green (or whatever colour you selected) LED lighting up on the keypad of your choice. Some of the 7-segment displays might even light up, but this is mainly due to the randomness of the computer being in an unknown state until it is properly reset.

Other computers you've worked with probably includes an automatic reset when you power it on, the RC6502 has one in the form of a 555-timer if you're wondering how that'd work in a circuit (with the RESET-signal present on the backplane connector, you can actually make a separate expansion that does this for you if you'd like to). Anyway, the KIM-1 didn't include one - and so the RC-ONE in its current revision doesn't either. You need to manually press the *RESET* button on the keypad in order to reset the computer. Hopefully the displays light up, letting you bask in the electronic afterglow of having a computer that more or less runs!

**NB!** Make sure that the *SST* switch is off, this means that the DIP-switch/slide-switch or something else entirely, that has a direction, is in the left position.

### 4.4> When things fail
If you've gotten to this point and everything works;
> Congraturation. This is happy end. Thank you. Return to starting point. Challenge again!

Didn't work at all or just some things working? If nothing is working, return to the start of chapter 4 and start there again - read the pinouts and use your multimeter to ensure that each of the chips are receiving somewhere in the vicinity of 5v on the pins labelled VCC (some might say VDD though - same thing, different conventions of naming things). Beginners tip; put the black one on somewhere named *GND* and the red on the one you're measuring, check manual for which setting to use when measuring voltage.

Find the reset pin, ensure that it is also 5v unless you're sitting on the *RESET*-button (then, why would you choose to do that?). Do the same for the clock pins on the 6502 (pins 37 and 39), the multimeter will average the reading while the clock swings between VCC and GND so you'll get around 2.5v and this is a good indication of things working without needing exotic equipment such as an oscilloscope. You probably won't be able to do most of that without removing the UI module, but that's OK as long as you don't do that with power connected!

Hopefully at this point something works, even if not perfectly; a consitent glitch, though scary at first is usually a very good sign as that means you're almost at the finish line. All that would remain now is around 99% of all learning with electronics: even more troubleshooting in the next sub-section!

If everything worked, skip right to the software parts - or - keep reading more for further extrapolated knowledge based on very little actual knowledge!

#### 4.4.1> Try some more logic
OK, so it didn't work the second, third or fourth time... don't despair, this is what the hobby is all about! Kim Jong-Un supposedly climbed the highest mountain in North-Korea waring formal shoes, so surely you can conquer the only KIM that mattered in the western world - the KIM-1 and it's later offspring, the RC-ONE!

The next step is attempting to apply structured logic to all of your troubles confined to the inner workings of the RC-ONE. This starts by printing out the schematic for each of the modules needed - print it in the largest sheet of paper you can force into your printer. Actual paper means you can make notes on said paper, larger paper means you can fit even more notes on said paper and finally you can study all of them in the peace and quiet that is required. Like the Aardvark you need to burrow into the logic, roll around in it and hopefully pieces'll start to come together.

![Paper debugging](https://github.com/tebl/RC-ONE/raw/master/documentation/images/schematic_debugging.jpg)

You don't need to understand all of it, you just need to understand the basics of it all to get started. Schematics make it easier to understand the logic in a design, it dictates how everything is connected and to what. Take note of the pin numbering used, remembering how things are numbered from previous chapters, and start continuity testing between the corresponding points on the board to see if things beep as expected or possibly without them being supposed to beep.

Note down on the paper things you've checked and are sure about, if you feel like starting a new pass then just get a new printout and start from there again. Try to narrow things down, anticipate what you think those components do and, if possible, how a fault at that point might look in a system that is not working.

I've also started putting things related to troubleshooting in a separate [Troubleshooting](https://github.com/tebl/RC-ONE/blob/master/Troubleshooting.md)-document as well, it'll be a bit more on the dry side though it might quite possibly contain that little extra nugget of wisdom required to get further in the build process. On that note, here ends the construction section of the manual. Sadness all around, but hopefully there's a happy little RC-ONE computer at the end of it all!

## 5> The software side of life