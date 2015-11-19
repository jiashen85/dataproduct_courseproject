

library(shiny)

shinyUI(pageWithSidebar (
  headerPanel("Simple App"),
  
  sidebarPanel(
    helpText("This App is aimed to display some statistical features of two data sets: cars (50*2) and iris (150*5).
             The plot and summary tabs are based on full dataset and the table tab will change with the number of observations.
             "),
    selectInput("dataset", "Choose a dataset:", 
                choices = c( "cars", "iris")),
    
    numericInput("obs", "Number of observations to view:", 20),
    
    helpText("Note:for dimensions exceeding the above mentioned maximum dimension for each dataset, the table will remain the same. "),
    
    submitButton("Submit")
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Plot",plotOutput("plot")),
      tabPanel('Summary',verbatimTextOutput("summary")),
      tabPanel("Table",tableOutput("table"))
    )
  )
  
))