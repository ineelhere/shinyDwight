box::use(
  shiny[...],
  shinyjs[...],
  bslib[...],
  bsicons[...],
  plotly[...],
  utils[...],
)

box::use(
  app/logic/sparkline[custom_sparkline],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  page_fluid(
    layout_column_wrap(
      width = "250px",
      
      value_box(
        class = "value_box",
        title = p("🚀 Dwight's Sales"),
        value = "1,270 reams of paper",
        p("Started at 90"),
        p("Peaked at 1,270"),
        showcase = custom_sparkline("Dwight"),
        theme_color = "success",
        full_screen = FALSE
      ),
      value_box(
        class = "value_box",
        title = p("🖥️ Computer's Sales"),
        value = "1,218 reams of paper",
        p("Started at 101"),
        p("Peaked at 1,218"),
        showcase = custom_sparkline("Computer"),
        theme_color = "danger",
        full_screen = FALSE
      ),
      value_box(
      class = "value_box",
      value = "DWIGHT ROCKS 🤘", 
      title = p("Computer beaten by 52 reams of paper"),
      showcase = bs_icon("emoji-sunglasses-fill"),
      showcase_layout = showcase_top_right(),
      theme_color = "secondary",
    )
    )

  )

  

}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}
