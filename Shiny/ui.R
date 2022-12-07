library(shiny)
library(plotly)
library(markdown)
library(DT)
library(shinythemes)

# creating introductory page
intro <- tabPanel(
  "Introduction",
  titlePanel("Introduction"),
  
  mainPanel(
    p()
  )
)

# creating interactive visualization page 1
vis1 <- tabPanel(
  "Interactive Visualization 1",
  titlePanel("Interactive Visualization 1"),
  sidebarLayout(
    sidebarPanel(),
    mainPanel(
      plotlyOutput("plot1"),
      p("This chart... ")
    )
  )
)

# creating interactive visualization page 2
vis2 <- tabPanel(
  "Interactive Visualization 2",
  titlePanel("Interactive Visualization 2"),
  sidebarLayout(
    sidebarPanel(sliderInput("stress_range", "Stress Range (Levels 0-4)", 0, 4, value = c(0, 4))),
    mainPanel(
      plotlyOutput("plot2"),
      p("This chart... ")
    )
  )
)

summary <- tabPanel(
  "Summary",
  titlePanel("Summary"),
  
  mainPanel(
    p()
  )
)

report <- tabPanel(
  "Report",
  titlePanel("Report"),
  
  mainPanel(
    p()
  )
)

# Define UI for application
ui <- navbarPage(
  theme = shinytheme("superhero"),
  title = "Sleep Data [WIP]",
  intro,
  vis1,
  vis2,
  summary,
  report
)
