# RC-ONE Real Time Clock (RTC)

**This design is untested!**

Wanted a Real Time Clock, but have been a hard time locating a suitable circuit for it since most of them either contain batteries that ran out a decade ago or are based on I2C or SPI (which I don't feel like bit-banging now or possibly ever). Appearantly there is a chip called DS12885 that is suitable and was readily used on the XT and AT line of computers, so they are cheap and plentiful though have a multi-plexed bus that is probably why it haven't been much used for SBC builds. Did however find an article in [Elektor Electronics from april 1985](https://www.americanradiohistory.com/UK/Elektor/80s/Elektor-1985-04.pdf) that uses it, so I've tried my best to adapt it for use here.