library(shiny)
library(plotly)
library(dplyr)

sleep_data <- read.csv(file = '../project-pmgialis/data/SaYoPillow.csv')

shinyServer(function(input, output) {

    output$plot1 <- renderPlotly({
      ggplotly(graph1)
    })
    
    output$plot1 <- renderPlotly({
      time_range <- input$time_range
      
      df <- filter(sleep_data, sr.1 >= time_range[1], sr.1 <= time_range[2])
      
      ggplot(data = df) +
        geom_point(mapping = aes(x = sr.1, y = lm,),
                   color = "yellow") +
        geom_smooth(mapping = aes(x = sr.1, y = lm)) +
        labs(
          x = "Sleeping Hours",
          y = "Limb Movement",
          title = "Limb Movement Over Time Asleep"
        )
    })
    
    output$plot2 <- renderPlotly({
      stress_range <- input$stress_range
      max_hours <- input$max_hours
      
      df <- filter(sleep_data, sl >= stress_range[1], sl <= stress_range[2],
                   sr.1 <= max_hours)
      
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
