box::use(
    plotly[...],
    data.table[...],
)

pieplot <- function(){
    df <- fread("app/data/data.csv")
    # Calculate the percentage of Dwight's sales for each time
    df <- df %>%
    mutate(Dwight_pct = Dwight / sum(Dwight) * 100)

    # Create the donut chart
    p <- plot_ly(
    data = df,
    labels = ~Time,
    values = ~Dwight_pct,
    type = 'pie',
    hole = 0.6,
    textposition = 'inside',
    textinfo = 'percent+label'
    # texttemplate = '%{label}: %{percent:.0f}%<br>(%{value} Hrs)'
    )
    # Add layout
    p <- p %>% layout(
    title = "Dwight's sales percentage by time",
    showlegend = FALSE
    )
    # Return the plot
    return(p)
}