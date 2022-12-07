library(shiny)
library(plotly)
library(dplyr)

source("../source/firstchart.R", local = TRUE)
source("../source/secondchart.R", local = TRUE)

shinyServer(function(input, output) {

    output$plot1 <- renderPlotly({ggplotly(graph1)})
    output$plot2 <- renderPlotly({ggplotly(graph2)})

})
