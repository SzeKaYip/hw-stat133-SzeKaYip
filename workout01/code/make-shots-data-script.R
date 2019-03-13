title: shots-data
description:data_prepation_that_contain_the_variables.
input(s):the_raw_5_fata_csv_file_for_each_player
output(s):to_create_a_global_table

curry <- read.csv("../data/stephen-curry.csv", stringsAsFactors = FALSE)
andre <- read.csv("../data/andre-iguodala.csv",stringsAsFactors = FALSE)
green <- read.csv("../data/draymond-green.csv",stringsAsFactors = FALSE)
thompson<- read.csv("../data/klay-thompson.csv",stringsAsFactors = FALSE)
kevin <- read.csv("../data/kevin-durant.csv",stringsAsFactors = FALSE)

curry$name <- c("Stephen Curry")
curry$name <- as.factor(curry$name)

andre$name <- c("Andre Iguodala")
andre$name <- as.factor(andre$name)

green$name <- c("Graymond Green")
green$name <- as.factor(green$name)

thompson$name <- c("Klay Thompson")
thompson$name <- as.factor(thompson$name)

kevin$name <- c("Kevin Durant")
kevin$name <- as.factor(kevin$name)



curry$shot_made_flag[curry$shot_made_flag == "n"] <- "shot_no"
andre$shot_made_flag[andre$shot_made_flag == "n"] <- "shot_no"
green$shot_made_flag[green$shot_made_flag == "n"] <- "shot_no"
thompson$shot_made_flag[thompson$shot_made_flag == "n"] <- "shot_no"
kevin$shot_made_flag[kevin$shot_made_flag == "n"] <- "shot_no"

curry$shot_made_flag[curry$shot_made_flag == "y"] <- "shot_yes"
andre$shot_made_flag[andre$shot_made_flag == "y"] <- "shot_yes"
green$shot_made_flag[green$shot_made_flag == "y"] <- "shot_yes"
thompson$shot_made_flag[thompson$shot_made_flag == "y"] <- "shot_yes"
kevin$shot_made_flag[kevin$shot_made_flag == "y"] <- "shot_yes"


curry$minute <- (12*curry$period - curry$minutes_remaining)
andre$minute <- (12*andre$period - andre$minutes_remaining)
green$minute <- (12*green$period - green$minutes_remaining)
thompson$minute <- (12*thompson$period - thompson$minutes_remaining)
kevin $minute <- (12*kevin$period - kevin$minutes_remaining)

summary(curry)
sink("../output/Stephen-Curry-summary.txt")
summary(curry)
sink()

summary(andre)
sink("../output/Andre-Iguodala-summary.txt")
summary(andre)
sink()

summary(green)
sink("../output/Graymond-Green-summary.txt")
summary(green)
sink()

summary(thompson)
sink("../output/Klay-Thompson-summary.txt")
summary(thompson)
sink()

summary(kevin)
sink("../output/Kevin-Durant-summary.txt")
summary(kevin)
sink()

table1 <- data.frame(rbind(andre,green,kevin,thompson, curry))

write.csv(
  x= table1,
  file='../data/shots-data.csv')


summary(table1)
sink("../output/shots-data-summary.txt")
summary(table1)
sink()













