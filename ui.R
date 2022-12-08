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
                 sliderInput("max_hours", "Max Hours Slept", 1, 8, value = 8)),
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
    p(strong("Codename: "), "No Sleep"),
    p(strong("Project Title: "), "Sleeping Habits"),
    p(strong("Authors: "), "Paul Gialis, Anahi Villanueva, Sophia Ylinen"),
    p(strong("Affiliation: "), "INFO-201: Technical Foundations of Informatics - 
      The Information School - University of Washington"),
    p(strong("Date: "), "Autumn 2022"),
    p(strong("Abstract: "), "In this project, we will be delving into the implications of 
      sleep quality and quantity on human health. We will be using already recorded sleep data, 
      and analyzing trends in each of the categories."),
    p(strong("Keywords: "), "sleep, exercise, health"),
    p(strong("Introduction: "), "Sleep is part of human well-being, and is necessary in order 
      to function throughout the day. It is believed that adults need less hours of sleep than 
      children who need to develop. We think that sleep is important if you want to be able to 
      think, learn, and act to the best of your ability. Many college students, like us, do not 
      get enough sleep, so we wanted to expand on this idea. "),
    p(strong("Problem Domain: "), "Because sleep is crucial to life, analyzing how different 
      varieties of sleep affect human health is extremely important. In today’s day, people 
      often normalize fewer hours of sleep, and ignore the ramifications of this choice. As 
      people often do not reach their recommended amount of sleep each night, the world becomes 
      increasingly more reliant on more waking hours, creating health concerns. "),
    p(em("Direct Stakeholders: "), "Direct Stakeholders: The direct stakeholders are those who 
      directly interact with the system. For our project some of the direct stakeholders are 
      those that work in the medical fields as they may need some data on sleep and thus, they 
      can interact directly with our system. "),
    p(em("Indirect Stakeholders: "), "Indirect Stakeholders: Indirect stakeholders are 
      different from the direct stakeholders. Indirect stakeholders refers to those who may be 
      affected by a system without using it themselves. Some of the indirect stakeholders for 
      our project are citizens. If people don’t learn about the importance of sleep they will 
      continue to normalize sleeping less hours and this will affect their health."),
    p(strong("Research Questions")),
    p(em("Why is sleep important?"), "Knowing how sleep affects our daily lives we can better 
    understand how what we do affects it."),
    p(em("How does sleep work?"), "What happens in our brains and to our bodies as we sleep. 
      It’s important to know this as this helps us understand if not sleeping enough for a day 
      or several days can affect how we think and learn. "),
    p(em("Does exercise increase or decrease how sleepy a person is?"), "We want to focus on 
      how the activities we do, especially those that can get a human tired just like moving a 
      lot throughout the day or working out, has any effect on our sleep."),
    p(strong("The Dataset: "), ""),
    p(strong("Introduction: "), "Sleeping is really important as it helps people function correctly in their daily lives. 
      As college students we do not get enough sleep sometimes due to homework, work, and all 
      the things that we need to do. It is difficult to find a balance especially if you are 
      away from home for the first time and are trying to figure things out. With all these, 
      many students get anxiety, depression or get other health issues."),
    p("Our group was struggling at first to find a topic for our project. We couldn’t 
      decide and as we researched we were all mentioning how tired we were. There the idea of 
      doing our project on sleep came. We even called our group ‘Team No Sleep’ because that’s 
      how we all felt. We thought that if we didn’t find any good information we had a chance 
      to change it after the first part of the project, which was the proposal."),
    p(strong("Findings"),"The next time we met and researched data frames together we saw that there was actually 
      research done on sleep and it was mainly connected with exercise. We knew that exercise 
      does not only help keep the body in shape but it also helps you be more healthier so then 
      we wanted to focus on this."),
    p(strong("Discussion"),"Our project focused on finding how exercising affects sleep and your health. We wanted to 
      prove our hypothesis and therefore use the columns of the data set on time of sleep, limb 
      movement, and stress level. Through the research and coding being done our questions were 
      answered and our hypothesis was proved. The more stressed you are the less sleep you will 
      get (can even get sleep deprivation) and the more you work out the more tired your body is 
      so you will be more likely to get a better restful sleep."),
    p(strong("Conclusion"),"There is research being done on this and although exercising does not stop you from getting 
      sick or from getting a good night sleep every day, it does help many people. The main thing 
      we wanted to leave our audience with was that although it is impossible to sleep well and 
      enough every night, sleep is important and should be prioritized at times. It will cause you 
      to wake up in a better mood, be more active, and function better. Exercising is also important 
      and can help you get a better sleep and can help you stay healthier."),
    p(strong("Acknowledgements: "), "Thank you Sam for providing our group with the dataset
      that we used!"),
    p(strong("Reference: "), "Rachakonda, L. (2022, February 15). Human stress detection in and 
      through sleep. Kaggle. Retrieved December 8, 2022, 
      from", a(href="https://www.kaggle.com/datasets/laavanya/human-stress-detection-in-and-through-sleep?select=SaYoPillow.csv", "https://www.kaggle.com/datasets/laavanya/human-stress-detection-in-and-through-sleep?select=SaYoPillow.csv"))
  )
)

# Define UI for application
ui <- navbarPage(
  theme = shinytheme("superhero"),
  title = "Sleeping Habits",
  intro,
  vis1,
  vis2,
  summary,
  report
)
