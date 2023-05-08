box::use(
    plotly[...],
    data.table[...],
)

filled_area_chart <- function(){
    df <- fread("app/data/data.csv")
    # Create the area chart
    p <- plot_ly(
  data = df,
  x = ~Time,
  height = 400, # set the height to 400 pixels
  width = 600   # set the width to 600 pixels
) %>%
  add_trace(
    y = ~Dwight,
    name = "Dwight",
    type = 'scatter',
    mode = 'lines',
    fill = 'tozeroy'
  ) %>%
  add_trace(
    y = ~Computer,
    name = "Computer",
    type = 'scatter',
    mode = 'lines',
    fill = 'tozeroy'
  ) %>% 
  layout(
    title = "Dwight vs Computer",
    xaxis = list(title = "Time (Hrs)"),
    yaxis = list(title = "Count (Reams of paper)")
  )

    # Return the plot
    return(p)
}
