library(httr)

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


get_docker_image_info("ubuntu")
