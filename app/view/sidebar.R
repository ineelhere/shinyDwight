box::use(
  shiny[a,NS, div, img, moduleServer, tags]
)

ui <- function(id) {
  ns <- NS(id)
  div(class = "nav-icons",
      div(
  class = "nav-icons",
  div(
    class = "nav",
    a(href = "https://youtu.be/mfokPqeSNcw", target = "_blank",
      img(
        src = "https://media.giphy.com/media/cXblnKXr2BQOaYnTni/giphy.gif",
        title = "Michael Scott"
      )
    )
  ),
  div(
    class = "nav",
    a(href = "https://youtu.be/mfokPqeSNcw", target = "_blank",
      img(
        src = "https://media.giphy.com/media/UX6huwJfADuH9khCMl/giphy.gif",
        title = "Dwight Schrute"
      )
    )
  ),
  div(
    class = "nav",
    a(href = "https://youtu.be/mfokPqeSNcw", target = "_blank",
      img(
        src = "https://media.giphy.com/media/Yycc82XEuWDaLLi2GV/giphy.gif",
        title = "Jim Halpert"
      )
    )
  ),
  div(
    class = "nav",
    a(href = "https://youtu.be/mfokPqeSNcw", target = "_blank",
      img(
        src = "https://media.giphy.com/media/D8xNev92dfqdG9FPx4/giphy.gif",
        title = "Pam Beesly"
      )
    )
  ),
  div(
    class = "nav",
    a(href = "https://youtu.be/mfokPqeSNcw", target = "_blank",
      img(
        src = "https://media.giphy.com/media/6rvh1enyaBISOojJMa/giphy.gif",
        title = "Phyllis Vance"
      )
    )
  ),
  div(
    class = "nav",
    a(href = "https://youtu.be/mfokPqeSNcw", target = "_blank",
      img(
        src = "https://media.giphy.com/media/C1tWTNs9tf70qXTJ5c/giphy.gif",
        title = "Stanley Hudson"
      )
    )
  ),
  div(
    class = "nav",
    a(href = "https://youtu.be/mfokPqeSNcw", target = "_blank",
      img(
        src = "https://media.giphy.com/media/3pkFrdxslEAE5RhPuL/giphy.gif",
        title = "Kevin Malone"
      )
    )
  ),
  div(
    class = "nav",
    a(href = "https://youtu.be/mfokPqeSNcw", target = "_blank",
      img(
        src = "https://media.giphy.com/media/fP1cA793NCpWzlEE96/giphy.gif",
        title = "Oscar Martinez"
      )
    )
  ),
  div(
    class = "nav",
    a(href = "https://youtu.be/mfokPqeSNcw", target = "_blank",
      img(
        src = "https://media.giphy.com/media/A14XC5WFpDpHjyH9Pz/giphy.gif",
        title = "Angela Martin"
      )
    )
  ),
  div(
    class = "nav",
    a(href = "https://youtu.be/mfokPqeSNcw", target = "_blank",
      img(
        src = "https://media.giphy.com/media/nrg0TI3u0BFw5NBDsQ/giphy.gif",
        title = "Andy"
      )
    )
  )
)


  )
}

server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}
