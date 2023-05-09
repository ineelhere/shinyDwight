box::use(
  dplyr[...],
  echarts4r[...],
  data.table[...],
)

areaplot <- function() {

  data <- fread("app/data/imdb.csv")
  # Create the area chart
  p <- e_charts(data, Episode) %>%
  e_area(Rating, stack ="Title") %>%
  e_legend(show = TRUE) %>%
  e_tooltip(show = TRUE, trigger = "axis") %>%
  e_title("IMDB Ratings per Episode from The Office") %>%
  e_x_axis(name = "Episode", min=min(data$Episode), max=max(data$Episode)) %>%
  e_y_axis(name = "Rating")

  # Return the plot
  return(p)
}
