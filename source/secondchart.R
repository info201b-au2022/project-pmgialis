# Second chart for project

library(ggplot2)

df <- read.csv(file = '../data/SaYoPillow.csv')

graph2 <- ggplot(data = df) +
  geom_col(
    mapping = aes(x = sl, y = sr.1),
    color = "light blue") +
  labs(x = "Stress Level", y = "Sleeping") +
  xlim(0,5) +
  ylim(0,20)

# graph2