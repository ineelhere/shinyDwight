box::use(
  shiny[moduleServer, NS, br,span, ...],
  imola[...],
)

box::use(
  app/view/header,
  app/view/counts,
  app/view/dwightbio,
  app/view/sidebar,
  app/view/plot,
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  #=========HEADER================

  fluidRow(
    header$ui(ns("app_header")),
    br(),
    column(width = 1,
           sidebar$ui(ns("sidebar"))),
    column(width = 8,
           gridPanel(
             counts$ui(ns("salecounts")),
             plot$ui(ns("plotchart"))
           )
    ),
    column(width = 3,
           dwightbio$ui(ns("dwightbio"))

    )
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    header$server("app_header")
    sidebar$server("sidebar")
    counts$server("salecounts")
    plot$server("plotchart")
    dwightbio$server("dwightbio")
  })
}
