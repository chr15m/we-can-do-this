![We Can Do This book cover](https://raw.github.com/chr15m/we-can-do-this/master/we-can-do-this-cover.png)

I made a [book](http://www.blurb.com/b/4874623-we-can-do-this) for my daughter Scout in a night-before-a-long-flight-what-if-i-die-on-the-plane semi-rational frenzy. I cobbled it together from [an earlier blog post](http://mccormick.cx/news/entries/scout-mccormick), written during the week after she was born.

Build
-----

The Makefile builds the book from source SVGs which were created with a text editor and [Inkscape](http://inkscape.org/). [Ghostscript](http://www.ghostscript.com/) and [PDFtk](http://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/) are used by the Makefile to get the pages into a format suitable for the Blurb JIT printing process. Particularly tricky was getting the PDFX-3 format that the site requires to work correctly, but thanks to Free Software it all came good in the end.

`sudo apt-get install inkscape make pdftk ghostscript` will install the right packages on Debian GNU/Linux or Ubuntu so that you can use this as a template for your own book. The SVG images for the pages are in the `pages` subdirectory and the cover is we-can-do-this-cover.svg. This script builds a "Small Square" (7 × 7 in / 18 × 18 cm) book but you should be able to change the source SVG sizes for different sized books.

The font is my handwriting. The original [TTF is here](http://mccormick.cx/fonts/).
