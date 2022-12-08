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
    p("The first interactive visualization, Limb Movement over Time in Sleep, and the second interactive visualization, Time Slept over Recorded Stress Levels, both display clear patterns in the data. The first visualization depicts some yellow lines and a blue line. The yellow lines are the points from the dataset, and the blue line illustrates the correlation between these points, showing a negative, nearly linear slope. This means that the more sleeping hours pass, the less limb movement there will be throughout the night, reflecting an indirect relationship between the two variables. This can also be due to the sleep REM cycle, which reduced limb movement in deep sleep. Limb movement can also be a sign of sleep disruption, which is more likely to occur at earlier points in the sleep cycle as people are easier to wake up. The second interactive visualization compares time slept for recorded stress levels in a stacked bar graph. At stress level 1, the person is averaging six to seven hours. At level 2, hours are ranging from to 3.5 to 4.6, with an outlier at 2.5 hours. At stress level 3, the hours are much shorter, within a range of 0.8 to 2.0 hours, with two outliers around 0.2 hours. There is clear evidence for a consistent decrease in sleep hours as stress levels continue. It is probable to assume that as stress levels get higher, a person’s hours asleep will continue to decrease and quality will be reduced as well. As mentioned before, exercise can be a great way to release stress during the day, which can assist a person in getting more quality and longer sleep at night.")
  )
)

report <- tabPanel(
  "Report",
  titlePanel("Report"),
  
  mainPanel(
    p("Sleeping is really important as it helps people function correctly in their daily lives. 
      As college students we do not get enough sleep sometimes due to homework, work, and all 
      the things that we need to do. It is difficult to find a balance especially if you are 
      away from home for the first time and are trying to figure things out. With all these, 
      many students get anxiety, depression or get other health issues."),
    p("Our group was struggling at first to find a topic for our project. We couldn’t 
      decide and as we researched we were all mentioning how tired we were. There the idea of 
      doing our project on sleep came. We even called our group ‘Team No Sleep’ because that’s 
      how we all felt. We thought that if we didn’t find any good information we had a chance 
      to change it after the first part of the project, which was the proposal."),
    p("The next time we met and researched data frames together we saw that there was actually 
      research done on sleep and it was mainly connected with exercise. We knew that exercise 
      does not only help keep the body in shape but it also helps you be more healthier so then 
      we wanted to focus on this."),
    p("Our project focused on finding how exercising affects sleep and your health. We wanted to 
      prove our hypothesis and therefore use the columns of the data set on time of sleep, limb 
      movement, and stress level. Through the research and coding being done our questions were 
      answered and our hypothesis was proved. The more stressed you are the less sleep you will 
      get (can even get sleep deprivation) and the more you work out the more tired your body is 
      so you will be more likely to get a better restful sleep."),
    p("There is research being done on this and although exercising does not stop you from getting 
      sick or from getting a good night sleep every day, it does help many people. The main thing 
      we wanted to leave our audience with was that although it is impossible to sleep well and 
      enough every night, sleep is important and should be prioritized at times. It will cause you 
      to wake up in a better mood, be more active, and function better. Exercising is also important 
      and can help you get a better sleep and can help you stay healthier.")
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
