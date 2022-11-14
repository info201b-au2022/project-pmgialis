# Summary
library(dplyr)

df <- read.csv(file = '~/Documents/info201/assignments/project-pmgialis/data/SaYoPillow.csv')

# The average number of hours slept
mean_hours <- mean(df$sr.1)
paste("The average time slept is", mean_hours, "hours.")

# The average resting body temperature in Fahrenheit
mean_temp <- mean(df$t)
paste("The average resting body temperature is", mean_temp, "degrees Fahrenheit.")

# The average number of snores per breath
beat_per_breath <- mean(df$sr / (df$rr*60))
paste("On average, there are", beat_per_breath, "snores for every breath.")

# The average heart rate
mean_heart_rate <- mean(df$hr)
paste("The average heart rate is", mean_heart_rate, "beats per minute.")

#The average limb movement in movements/hour
mean_move <- mean(df$lm)
paste("The average limb movement level is", mean_move, "movements per hour.")