# Summary
library(dplyr)

df <- read.csv(file = '../data/SaYoPillow.csv')

# The average number of hours slept
mean_hours <- function() {
  return(prettyNum(mean(df$sr.1), big.mark = ",", scientific = FALSE))
}

# The average resting body temperature in Fahrenheit
mean_temp <- function() {
  return(prettyNum(mean(df$t), big.mark = ",", scientific = FALSE))
}

# The average number of snores per breath
breaths_per_snore <- function() {
  return(prettyNum(mean((df$rr*60 / df$sr)), big.mark = ",", scientific = FALSE))
}

# The average heart rate
mean_heart_rate <- function() {
  return(prettyNum(mean(df$hr), big.mark = ",", scientific = FALSE))
}

#The average limb movement in movements/hour
mean_move <- function() {
  return(prettyNum(mean(df$lm), big.mark = ",", scientific = FALSE))
}
