old <- "tests/test-todonotes-1.png"

options(browser="google-chrome")
new <- sub("-([0-9])\\.png", "-new-\\1.png", old)
diffviewer::visual_diff(old, new)

