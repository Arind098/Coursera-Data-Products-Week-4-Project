#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a Histogram of MPG
shinyUI(fluidPage(
  
  # Application title
  titlePanel("MTCars Data - Freuqncy of MPG in the Dataset"),
  
  # Sidebar with a slider input for value of MPG 
  sidebarLayout(
    sidebarPanel(
       sliderInput("MPG",
                   "Mile per Gallon:",
                   min = 1,
                   max = 100,
                   value = 10)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
