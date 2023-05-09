box::use(
  shiny[...],
  imola[...],
  bslib[...],
  shiny.fluent[...],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  #=========HEADER================

  # A single header menu item
  nav_item <- function(inputId, label) {
    actionButton(inputId, label, class = "btn-nav_menu")
  }

  # Use breakpoints based on the Appsilon design system
  appsilon_breakpoints <- breakpointSystem(
    "appsilon-breakpoints",
    breakpoint("xs", min = 320),
    breakpoint("s", min = 428),
    breakpoint("m", min = 728),
    breakpoint("l", min = 1024),
    breakpoint("xl", min = 1200)
  )

  gridPanel(
    # Layout definition START
    id = "app_header",

    # Used for mobile collapsed menu logic
    class = "mobile-collapsed",

    # Panel breakpoint system
    breakpoint_system = appsilon_breakpoints,

    # CSS grid areas of the panel.
    # Appsilon breakpoints are mobile first, so our default
    # is the mobile version of the panel
    areas = list(
      default = c(
        "logo . info mobile_controls",
        "separator separator separator separator",
        "title title title title",
        "menu menu menu menu",
        "cta cta cta cta"
      ),
      l = "logo separator title mobile_controls . menu info cta"
    ),

    # CSS grid columns of the panel.
    # Appsilon breakpoints are mobile first, so our default
    # is the mobile version of the panel
    columns = list(
      default = "auto 1fr auto auto",
      l = "auto 1px auto auto 1fr auto auto auto"
    ),

    # CSS grid rows of the panel.
    # Appsilon breakpoints are mobile first, so our default
    # is the mobile version of the panel
    rows = list(
      default = "auto auto auto auto auto",
      l = "40px"
    ),

    # CSS grid gap of the panel.
    # Appsilon breakpoints are mobile first, so our default
    # is the mobile version of the panel
    gap = list(
      default = "0px",
      l = "16px"
    ),
    # Layout definition END

    # Header Content START
    # Appsilon logo
    logo = img(src = "static/dockerDash_header.png", class = "app_header_logo"),

    # Separator between logo and title.
    # On mobile it becomes the expanded separator
    separator = div(class = "app_header_vertical_separator mobile-toggled"),

    # Application title to be displayed
    title = div("Dwight Schrute vs The Computer",
                class = "app_header_title mobile-toggled"
    ),

    # The call to action button
    cta = actionButton("cta_talk", "Let's Talk",
                       class = "btn-primary btn-cta mobile-toggled",
                       onclick ="window.open('https://www.linkedin.com/in/dwight-schrute-b52b4521b/', '_blank')"
    ),

    # The info icon
    info = actionButton("cta_info",
                        label = "",
                        icon = icon("circle-info"),
                        class = "cta-icon",
                        onclick ="window.open('https://www.youtube.com/watch?v=iZ6bamP8wZk', '_blank')" #nolint
    ),

    # The navigation
    menu = flexPanel(
      breakpoint_system = appsilon_breakpoints,
      class = "mobile-toggled",

      direction = list(
        default = "column",
        l = "row"
      )

      #   nav_item("menu_item_one", "Menu Item"),
      #   nav_item("menu_item_two", "Menu Item"),
      #   nav_item("menu_item_three", "Menu Item"),
      #   nav_item("menu_item_four", "Menu Item")
    ),
    # Header Content END

    # Mobile controls START
    mobile_controls = div(
      # Collapse/Expand functionality for mobile
      tags$script("
        let header_expand = function() {
          document.getElementById('app_header').classList
            .remove('mobile-collapsed');
          document.getElementById('app_header').classList
            .add('mobile-expanded');
        }

        let header_collapse = function() {
          document.getElementById('app_header').classList.
            add('mobile-collapsed');
          document.getElementById('app_header').classList.
            remove('mobile-expanded');
        }
      "),

      # Hamburger icon. Used on mobile to expand the header bar
      icon(
        "bars",
        class = "header_control header_expand cta-icon",
        onclick = "header_expand();"
      ),

      # Hamburger icon. Used on mobile to collapse the header bar
      icon(
        "xmark",
        class = "header_control header_collapse cta-icon",
        onclick = "header_collapse();"
      )
    )
    # Mobile controls END
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}
box::use(
  shiny[...],
  imola[...],
  bslib[...],
  shiny.fluent[...],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  #=========HEADER================

  # A single header menu item
  nav_item <- function(inputId, label) {
    actionButton(inputId, label, class = "btn-nav_menu")
  }

  # Use breakpoints based on the Appsilon design system
  appsilon_breakpoints <- breakpointSystem(
    "appsilon-breakpoints",
    breakpoint("xs", min = 320),
    breakpoint("s", min = 428),
    breakpoint("m", min = 728),
    breakpoint("l", min = 1024),
    breakpoint("xl", min = 1200)
  )

  gridPanel(
    # Layout definition START
    id = "app_header",

    # Used for mobile collapsed menu logic
    class = "mobile-collapsed",

    # Panel breakpoint system
    breakpoint_system = appsilon_breakpoints,

    # CSS grid areas of the panel.
    # Appsilon breakpoints are mobile first, so our default
    # is the mobile version of the panel
    areas = list(
      default = c(
        "logo . info mobile_controls",
        "separator separator separator separator",
        "title title title title",
        "menu menu menu menu",
        "cta cta cta cta"
      ),
      l = "logo separator title mobile_controls . menu info cta"
    ),

    # CSS grid columns of the panel.
    # Appsilon breakpoints are mobile first, so our default
    # is the mobile version of the panel
    columns = list(
      default = "auto 1fr auto auto",
      l = "auto 1px auto auto 1fr auto auto auto"
    ),

    # CSS grid rows of the panel.
    # Appsilon breakpoints are mobile first, so our default
    # is the mobile version of the panel
    rows = list(
      default = "auto auto auto auto auto",
      l = "40px"
    ),

    # CSS grid gap of the panel.
    # Appsilon breakpoints are mobile first, so our default
    # is the mobile version of the panel
    gap = list(
      default = "0px",
      l = "16px"
    ),
    # Layout definition END

    # Header Content START
    # Appsilon logo
    logo = img(src = "static/dockerDash_header.png", class = "app_header_logo"),

    # Separator between logo and title.
    # On mobile it becomes the expanded separator
    separator = div(class = "app_header_vertical_separator mobile-toggled"),

    # Application title to be displayed
    title = div("Dwight Schrute vs The Computer",
                class = "app_header_title mobile-toggled"
    ),

    # The call to action button
    cta = actionButton("cta_talk", "Let's Talk",
                       class = "btn-primary btn-cta mobile-toggled",
                       onclick ="window.open('https://www.linkedin.com/in/dwight-schrute-b52b4521b/', '_blank')"
    ),

    # The info icon
    info = actionButton("cta_info",
                        label = "",
                        icon = icon("circle-info"),
                        class = "cta-icon",
                        onclick ="window.open('https://www.youtube.com/watch?v=iZ6bamP8wZk', '_blank')" #nolint
    ),

    # The navigation
    menu = flexPanel(
      breakpoint_system = appsilon_breakpoints,
      class = "mobile-toggled",

      direction = list(
        default = "column",
        l = "row"
      )

      #   nav_item("menu_item_one", "Menu Item"),
      #   nav_item("menu_item_two", "Menu Item"),
      #   nav_item("menu_item_three", "Menu Item"),
      #   nav_item("menu_item_four", "Menu Item")
    ),
    # Header Content END

    # Mobile controls START
    mobile_controls = div(
      # Collapse/Expand functionality for mobile
      tags$script("
        let header_expand = function() {
          document.getElementById('app_header').classList
            .remove('mobile-collapsed');
          document.getElementById('app_header').classList
            .add('mobile-expanded');
        }

        let header_collapse = function() {
          document.getElementById('app_header').classList.
            add('mobile-collapsed');
          document.getElementById('app_header').classList.
            remove('mobile-expanded');
        }
      "),

      # Hamburger icon. Used on mobile to expand the header bar
      icon(
        "bars",
        class = "header_control header_expand cta-icon",
        onclick = "header_expand();"
      ),

      # Hamburger icon. Used on mobile to collapse the header bar
      icon(
        "xmark",
        class = "header_control header_collapse cta-icon",
        onclick = "header_collapse();"
      )
    )
    # Mobile controls END
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
  })
}
