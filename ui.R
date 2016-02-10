shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Know your BMI!!!"),
    sidebarPanel(
      numericInput('ht','Height(in centimetres)', 175, min = 100, max = 250, step = 5),
      numericInput('wt','Weight(in kilograms)', 60, min = 20, max = 200, step = 5),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Here are your results'),
      h4('You entered height as:'),
      verbatimTextOutput("oht"),
      h4('You entered weight as:'),
      verbatimTextOutput("owt"),
      h4('Your BMI is:'),
      verbatimTextOutput("obmi")
    )
  )
)

