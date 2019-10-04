# Title: Demo script in R
# Description: We are using a script as a demo in Stat 133
# Input: We are taking inputs of data tables
# Output: We are sending out a summary

library(dplyr)
library(ggplot2)

nba2018 <- read.csv("~/gitdemo/data/nba2018-players.csv")
head(nba2018)
warriors <- filter(nba2018, team == "GSW")
write.csv(warriors, "~/gitdemo/data/warriors.csv", row.names = FALSE)

sink(file = '~/gitdemo/output/data-structure.txt')
str(nba2018)
sink()

sink(file = '~/gitdemo/output/summary-warriors.txt')
summary(warriors)
sink()

sink(file = '~/gitdemo/output/summary-lakers.txt')
summary(filter(nba2018, team == "LAL"))
sink()

jpeg(filename = "~/gitdemo/images/histogram-age.jpeg", width = 600, height = 400)
hist(warriors$age)
dev.off()

png(filename =  "~/gitdemo/images/scatterplot2-height-weight.png", pointsize = 5)
plot(nba2018$height, nba2018$weight, pch = 20, xlab = 'Height', ylab = 'Height')
dev.off()

ggplot(nba2018, aes(x = height, y = weight)) + geom_point() + facet_grid(. ~ position)
ggsave("~/gitdemo/images/height_weight_by_position.pdf")
dev.off()
