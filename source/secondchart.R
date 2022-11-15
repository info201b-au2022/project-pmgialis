# Second chart for project

library(ggplot2)
library("plotly")

data.frame(df)

graph2 <- plot_ly(
  data = df,
  x = ~sl,
  y = ~sr.1,
  type = "bar",
  alpha = 0.5
) %>%
  layout(
    title = "Amount of sleep depending on the stress level",
    xaxis = list(title = "Stress Level"),
    yaxis = list(title = "Sleeping Hours")
    )


# Short Paragraph
  # The purpose of this chart is to show how stress levels affect the amount 
  # of sleep that a person has. One of our questions that we wanted to answer was
  # how different life factors affect the amount of sleep a person gets. In this
  # graph you can hover over the bar chart and it shows the mount of sleeping hours
  # you can get depending on your stress level. This is based on the dataframe and 
  # it shows how if your stress level is 0 the highest amount of hours that this
  # person got was above 8 hours but once the stress level increased the amount of 
  # hours decreased.