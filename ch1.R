library(shiny)
library(maps)
library(mapproj)
source("helpers.R")
counties <- readRDS("data/counties.RDS")

ui <- page_sidebar(
  title = "CenusVis",
  sidebar = sidebar(
    "Create Demographic Maps with information from teh 2020 US Cenus",
    selectInput(
      "demo",
      "Choose a variable to Display",
      choices = c(
        "Percent White" = "white",
        "Percent Black" = "black",
        "Percent Hispanic" = "hispanic",
        "Percent Asian" = "asian"
      ),
      selected = "Percent White"
    ),
    sliderInput(
      "slider1",
      "Range of Interest",
      min=0,
      max=100,
      value=c(0,100)
    )
  ),
  card(
    plotOutput("map")
  )
)


server <- function(input,output,session){
  
  output$map <- renderPlot({
    data <- switch(
      input$demo , 
      "white" = counties$white,
      "black" = counties$black,
      "hispanic" = counties$hispanic,
      "asian" = counties$asian
    )
    percent_map(data, "darkgreen", paste("%", input$demo), min=input$slider1[1], max=input$slider1[2])
  })
}

shinyApp(ui,server)