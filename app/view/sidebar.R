box::use(
    shiny[...],
    bslib[...],
    bsicons[...],
)


#' @export
ui <- function(id) {
  ns <- NS(id)
  page_fluid(
    bs_icon("geo", size = "3rem"),
  )

}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}