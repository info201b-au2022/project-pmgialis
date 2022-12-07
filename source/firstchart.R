# First chart for project

library("ggplot2")

df <- read.csv(file = '../data/SaYoPillow.csv')

graph1 <- ggplot(data = df) +
  geom_point(mapping = aes(x = sr.1, y = lm,),
             color = "yellow") +
  geom_smooth(mapping = aes(x = sr.1, y = lm)) +
  labs(
    x = "Sleeping Hours",
    y = "Limb Movement",
    title = "Limb Movement Over Time Asleep"
  )

# graph1