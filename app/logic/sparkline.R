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
      xaxis = list(visible = F, showgrid = F),
      yaxis = list(visible = F, showgrid = F),
      margin = list(t = 0, r = 0, l = 0, b = 0),
      plot_bgcolor = "transparent",
      paper_bgcolor = "transparent",
      font = list(color = "black")
    ) %>%
    config(displayModeBar = F) %>%
    htmlwidgets::onRender(
      "function(el) {
        var ro = new ResizeObserver(function() {
            var visible = el.offsetHeight > 40;
            Plotly.relayout(el, {'xaxis.visible': visible});
        });
        ro.observe(el);
        }"
    )

  return(sparkline)
}


