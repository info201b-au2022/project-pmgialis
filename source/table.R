# Table summary
df <- read.csv(file = '../data/SaYoPillow.csv')
View(df)
library(stringr)
library(dplyr)
library("tidyverse")

df_group <- df %>%
  group_by(sr.1) %>%
  summarise(temps = t,
            .groups = 'drop')

round(df_group$sr.1, 1)
round(df_group$temps, 1)
View(df_group)
