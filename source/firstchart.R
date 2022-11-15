# First chart for project
library("ggplot2")
df <- read.csv(file = '~/info201/assignments/project-pmgialis/data/SaYoPillow.csv')

data.frame(df)

graph1 <- ggplot(data = df) +
  geom_point(mapping = aes(x = lm, y = sr.1,),
             color = "yellow") +
  geom_smooth(mapping = aes(x = lm, y = sr.1))
graph1


# Short Paragraph 
  # The purpose of this chart is to show how the limb movement affects the sleeping hours.
  # Limb movement which can be considered how much the person is exercising (x) is affecting
  # how much the person is sleeping (y). This chart is answering our question about how those
  # movement affect the sleep.
