library("vistime")

data <- read.csv("data/programming.csv")


g <- gg_vistime(data, col.event="Item", col.start="Start.Date", col.end="End.Date", col.group="Group") + theme(axis.text.x = element_text(angle=90, color='blue4',size=14) )+coord_flip()

g.d <- ggplot_build(g)

g.d$data[[4]]$angle <- 90

rebuilt <- ggplot_gtable(g.d)

png(filename="img/timeline.png", width=240, height=960)
plot(rebuilt)
dev.off()


