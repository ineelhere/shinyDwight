box::use(
    plotly[...],
    data.table[...],
)

barplot <- function(){
    df <- fread("app/data/data.csv")
      
      # Create the bar chart
      p <- plot_ly(
        data = df,
        x = ~Time,
        y = ~Dwight,
        name = "Dwight",
        type = 'bar'
      ) %>%
        add_trace(
          y = ~Computer,
          name = "Computer"
        )%>% 
        add_trace(x = ~Time, y = ~Dwight, name = "Dwight (lines)", type = 'scatter', mode = 'lines') %>%
        add_trace(x = ~Time, y = ~Computer, name = "Computer (lines)", type = 'scatter', mode = 'lines')
      
      # Add labels and layout
      p <- p %>% layout(
        title = "Dwight vs Computer",
        xaxis = list(title = "Time (Hrs)"),
        yaxis = list(title = "Count (Reams of paper)")
      )
      
      # Return the plot
      return(p)
}