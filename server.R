# When user clicks on "Hello" button : Update reactive variable "name"

server <- function(input, output, session) {
name <- eventReactive(input$AB_hello, {
  return(input$TI_username)
})

# Show greetings
output$TO_Hello_user <- renderText({
  if (name() %in% "") {
    return("Hello world !")
  } else {
    return(paste("Hello", name(), "!"))
  }
})

}