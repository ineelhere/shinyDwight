box::use(
  shiny[h1, moduleServer, NS],
  semantic.dashboard[dashboardPage, dropdownMenu, dashboardSidebar, dashboardBody, sidebarMenu, menuItem, tabItems, tabItem, box, dashboardHeader, taskItem, icon, column],
)

box::use(
  app/view/mainpage,
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  dashboardPage(
    dashboardHeader(color = "pink", inverted = TRUE, logo_align = "left", logo_path = "https://logos-world.net/wp-content/uploads/2021/02/Docker-Logo-2015-2017.png",
                    dropdownMenu(icon = icon("info sign"), type = "messages",
                                 taskItem("Project progress...", 50.777, color = "red"))),
    dashboardSidebar(
      size = "thin", color = "teal",
      sidebarMenu(
        menuItem(tabName = "main", "Main"),
        menuItem(tabName = "extra", "Extra")
      )
    ),
    dashboardBody(
      tabItems(
        # selected = 1,
        tabItem(
          tabName = "main",
          
          column(h1("col1"), title = "A b c", width = 8, color = "orange",mainpage$ui(ns("mainpage"))),
          column(h1("col2"), title = "A b c", width = 4, color = "orange"),
          column(h1("col3"), title = "A b c", width = 2, color = "orange"),
          

        ),
        tabItem(
          tabName = "extra",
          h1("extra")
        )
      )
    )
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    mainpage$server("mainpage")
  })
}
