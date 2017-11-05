
library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Old Faithful Geyser Data"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),

    # Show a plot of the generated distribution
    mainPanel(h5("Use the control on the left pane to select:"),
              h5("the number of bins for the observations-"),
              h5("The chart automatically adjusts to reflect the effect of bins selected in the distribuion."),
              h5("" , a("Click here to view my ui.R & server.R code in my Github Repository", href="https://github.com/jmsogc2017/Developing-Data-Products-Assignment-4"))
              ,
       plotOutput("distPlot")
    )
  )
))



