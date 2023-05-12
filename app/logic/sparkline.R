box::use(
  plotly[...],
  data.table[fread],
)

custom_sparkline <- function(column_name){
  # create data frame
  df <- fread("app/data/data.csv",
              select = c("Time", column_name))

  # create sparkline
  sparkline <- plot_ly(df, colors = "white") %>%
    add_lines(
      x = ~Time,
      y = ~get(column_name),
      color = I("white"),
      span = I(1),
      fill = 'tozeroy',
      alpha = 0.2
    ) %>%
    layout(
      xaxis = list(
        visible = FALSE,
        showgrid = FALSE,
        tickmode = "array",
        tickvals = c(0, 1),
        ticktext = c("Start", "End")
      ),
      yaxis = list(
        visible = FALSE,
        showgrid = FALSE,
        tickmode = "array",
        tickvals = c(min(df[[column_name]]), max(df[[column_name]])),
        ticktext = c("Min", "Max")
      ),
      margin = list(t = 0, r = 0, l = 0, b = 0),
      plot_bgcolor = "transparent",
      paper_bgcolor = "transparent",
      font = list(color = "black")
    ) %>%
    config(displayModeBar = FALSE)

  return(sparkline)
}