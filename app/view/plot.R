box::use(
    shiny[...],
    bslib[...],
    plotly[...], 
)

box::use(
    app/logic/barplot[barplot],
    app/logic/pieplot[pieplot],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  fluidRow(
    br(),
    column(
      width = 8,
      plotlyOutput(ns("barchart"))
    ),
    column(
      width = 4,
      plotlyOutput(ns("piechart"))
    )
  )

}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    
    output$barchart <- renderPlotly({
      barplot()
    })

    output$piechart <- renderPlotly({
      pieplot()
    })
    
  })
}

