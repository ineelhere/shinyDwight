box::use(
  shiny[h1, moduleServer, NS, uiOutput, renderUI],
  semantic.dashboard[dashboardPage, dropdownMenu, dashboardSidebar, dashboardBody, sidebarMenu, menuItem, tabItems, tabItem, box, dashboardHeader, taskItem, icon, column],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  uiOutput(ns("testing"))
}

#' @export
server <- function(id, data) {
  moduleServer(id, function(input, output, session) {
    output$testing <- renderUI({
      box(h1("dummy"), title = "A b c", width = 16, color = "orange")
      box(h1("dummy2"), title = "A b c", width = 16, color = "orange")
      box(h1("dummy3"), title = "A b c", width = 16, color = "orange")
      box(h1("dummy4"), title = "A b c", width = 16, color = "orange")
    })
  })
}