bmi <- function(ht, wt) wt*10000/ht^2
healthywt<- ht^2/10000*c(18.5,25)
  
shinyServer(
  function(input, output) {
    output$oht <- renderPrint({input$ht})
    output$owt <- renderPrint({input$wt})
    output$obmi <- renderPrint({bmi(input$ht,input$wt)})
    output$Hist <-  renderPlot({
      boxplot(healthywt, col= 'green', ylim = range(wt[1]-10,wt[2]+10),
            xlab = 'Your height', ylab = 'Healthy range of weight for height')
    })
    output$hwt <- renderPrint({healthywt})
    
  }
)