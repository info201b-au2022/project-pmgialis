library(shiny)
library(plotly)
library(dplyr)

source("../source/firstchart.R", local = TRUE)
source("../source/secondchart.R", local = TRUE)

sleep_data <- read.csv(file = '../data/SaYoPillow.csv')

shinyServer(function(input, output) {

    output$plot1 <- renderPlotly({
      ggplotly(graph1)
    })
    
    output$plot2 <- renderPlotly({
      stress_range <- input$stress_range
      
      df <- filter(sleep_data, sl >= stress_range[1], sl <= stress_range[2])
      
      ggplotly(ggplot(data = df) +
        geom_col(
          mapping = aes(x = sl, y = sr.1),
          color = "light blue") +
        labs(x = "Stress Level", y = "Sleeping") +
        xlim(0,5) +
        ylim(0,20) +
        labs(
          x = "Stress Level",
          y = "Time Asleep",
          title = "Time Slept for Recorded Stress Levels"
        ) 
      )
    })

})
