# Simple script analysing the Australian weather data

library("tidyverse")

# Read in the data

df = read_csv("data/weatherAUS.csv")

# Create a scatter plot of Humidity9am and Temp9am
# a location

city = "Newcastle"

scatter_plot =
  df %>%
  filter(Location == "Newcastle") %>%
  ggplot(aes(x = Temp9am, y = Humidity9am)) +
  geom_point(colour = "red") +
  labs(title = "Humidity and Temperature for Newcastle") +
  theme_minimal() +
  facet_wrap(~WindDir9am)

# Save the plot in graphics/
ggsave(filename = "graphics/scatter-temp-humidity.png", plot = scatter_plot)
