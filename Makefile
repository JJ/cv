all: cv.pdf

cv.pdf: cv.tex data/*.csv
	xelatex cv.tex && biber cv && xelatex cv.tex

