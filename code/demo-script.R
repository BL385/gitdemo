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

