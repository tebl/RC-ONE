# Manual
There are manuals and this one is mine, all mine and has all the best words with the exception of the parts actually written by other people. A lot of the best words might also never find a way into this manual, mostly because I never found a natural way of mentioning the Aardvark in a document describing the inner workings of the computer that might one day be known as the *RC-ONE*.

What a the *RC-ONE* actually is, well that is what this project is all about. Mostly, it is functional replica of the original MOS KIM-1 and looks something like the following mess of wires:

![RC-ONE Standalone](https://github.com/tebl/RC-ONE/raw/master/gallery/2019-10-24%2020.47.25.jpg)

Somewhat telling for many of the projects I've fiddled with, I've mostly tended towards recreating equipment I could not possibly manage to finance such as the *RC6502 Apple 1 replica* while others such as the *RC1802 Cosmac ELF* was chosen based on the availability of existing software and documentation. The RC-ONE being based on the KIM-1 means that the computer fits neatly into both categories - so I could not buy afford an actual one to try out things for myself before building this one, but I could read all about it!

While we're on the whole *reading bit* and coming back to the topic of this supposedly being called a manual, most of the ancient wordy tomes of knowledge mentioning the computer will probably do a better job of conveying its capabilities through step-by-step guidance - so it is my hope that this manual won't have to be much longer than its actual length.

# 1> Background
As already mentioned, I don't have one, yet I always wanted one - mostly because I want stuff that I can't have. At the top of my list of the most *wantiest* (is that even a word?) is the original MOS KIM-1!

## 1.1> History of MOS KIM-1
As the story goes, without going so far as to actually fact-check things before repeating them from a spotty set of memories of someone born half a decade later... MOS was a company originally selling digital calculators, these were mostly constructed using on integrated circuits (ICs) produced by Texas Instrument (TI), but when TI themselves started undercutting the market by producing calculators for themselves they were soon forced to find other ways of earning a profit.

The object therefore was to create a new calculator they could produce themselves, so a new chip responsible for doing the calculations was made. However, the chip that was designed - the 6502 - was much more actually more advanced than what was necessary for a simple calculator due to the foresight of its designer, the legendary Chuck Peddle. It wasn't designed to be a simple chip capable of performing only a set number of calculations, it was a CPU capable of doing a lot more than that - it was able to do CPU-y things!

Anyway, the calculators weren't actually flying off the shelves and the 6502 itself didn't see much third-party use either - mostly because hardware designers didn't know what to do with it either! In order to make 6502 an attractive purchase they needed something to show off it's capabilities, something that buyers could toy around with in order to learn why they needed to base their next product around it - the MOS KIM-1 was what they came up with!

The KIM-1, standing for **K**eyboard **I**nput **M**onitor, probably didn't strike people as much more than an ordinary calculator kit though its success was in a market they probably never expected to exist in any substantial form; the home computer market!

Four paragraphs on overtime, a company called Commodore was struggling to make a satisfactory profit on the steadily declining market for mechanical typewriters, so they ended up buying MOS. The MOS KIM-1 became the Commodore KIM-1, later expanded to become the Commodore PET and so forth until we end up with my favourite computer of all time - the Commodore 64!   

Did you need to know all that? Probably not. 

## 1.2> Specifications
The heart of the KIM-1 computer was always its CPU, a MOS-branded 6502 CPU clocked at a whopping 1 Mhz. Without even attempting to account for the difference in the level of sophistication, but only going by pure clock speed it's at least 2000 times slower than my already ancient laptop. A 3$ Arduino will be actually be a lot faster than what this thing is clocked in at. On the other hand, and this is where it really gets interresting - that's still a million tiny tasks that could potentially be performed every second!

It had a single KB of static memory available, plus 128 words worth of memory giving it a total of 1152 bytes of RAM. I could return to the case of my sad laptop at this point and just mention that it has around 4 million times that, but the 1K wasn't actually all that much back then to be honest. That's after all only a 100 monkeys typing things in for 11.52 seconds before running out, accounting for adressing difficulties due to non-continuous memory and overrunning system memory not accounted for. The system monitor, the software allowing you to interact with the system is stored in 2K of ROM. 

In the category of I/O, you got a bit of everything in the package thanks to the versatility of two 6530 chip originally found on the system. The first one is dedicated to handling the keypad, serial TTY, the tape interface and outputting data to the six seven segment displays. The last 6530 was yours to do with as you wanted, that's 15 bi-directional I/O lines that could be used to change the world - one short-circuit at a time!