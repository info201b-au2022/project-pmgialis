# First chart for project

library("ggplot2")

df <- read.csv(file = '../data/SaYoPillow.csv')

data.frame(df)

graph1 <- ggplot(data = df) +
  geom_point(mapping = aes(x = lm, y = sr.1,),
             color = "yellow") +
  geom_smooth(mapping = aes(x = lm, y = sr.1))

# graph1