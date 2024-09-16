library(shiny)

ui <- page_fluid(
  titlePanel("Basic Widgets"),
  layout_columns(
    col_width=4,
    card(
      card_header("Buttons"),
      actionButton("action", "Action"),
      submitButton("Submit")
    ),
    card(
      card_header("Single Checkbox"),
      checkboxInput("checkbox", "Choice A", value=TRUE)
    ),
    card(
      card_header("checkbox group"),
      checkboxGroupInput(
        "fruits",
        "Select all Fruits you like: ",
        choices = c(
          "Apple" = 1,
          "Orange" = 2,
          "Banana" = 3,
          "Kiwi" = 4
        )
      )
    ),
    card(
      card_header("Date Input"),
      dateInput(
        "date",
        "Select Date",
        value = "2024-01-01"
      )
    ),
    card(
      card_header("Date Range"),
      dateRangeInput(
        "dates", "Select Dates"
      )
    ),
    card(
      card_header("Help text"),
      helpText(
        "Note: help text isn't a true widget,",
        "but it provides an easy way to add text to",
        "accompany other widgets."
      )
    ),
    card(
      card_header("Numeric input"),
      numericInput("num", "Input number", value = 1)
    ),
    card(
      card_header("Radio buttons"),
      radioButtons(
        "radio",
        "Select option",
        choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
        selected = 1
      )
    ),
    card(
      card_header("Select box"),
      selectInput(
        "select",
        "Select option",
        choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
        selected = 1
      )
    ),
    card(
      card_header("Sliders"),
      sliderInput(
        "slider1",
        "Set value",
        min = 0,
        max = 100,
        value = 50
      ),
      sliderInput(
        "slider2",
        "Set value range",
        min = 0,
        max = 100,
        value = c(25, 75)
      )
    ),
    card(
      card_header("Text input"),
      textInput("text", label = NULL, value = "Enter text...")
    )
  )
)


server <- function(input,output,session){}

shinyApp(ui,server)