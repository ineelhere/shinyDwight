box::use(
  dplyr[...],
  echarts4r[...],
)

pieplot <- function(df) {

  # Calculate the percentage of Dwight's sales for each time
  df <- df %>%
    mutate(Dwight_pct = Dwight / sum(Dwight) * 100)

  # Create the donut chart
  p <- e_charts(df, Time) %>%
    e_pie(Dwight_pct, name = "Dwight's sales percentage by time", radius = list("50%", "70%")) %>%

    # Customize labels and tooltips
    e_tooltip(trigger = "item", formatter = "{a} <br/>{b}: {c}%") %>%
    e_legend(bottom = "bottom") %>%

    # Add title
    e_title("Dwight's sales percentage by time")

  # Return the plot
  return(p)
}
