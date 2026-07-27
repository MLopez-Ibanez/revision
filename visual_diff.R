#!/usr/bin/env Rscript

options(browser="google-chrome")
library(htmlwidgets)

args <- commandArgs(trailingOnly = TRUE)
old <- args[1]
new <- sub("-([0-9])\\.png", "-new-\\1.png", old)
w <- diffviewer::visual_diff(old, new)
html_file <- tempfile(fileext = ".html")
saveWidget(w, html_file, selfcontained = TRUE)
browseURL(html_file)
cat("Press Enter after closing the viewer...\n")
readLines("stdin", n = 1)

