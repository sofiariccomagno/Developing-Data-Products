library(shiny)
shinyUI(fluidPage(
  titlePanel("Choices"),
  sidebarLayout(
    sidebarPanel(
      h3("Which takeaway should you have tonight?"),
      checkboxInput("burger", "Burger"),
      checkboxInput("chinese", "Chinese food"),
      checkboxInput("fc", "Fish and Chips"),
      checkboxInput("friedchicken", "Fried Chicken"),
      checkboxInput("indian", "Indian food"),
      checkboxInput("italian", "Italian food"),
      checkboxInput("japanese", "Japanese food"),
      checkboxInput("kebab", "Kebab"),
      checkboxInput("mexican", "Mexican food"),
      checkboxInput("thai", "Thai food"),
      submitButton("Go!")
    ),
  mainPanel(
    tabsetPanel(type="tabs",
            tabPanel("App","Tonight you're having:", br(),textOutput("text1")),
            tabPanel("Documentation", br(), textOutput("text2"))
  ))
  )
))
