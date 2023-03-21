#!/usr/bin/env Rscript

library(rmarkdown)
library(knitr)
args = commandArgs(trailingOnly=TRUE)

print(args)

render(args[1],
       output_format = "md_document",
       output_dir = "text",
       output_file=paste0(args[1],".out"))
