box::use(
  shiny[...],
  bslib[...],
  data.table[fread],
  echarts4r[...]
)

box::use(
  app/logic/barplot[barplot],
  app/logic/speedplot[speedplot],
  app/logic/areachart[areaplot],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  fluidRow(
    column(
      width = 8,
      echarts4rOutput(ns("barchart"))
    ),
    column(
      width = 4,
      echarts4rOutput(ns("piechart"))
    ),
   
  div(
    br(), 
    echarts4rOutput(ns("areaplot"))
  )
  )
  

}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    df <- fread("app/data/data.csv")

    output$barchart <- renderEcharts4r({
      barplot(df)
    })

    output$piechart <- renderEcharts4r({
      speedplot(df)
    })

    output$areaplot <- renderEcharts4r({
      areaplot()
    })

  })
}

