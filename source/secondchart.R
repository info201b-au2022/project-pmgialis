# Second chart for project

library(ggplot2)
library("plotly")

library(ggplot2)

data.frame(df)

graph2 <- ggplot(data = df) +
  geom_col(
    mapping = aes(x = sl, y = sr.1),
    color = "light blue") +
  labs(x = "Stress Level", y = "Sleeping") +
  xlim(0,5) +
  ylim(0,20)
graph2

