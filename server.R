bmi <- function(ht, wt) wt*10000/ht^2
hwt <- function(ht)
{
  healthywt<- (ht^2/10000)*c(18.5,25)
  healthywt
}

shinyServer(
  function(input, output){
    healthywt<- ht^2/10000*c(18.5,25)
    output$oht <- renderPrint({input$ht})
    output$owt <- renderPrint({input$wt})
    output$obmi <- renderPrint({bmi(input$ht,input$wt)})
    output$ohwt <- renderPrint({hwt(input$ht)})
    output$Hist <-  renderPlot({
      healthywt<- (input$ht^2/10000)*c(18.5,25)
      boxplot(healthywt, col= 'green', ylim =c(healthywt[1]-10,healthywt[2]+10),
            xlab = 'Your height', ylab = 'Healthy range of weight for height')
    })
    
  }
)