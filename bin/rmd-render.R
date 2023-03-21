#!/usr/bin/env Rscript

library(rmarkdown)
library(knitr)
args = commandArgs(trailingOnly=TRUE)

render(args[1],
       output_dir = "text")
