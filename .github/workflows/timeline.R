library("vistime")

data <- read.csv("../../data/programming.csv")


vistime(data, col.event="Item", col.start="Start.Date", col.end="End.Date", col.group="Group")
