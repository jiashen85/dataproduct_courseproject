

library(shiny);library(datasets)

shinyServer(function(input,output){
  datasetInput=reactive({
    switch(input$dataset,"cars"=cars,"iris"=iris)
  })
  output$plot=renderPlot({
    library(ggplot2)
    plot(datasetInput()[,ncol(datasetInput())]~datasetInput()[,1],xlab="First column variable",ylab="Last column variable")
    
  })
 output$summary=renderPrint({
   summary(datasetInput())
 })
 output$table=renderTable({
   head(datasetInput(),n=input$obs)
 })
 
})
