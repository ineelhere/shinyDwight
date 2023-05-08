box::use(
    dplyr[...],
    echarts4r[...],
)

barplot <- function(df) {
  
  # Create the bar chart
  p <- e_charts(df, Time) %>%
    e_bar(Dwight, name = "Dwight") %>%
    e_bar(Computer, name = "Computer") %>%
    
    # Add lines
    e_line(Dwight, name = "Dwight (lines)") %>%
    e_line(Computer, name = "Computer (lines)") %>%
    
    # Customize axis and legend
    e_legend(bottom = "bottom") %>%
    e_tooltip(trigger = "axis") %>%
    e_x_axis(name = "Time (Hrs)",  min = min(df$Time)-1) %>%
    e_y_axis(name = "Count (Reams of paper)") %>%
    
    # Add title and subtitle
    e_title("Dwight vs Computer") %>%
    # e_subtitle("Comparison of paper consumption over time")
  
  # Return the plot
  return(p)
}