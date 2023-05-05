box::use(
  shiny[...],
)

box::use(
  app/view/header,
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  #=========HEADER================
  header$ui(ns("app_header"))

}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    header$server("app_header")
  })
}
