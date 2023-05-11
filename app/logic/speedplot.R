box::use(
  dplyr[...],
  echarts4r[...],
)

speedplot <- function(df) {

  p <- e_charts() |> 
  e_gauge(round(mean(diff(df$Dwight))), "Paper per Hour", max = 180) |> 
  e_title("Dwight's Speed of Sales")

  # Return the plot
  return(p)
}
