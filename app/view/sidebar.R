box::use(
    shiny[...],
    bslib[...],
    bsicons[...],
)


#' @export
ui <- function(id) {
  ns <- NS(id)
  page_fluid(
    
  )

}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}