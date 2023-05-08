box::use(
    dplyr[...],
    echarts4r[...],
)

areaplot <- function(df) {
  
  # Create the area chart
  p <- e_charts(df, Time) %>%
    e_area(Dwight, name = "Dwight") %>%
    e_area(Computer, name = "Computer") %>%
    
    # Customize axis and legend
    e_legend(bottom = "bottom") %>%
    e_tooltip(trigger = "axis") %>%
    e_x_axis(name = "Time (Hrs)") %>%
    e_y_axis(name = "Count (Reams of paper)") %>%
    
    # Add title and subtitle
    e_title("Dwight vs Computer")
  
  # Return the plot
  return(p)
}