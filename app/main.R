box::use(
  shiny[moduleServer, NS, br,span, ...],
  imola[...],
)

box::use(
  app/view/header,
  app/view/counts,
  app/view/twitter,
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
             counts$ui(ns("docker_counts")),
             plot$ui(ns("barchart"))
           )
    ),
    column(width = 3,
           twitter$ui(ns("twitter"))
    )
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    header$server("app_header")
    sidebar$server("sidebar")
    counts$server("docker_counts")
    plot$server("barchart")
    twitter$server("twitter")
  })
}
