box::use(
    shiny[...],
    bslib[...],
    plotly[...], 
)

box::use(
    app/logic/barplot[barplot],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  page_fluid(
    class = "plot-wrapper",
    plotlyOutput(ns("barchart"))
  )

}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    
    output$barchart <- renderPlotly({
      barplot()
    })
    
  })
}

