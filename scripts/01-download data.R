#### Preamble ####
# Purpose : download the data
# Author : Lin Dai
# Email : dailin20000730@gmail.com
# Date : 1 April 2024

# Work space set up
library(tidyverse)
library(nflverse)

# Download data

qb_regular_season_stats <- 
  load_player_stats(seasons = TRUE) |> 
  filter(season_type == "REG" & position == "QB" & season == 2023 & !is.na(passing_epa))

view(qb_regular_season_stats)
write_csv(qb_regular_season_stats, "data/analysis_data.csv")
