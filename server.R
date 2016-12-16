#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate CYL based on input$MPG from ui.R
    x    <- mtcars[, 1] 
    mpg <- seq(min(x), max(x), length.out = input$MPG)
    
    # draw the histogram with the specified value of mpg

    hist(x, breaks = mpg, col = 'darkgray', border = 'white', main=paste("Histogram of MPG"),xlab="MPG")
    
  })
  
})
