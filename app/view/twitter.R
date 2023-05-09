box::use(
  shiny[...],
  utils[...],
)

tweet <- "https://twitter.com/theofficetv/status/1641470486357102592?s=20"
url <- URLencode(tweet, reserved = TRUE)
src <- paste0("https://twitframe.com/show?url=", url)

js <- '
$(window).on("message", function(e) {
  var oe = e.originalEvent;
  if (oe.origin !== "https://twitframe.com")
    return;
  if (oe.data.height && oe.data.element.id === "tweet"){
    $("#tweet").css("height", parseInt(oe.data.height) + "px");
  }
});'

#' @export
ui <- function(id) {
  ns <- NS(id)
  fluidPage(
    fluidRow(
      tags$head(
        tags$script(HTML(js)),
        tags$style(HTML(
          "
        .content {
          margin: auto;
          padding: 0px;
          width: auto;
        }"))
      ),

      uiOutput(ns("frame"))
    )
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    output[["frame"]] <- renderUI({
      tagList(
        tags$div(
          class = "content",
            tags$div(
                     tags$iframe(
                       id = "tweet",
                       class = "embed-responsive-item",
                       border = 0,
                       frameborder = 0,
                       allowfullscreen = TRUE,
                       src = src
                     )
            )
        ),
        singleton(tags$script(HTML(
          "$(document).ready(function(){
          $('iframe#tweet').on('load', function() {
            this.contentWindow.postMessage(
              { element: {id:this.id}, query: 'height' },
              'https://twitframe.com');
          });
        });")))
      )
    })
  })
}
