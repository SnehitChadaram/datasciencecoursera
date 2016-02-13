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
      verbatimTextOutput("obmi"),
      plotOutput('Hist'),
      h4('Your healthy range of weight for your height is:'),
      verbatimTextOutput("hwt"),
      h3('Instructions:'),
      h4('Just enter your height in centimetres and weight in kilograms.
         If you have trouble entering the values in these units, you can
         use an external source for conversion.
         After entering the values, just press the "Submit" button and wait for a moment.')
    )
  )
)

