# First chart for project
library("ggplot2")
df <- read.csv(file = '~/info201/assignments/project-pmgialis/data/SaYoPillow.csv')

data.frame(df)

graph1 <- ggplot(data = df, mapping = aes(x = lm, y = sr.1)) +
  geom_point()
graph1
