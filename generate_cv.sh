#!/bin/sh

xelatex cv.tex
biber cv
xelatex cv.tex
