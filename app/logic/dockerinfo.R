library(httr)
library(plotly)
library(ggplot2)

get_docker_image_info <- function(image_name) {

  # Define the URL for the DockerHub API
  url <- "https://hub.docker.com/v2/repositories/library/"

  # Build the full URL for the Docker image
  image_url <- paste0(url, image_name)

  # Make a GET request to the DockerHub API
  response <- GET(image_url)

  # Create an empty data frame to store the results
  df <- data.frame(Name = character(), Description = character(), Pull_Count = numeric(), Star_Count = numeric(), stringsAsFactors = FALSE)

  # If the request was successful (status code 200), extract the JSON data and add to the data frame
  if (status_code(response) == 200) {
    data <- content(response, as = "parsed")
    df[1,] <- c(data$name, data$description, data$pull_count, data$star_count)
  } else {
    cat("Error: ", status_code(response), "\n")
  }

  return(df)
}


image_info <- get_docker_image_info("ubuntu")

# Create a data frame for the plot
plot_data <- data.frame(
  Count = c(image_info$Pull_Count, image_info$Star_Count),
  Type = c("Pulls", "Stars")
)

# Generate the plot
ggplotly(ggplot(plot_data, aes(x = "", y = Count, fill = Type)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  theme(legend.position = "bottom") +
  labs(title = "Ubuntu Docker Image",
       subtitle = "Pulls and Stars Count",
       fill = NULL,
       x = NULL,
       y = NULL))

ggplotly(gg) %>%
  layout(title = list(text = "Ubuntu Docker Image"),
         xaxis = list(showticklabels = FALSE),
         yaxis = list(showticklabels = FALSE),
         showlegend = TRUE)


# Generate the plot
ggplot(plot_data, aes(x = "", y = Count, fill = Type)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  theme_void() +
  theme(legend.position = "bottom") +
  labs(title = "Ubuntu Docker Image",
       subtitle = "Pulls and Stars Count",
       fill = NULL,
       x = NULL,
       y = NULL) +
  geom_text(aes(label = Count), position = position_stack(vjust = 0.5))


# Create the plot
plot_ly(data = plot_data, labels = ~Type, values = ~Count, type = 'pie',
        marker = list(colors = c("#F8766D", "#00BFC4")),
        text = ~paste0(plot_data$Type, ": ", plot_data$Count),
        textinfo = "text",
        hoverinfo = "skip") %>%
  layout(title = "Ubuntu Docker Image", showlegend = TRUE,
         annotations = list(text = "Count", showarrow = FALSE,
                            x = 0.5, y = 0.5, font = list(size = 16))) %>%
  add_annotations(text = plot_data$Count,
                  x = c(0.25, 0.75), y = c(0.8, 0.2),
                  showarrow = FALSE, font = list(size = 16))
