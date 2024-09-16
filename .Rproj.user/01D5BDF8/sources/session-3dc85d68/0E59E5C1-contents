library(shiny)

ui <- page_sidebar(
  title = "Hello World",
  sidebar = sidebar(
    sliderInput(
      inputId = "bins",
      label="Number of Bins",
      min=1,
      max=50,
      value = 30
    ),
    selectInput(
      inputId = "fruits",
      label= "Choose a Fruit",
      choices = c("All","Apple", "Orange", "Banana"),
      selected="All",
      multiple = TRUE
    )
  ),
  plotOutput(outputId = "displot")
)

server <- function(input, output, session){
  output$displot <- renderPlot({
    x <- faithful$waiting
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    hist(
      x,
      breaks=bins,
      col="purple",
      border="orange",
      xlab = "Waiting time",
      main="Histogram of Waiting Times"
    )
  })
}


shinyApp(ui=ui ,server=server)