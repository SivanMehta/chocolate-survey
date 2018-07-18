library(ggplot2)
library(dplyr)
library(ggridges)

data <- read.csv('Snackathon results - Sheet1.csv')

data %>%
  ggplot() +
  aes(x = Standardized.score, y = Name) +
  geom_density_ridges(scale = 4) + theme_ridges() +
  scale_y_discrete(expand = c(0.01, 0)) +   # will generally have to set the `expand` option
  scale_x_continuous(expand = c(0, 0)) +
  labs(x = "Standardized Score", y = "Name", title = "Distribution of Scores")
