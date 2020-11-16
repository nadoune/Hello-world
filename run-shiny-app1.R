library(shiny)
library(dplyr)
# A simple app that returns a table
ui <- function() {
  tagList(
    tableOutput("tbl"), 
    sliderInput("n", "Number of rows", 1, 10, 5)
  )
}

server <- function(input, output, session) {
  output$tbl <- renderTable({
    # Writing all the business logic for the table manipulation 
    # inside the server
    mtcars %>%
      # [...] %>% 
      # [...] %>% 
      # [...] %>% 
      # [...] %>% 
      # [...] %>% 
      head(input$n)
  })
}

shinyApp(ui, server)
