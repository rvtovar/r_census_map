library(shiny)
library(bslib)

ui <- page_sidebar(
  title= "Card Example",
  sidebar = sidebar("Sidebar"),
  card(
    card_header("Introducing Shiny"),
    card_body(
      "Random Text About Shiny"
    ),
    card_footer("This is a footer")
  ),
  value_box(
    title="Value box",
    value=100,
    showcase = bsicons::bs_icon("bar-chart"),
    theme = "teal"
  )
)

server <- function(input, output, session){}


shinyApp(ui,server)