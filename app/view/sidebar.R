box::use(
  shiny[NS, div, img, moduleServer]
)

ui <- function(id) {
  ns <- NS(id)
  div(class = "nav-icons",
      div(class = "nav", img(src = "static/michael.png", title = "Michael Scott")),
      div(class = "nav", img(src = "static/dwight.png", title = "Dwight Schrute")),
      div(class = "nav", img(src = "static/jim.png", title = "Jim Halpert")),
      div(class = "nav", img(src = "static/pam.png", title = "Pam Beesly")),
      div(class = "nav", img(src = "static/phyllis.png", title = "Phyllis Vance")),
      div(class = "nav", img(src = "static/stanley.png", title = "Stanley Hudson")),
      div(class = "nav", img(src = "static/kevin.png", title = "Kevin Malone")),
      div(class = "nav", img(src = "static/oscar.png", title = "Oscar Martinez")),
      div(class = "nav", img(src = "static/angela.png", title = "Angela Martin")),
      div(class = "nav", img(src = "static/andy.png", title = "Andy"))

  )
}

server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}
