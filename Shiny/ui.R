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
    p("Our project is about how exercising helps improve your sleep and health. 
      Some of the questions that we had and that we mainly focus our project in
      is on how much does stress affect your sleep? Another question was that in 
      the data frame that we found there where levels of the limb movement. We 
      decided to use this data as a correlation with exercise. Therefore in the 
      bar graph shown in this project there is data shown about stress and the 
      amount of sleep. The healthier you are which can be improved by working out
      the better sleep you will obtain.")
  )
)

# creating interactive visualization page 1
vis1 <- tabPanel(
  "Interactive Visualization 1",
  titlePanel("Interactive Visualization 1"),
  sidebarLayout(
    sidebarPanel(sliderInput("time_range", "Range of Hours Slept", 0, 9, value = c(0, 9))),
    mainPanel(
      plotlyOutput("plot1"),
      p("This chart displays the average limb movement for the amount of time slept. The slider
        allows for a specified range of hours slept to see the slope of the smooth line, and how
        the data changes by the hour.")
    )
  )
)

# creating interactive visualization page 2
vis2 <- tabPanel(
  "Interactive Visualization 2",
  titlePanel("Interactive Visualization 2"),
  sidebarLayout(
    sidebarPanel(sliderInput("stress_range", "Stress Range (Levels 1-3)", 1, 3, value = c(1, 3)), 
                 sliderInput("max_hours", "Max Hours Slept", 1, 10, value = 8)),
    mainPanel(
      plotlyOutput("plot2"),
      p("This chart displays the amount of hours slept for each stress value. The number of 
        hours slept per observation and the number of observations are shown for each stress 
        level. The stress level slider allows for isolation of stress levels, and the max
        hours slider shows how the observations stack up against one another with fewer hours
        of sleep.")
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
