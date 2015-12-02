# JJ's short 2-page CV

Below this is the original README for the template I'm using. While I'm at it, I'll throw in a few things you probably will have to install before using it

* This template uses XeLaTeX, not the standard LaTeX. So `sudo apt-get install texlive-xetex`
* Besides, XeLaTeX seems to use `biber`, not BibTeX. So `sudo apt-get install biber`
* Default font has been changed to Goudy BookLetter 1911. You'll have
  to install if (`ttf-goudybookletter` package). I took out XITS Math but the fallback font was not
  instaled either, so you'll have to install it.
* You will also have to install `texlive-fonts-extra` and `texlive-math-extra` 

Sounds like hard work for a resumé, right? Well, you will have to do
it only once and then you can use all the time you want. I haven't
managed to make it work for older versions of Ubuntu, though.

## Generate PDF

	xelatex cv.tex
	biber cv
	xelatex cv.tex

That's it.

## About
Latest version of my CV, typesetted in Helvetica and using colors inspired by Monokai (there is an `print` option which renders in black and white, and reverts the header to dark on light, if printing on paper is needed).

Uses TikZ for the header, XeTeX and fontspec to use Helvetica Neue, biblatex to print my publications and textpos for the aside.


## License

Copyright (C) 2012, Adrien Friggeri
(c) 2014 JJ Merelo

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
