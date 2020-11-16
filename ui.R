library(shiny)
ui <- function() {
  
  
  
fluidPage(titlePanel("Using of Shiny modules"),
  fluidRow(
    column(2, textInput("TI_username", label = NULL, placeholder = "your name")),
    column(2, actionButton("AB_hello", label = "Hello !"))
  ),
  hr(),
  fluidRow(
    column(12, textOutput("TO_Hello_user"))
  ))


}