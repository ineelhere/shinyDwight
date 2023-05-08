box::use(
  shiny[...]
)

ui <- function(id) {
  ns <- NS(id)
  div(class = "dwight-bio",
      h3("Dwight Kurt Schrute III"),
      p("Phone: 0MG-123-4IDK"),
      p("Email: dwight@dundermifflin.com"),
      p("Dwight is the top salesman at the Scranton, PA branch of the Dunder Mifflin paper company, and is known for his eccentric personality and intense dedication to his job."),
      p("He is also a volunteer sheriff's deputy, a reputed beet farmer and a black belt in karate.")
  )
}

server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}
