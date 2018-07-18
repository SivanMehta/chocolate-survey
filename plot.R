library(ggplot2)
library(dplyr)
library(ggridges)

data <- read.csv('Snackathon results - Sheet1.csv')

data %>%
  mutate(Name = factor(Name, levels = unique(data$Name))) %>%
  ggplot() +
  aes(x = Standardized.score, y = Name) +
  stat_density_ridges(scale = 4) +
  theme_ridges() +
  labs(x = "Standarized Scores", y = "Chocolate", title = "Standardized Score of Each Chocolate")
  