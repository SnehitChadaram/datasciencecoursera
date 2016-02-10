bmi <- function(ht, wt) wt*10000/ht^2

shinyServer(
  function(input, output) {
    output$oht <- renderPrint({input$ht})
    output$owt <- renderPrint({input$wt})
    output$obmi <- renderPrint({bmi(input$ht,input$wt)})
  }
)